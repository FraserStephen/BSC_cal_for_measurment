clear

data = textread('Poyn_data_HFSS.fld', '', 'headerlines', 2);

Z = data(:, 3);
S0 = data(:, 8);


g_n = zeros(1, length(S0));
r = Z;
k = 20;

for iter = 1:10
    A = Matrix_alpha(k, r, g_n);
    B = Vector_beta(k, r, S0, g_n);

    del_gn = inv(A) * B';
    g_n = g_n + del_gn';
end

Sz = Poyn_vec_z(k, r, g_n);

plot(r, S0);
hold on
plot(r, Sz);



