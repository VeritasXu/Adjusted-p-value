function [fs, fids, p, h, cv, ranks, avgs] = friedmanranks(X, alpha)
%FRIEDMAN test
%   INPUTS:
%   X: samples
%    line: problems
%    column: algorithms   
%
%   OUTPUTS:
%   fs: Friedman statistic
%   fid: Iman and Davenport derivation from friedman statistic
%   p: p-value
%   h: reject or not H0
%   cv: critical value from friedman chi distribution
%   ranks: ranks for each problem;
%   avgs: average of ranks according to each algorithm; avg(ranks)
%
%   Author: Reginaldo Santos
%   Date: 2018-08-28

    if(nargin == 1)
        alpha = 0.05;
    end
    
    [n, k] = size(X);
    
    %% Friedman ranks
    ranks = zeros(n, k);
    for i = 1 : n
        ranks(i, :) = fracrank(X(i, :));
    end        
    avgs = mean(ranks);    
    fs = friedmanstatistic(n, k, avgs);
    
    %% Iman-Davenport derivation
    fids = imandavenport(fs, n, k);
  
    %% P-value and H0 handling    
    p = chi2pval(fs, k - 1); % same as p = 1 - chi2cdf(fs, k - 1)
       
    if (n >= 10 && k >= 4)        
        h = p <= alpha; % reject or not H0 based on p-value
        cv = chi2inv(1 - alpha, k - 1);
    else
        % WARNING: table of critical values is not completed
        % Book: Biostatistical analysis, p. 763
        cv = friedmancvalue(n, k, alpha);
        h = fs >= cv; % reject or not H0 based on table value
    end    
end
    