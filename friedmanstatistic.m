function [ff] = friedmanstatistic(n, k, R)
%FRIEDMANSTATISTIC Summary of this function goes here
%   INPUT:
%    n: number of problems 
%    k: number of algorithms
%    R: average rank of each algorithm

%   OUTPUT:
%    ff: Friedman statistic Ff

    ff = 12 * n / (k^2 + k) * (sum(R.^2) - k * (k + 1)^2 / 4);
end

