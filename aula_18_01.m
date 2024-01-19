clear; clc;
lin = input('Número de linhas: ');
col = input('Número de colunas: ');
for i = 1:lin
    for j = 1:col
        fprintf('Digite o valor para a matriz(%d,%d): ',i,j)
        matriz(i,j) = input('')
    end
end
