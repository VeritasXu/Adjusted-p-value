function [cv] = friedmancvalue(n, k, alpha)
%FRIEMANCVALUE Critical value
%   INPUTS:
%   n: number of samplesproblems
%   k: number of algorithms
%   alpha: alpha value
%
%   OUTPUTS:
%   cv: critical value
%
%   Author: Reginaldo Santos
%   Date: 2018-06-29
 

    % Table with maximum of 6 (n = 6) algorithms and 15 (k = 15) problems
    table = nan(15, 6, 3);
    table(5:15, 3, 1) = [8.4 9 8.857 9 9.556 9.6 9.455 9.5 9.385 9 8.933];
    table(3:15, 4, 1) = [9 9.6 9.96 10.2 10.371 10.35 10.867 10.8 11.073 11.1 11.123 11.143 11.24];
    table(2:10, 5, 1) = [8 10.133 11.2 11.68 11.867 12.114 12.3 12.444 12.48];
    table(2:10, 6, 1) = [9.714 11.762 12.714 13.229 13.619 13.857 14 14.143 14.299];
    
    table(3:15, 3, 2) = [6 6.5 6.4 7 7.143 6.25 6.222 6.2 6.545 6.167 6 6.143 6.4];
    table(2:15, 4, 2) = [6 7.4 7.8 7.8 7.6 7.8 7.65 7.8 7.8 7.909 7.9 7.965 7.386 8.04];
    table(2:10, 5, 2) = [7.6 8.533 8.8 8.96 9.067 9.143 9.3 9.244 9.28];
    table(2:10, 6, 2) = [9.143 9.857 10.286 10.486 10.571 10.674 10.714 10.778 10.8];
    
    table(4:15, 3, 3) = [6 5.2 5.33 5.429 5.25 5.556 5 4.909 5.167 4.769 5.143 4.933];
    table(3:15, 4, 3) = [6.6 6.3 6.36 6.4 6.429 6.3 6.467 6.36 6.382 6.4 6.415 6.343 6.44];
    table(2:10, 5, 3) = [7.2 7.467 7.6 7.68 7.733 7.771 7.8 7.733 7.76];
    table(2:10, 6, 3) = [8.286 8.714 9 9 9.048 9.122 9.143 9.127 9.143];
    
    switch(alpha)
        case 0.01
            id = 1;
        case 0.05
            id = 2;
        case 0.1
            id = 3;
        otherwise
            id = 2; % alpha = 0.05 by default
    end
    cv = table(n, k, id);
end

