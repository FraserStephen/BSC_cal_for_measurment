function d1 = D1_nm(k, r, n, m)
%
%
%
%
    d1 =  d_r_sphbes(n, k, r).*d_r_sphbes(m, k, r)...
        + k^2*r.^2.*sphbes(n,k*r).*sphbes(m,k*r);
    
end