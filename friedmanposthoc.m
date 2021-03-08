function [p, z] = friedmanposthoc(avgs, n, k)

    z = zeros(k);
    den = sqrt((k^2 + k) / (6 * n));
    
    for i = 1 : k
       z(i, :) = (avgs(i) - avgs) ./ den;
    end
    
    p = 2 * normcdf(-abs(z), 0, 1);
end