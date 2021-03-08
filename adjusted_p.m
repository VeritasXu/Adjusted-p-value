function [ranks, original_p, ad_p] = adjusted_p(data)
%import the results as matrix
% data:results matrix, the first column is the control method
[~, ~, ~, ~, ~, ~, ranks] = friedmanranks(data,0.05);

[n, k] = size(data);


[tmp, ~] = friedmanposthoc(ranks, n, k);

original_p = tmp(1,:);
original_p(1)=0;

ad_p=holm1xN(original_p);

original_p(1)=NaN;
ad_p(1)=NaN;
end
