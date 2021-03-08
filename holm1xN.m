function [ap] = holm1xN(p)
    [p, idx] = sort(p);
    
    k = length(p) + 1;
    ap = zeros(1, length(p));
    
    for i = 1 : length(p)
       d = k - (1 : i);
       aux = d .* p(1 : i);
       ap(i) = min(max(aux), 1);
    end
    ap(idx) = ap;
end
