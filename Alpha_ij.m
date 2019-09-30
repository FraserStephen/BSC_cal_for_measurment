function alpha = Alpha_ij(k, r_i, g_n, j)
%
% k -- wave number
% r_i -- can NOT be vector
% g_n -- n size BSC vector
% j -- order of a_nm
%
    nmax = length(g_n);
    
    alpha = 0;
    
    for q = 1:nmax
        alpha = alpha + 2*g_n(q)*real(a_nm(k, r_i, j, q));
        if isnan(alpha)
            alpha = 1e-50; %zero
        end
    end
end