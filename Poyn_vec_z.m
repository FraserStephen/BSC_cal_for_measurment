function Sz = Poyn_vec_z(k, R, g_n)
%
%calculate z Poynting vector Sz
%
%

    nmax = length(g_n);
    nmax_R = length(R);
    G_n = g_n' * conj(g_n);
    G_n = reshape(G_n, nmax^2, 1);
    Sz = zeros(1, nmax_R);
    
    for index = 1:nmax_R
        r = R(index);
        A_n = Matrix_a_nm(k, r, nmax, nmax); % n = m
        
%         Sz(index) = real(sum(sum(A_n .* G_n)));
        Sz(index) = real(reshape(A_n,1,nmax^2)*G_n);
    end
    
end
    