function djs = d_sphbes(nu, x)
%
% derivative of spherical bessel function
% x can be vector
%
    
    step = 1e-10;

    js1 = sphbes(nu, x);
    js2 = sphbes(nu, x+step);
    
    djs = (js1 - js2)/step;
    
end