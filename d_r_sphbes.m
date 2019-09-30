function drjs = d_r_sphbes(nu,k, r)
%
% derivative of r*sphbes(n, k*r)
% d(r*sphbes(n, k*r)/dr)
% k -- wave number
% r -- can be vector
%
    step = 1e-10;
    
    rjs1 = sphbes(nu, k*r).*r;
    r = r + step;
    rjs2 = sphbes(nu, k*r).*r;
    
    drjs = (rjs1 - rjs2)/step;
    
end