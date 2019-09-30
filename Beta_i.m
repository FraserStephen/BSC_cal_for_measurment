function beta = Beta_i(k, r_i, S_i, g_n)
%
%
%
%
    
    nmax = length(g_n);
    
    beta = 0;
    
    for r = 1:nmax
        for p = 1:nmax
            beta = beta + g_n(r)*g_n(p)*real(a_nm(k,r_i,r,p));
        end
    end
    
    beta = S_i - beta;
    
end
    