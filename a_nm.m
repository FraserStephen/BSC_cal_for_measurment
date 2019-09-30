function a = a_nm(k, r, n, m)
%
% r can NOT be zero
%
%
    epsi = 1;
    
    a =    1./(k^2*r.^2) * 1j^(m-n) ...
        .* (epsi^(n+m+1)* D1_nm(k,r,n,m) ...
             + 1j*epsi^(n+m)* D2_nm(k,r,n,m));
         
end