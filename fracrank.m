function [o] = fracrank(e)
%FRACTIONAL RANK Compute the fractional ranking of elements
%   The first element is either 'ranked higher than', 'ranked lower than'
%   or 'ranked equal to' the second one.
%   Tiebreaker: by the average of subsequent ranks.

%   Author: Reginaldo Santos
%   Date: 2018-06-04

    ne = length(e);
    o = 1 : ne; % ranks 
    [se, id_se] = sort(e);    
    i = 1;
    while (i < ne)
        ids = find(se(i) == se);
        o(ids) = mean(o(ids)); % tiebreaker
        i = ids(end) + 1;
    end
    o(id_se) = o; % place ranks in their origins
end