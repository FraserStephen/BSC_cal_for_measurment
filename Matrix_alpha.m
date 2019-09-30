function alpha = Matrix_alpha(k, r, g_n)
%
%  size of r could be same as g_n
%
%
    nmax = length(g_n);
    R_nmax = length(r);
    
    alpha = zeros(R_nmax, nmax);
    
    for n = 1:R_nmax
        for m = 1:nmax
            alpha(n, m) = Alpha_ij(k, r(n), g_n, m);
        end
    end
    
end