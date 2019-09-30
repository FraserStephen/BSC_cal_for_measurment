function a = Matrix_a_nm(k, r, n, m)
%
% matrix of a_nm
% ATTENTION: r CAN NOT be a vector !
%
    
    a = zeros(n, m);
    
    for i = 1:n
        for j = 1:m
            
            a(i,j) = a_nm(k, r, i, j);
            
        end
    end
    
end
    