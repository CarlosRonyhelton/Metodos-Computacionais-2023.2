clear; clc;
% Declaração dos dados comercialmente disponiveis
% vet1 = linspace(0.25,0.7, 10)
vet1 = 0.25:0.05:0.7;
vet2 = 0.8:0.1:1.2;
vet3 = 1.4:0.2:2.2;
vet4 = [2.5 2.8];
vet5 = 3.5:0.5:7;
vet6 = 8:16;
% Final da declaração dos dados comercialmente disponiveis

vetDiametros = [vet1 vet2 vet3 vet4 vet5 vet6];

comprimento = size(vetDiametros);
diametro = input('Digite o diâmetro desejado: ');

for cont = 1:comprimento(2)
    if diametro <= vetDiametros(cont)
        diametro = vetDiametros(cont);
        break
    end
end
fprintf('Diâmetro disponível: %.2d', diametro)
fprintf('\nMenu: \n 1 - Corda de piano \n 2 - Aço revenido \n 3 - Aço encruado \n 4 - Aço liga Cr-Va \n 5 - Aço liga Cr-Si \n')
opcao = input('Digite uma opção: ')
switch opcao
    case 1
        if diametro <= 6.5
            a = -0.1625;
            B = 2153.5;
            Sut = B*diametro^a;
            fprintf('Sut = %d MPa', Sut)
        else 
            disp('ERRO! Diâmetro escolhido não corresponde ao material desejado! Escolho outro! ')
        end
       
    case 2
    case 3
    case 4
    case 5
end





