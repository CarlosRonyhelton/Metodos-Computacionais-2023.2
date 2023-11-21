clear; clc;

fprintf('\nMenu: \n 1 - Corda de piano \n 2 - Aço revenido \n 3 - Aço encruado \n 4 - Aço liga Cr-Va \n 5 - Aço liga Cr-Si \n')
opcao = input('Digite uma opção: ')
diametro = input('Digite o diâmetro desejado: ');

diametro = diametros(diametro);

fprintf('Diâmetro disponível: %.2d\n', diametro)

switch opcao
    case 1
        if diametro <= 6.5
            a = -0.1625;
            B = 2153.5;
            Sut = B*diametro^a;
            fprintf('Sut = %d MPa\n', Sut)
        else 
            disp('ERRO! Diâmetro escolhido não corresponde ao material desejado! Escolho outro! ')
        end
       
    case 2
        if diametro >= 0.5 && diametro <= 16
           a = -0.1833;
           B = 1831.2;
           Sut = B*diametro^a;
           fprintf('Sut = %d MPa', Sut)
        else 
           disp('ERRO! Diâmetro escolhido não corresponde ao material desejado! Escolho outro! ')
        end
    case 3
        if diametro >= 0.5 && diametro <= 16
           a = -0.1822;
           B = 1753.3;
           Sut = B*diametro^a;
           fprintf('Sut = %d MPa', Sut)
        else 
           disp('ERRO! Diâmetro escolhido não corresponde ao material desejado! Escolho outro! ')
        end
    case 4
        if diametro >= 0.5 && diametro <= 13
           a = -0.1453;
           B = 1909.9;
           Sut = B*diametro^a;
           fprintf('Sut = %d MPa', Sut)
        else 
           disp('ERRO! Diâmetro escolhido não corresponde ao material desejado! Escolho outro! ')
        end
    case 5
        if diametro >= 0.8 && diametro <= 11
           a = -0.0934;
           B = 2059.2;
           Sut = B*diametro^a;
           fprintf('Sut = %d MPa', Sut)
        else 
           disp('ERRO! Diâmetro escolhido não corresponde ao material desejado! Escolho outro! ')
        end
    otherwise
        disp('Opção fora do Menu!')
end





