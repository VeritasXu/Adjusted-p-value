function [fid] = imandavenport(fs, n, k)
    fid = (n - 1) * fs / (n * (k - 1) - fs);
end

