clear; clc;
%% Declaração dos dados comercialmente disponiveis
% vet1 = linspace(0.25,0.7, 10)
vet1 = 0.25:0.05:0.7;
vet2 = 0.8:0.1:1.2;
vet3 = 1.4:0.2:2.2;
vet4 = [2.5 2.8];
vet5 = 3.5:0.5:7;
vet6 = 8:16;
%%Final da declaração dos dados comercialmente disponiveis

vetFinal = [vet1 vet2 vet3 vet4 vet5 vet6];
% vetor Final

comprimento = size(vetFinal);
diametro = input('Digite o diâmetro desejado: ');

for cont = 1:comprimento(2)
    if diametro <= vetFinal(cont)
        diametro = vetFinal(cont);
        break
    end
end
fprintf('Diâmetro disponível: %.2d', diametro)





