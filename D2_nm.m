function d2 = D2_nm(k, r, n, m)
%
%
%
%
    d2 =  k*r.*(d_r_sphbes(n,k,r).*sphbes(m,r)...
         - d_r_sphbes(m,k,r).*sphbes(n,r));

end