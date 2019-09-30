function beta = Vector_beta(k, r, S0, g_n)
%
% r vector of R
% S0 poyting vector from measurment (vector)
% S0 size must be same as r
% g_n BSC vector
%

    %nmax = length(g_n);
    R_nmax = length(r);
    
    beta = zeros(1, R_nmax);
    
    for i = 1:R_nmax
        beta(i) = Beta_i(k, r(i), S0(i), g_n);
    end