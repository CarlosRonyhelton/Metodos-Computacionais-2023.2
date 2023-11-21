function [diametro] = diametros(diametro)
    vet1 = 0.25:0.05:0.7;
    vet2 = 0.8:0.1:1.2;
    vet3 = 1.4:0.2:2.2;
    vet4 = [2.5 2.8];
    vet5 = 3.5:0.5:7;
    vet6 = 8:16;
    % Final da declaração dos dados comercialmente disponiveis
    
    vetDiametros = [vet1 vet2 vet3 vet4 vet5 vet6];
    comprimento = size(vetDiametros);

    for cont = 1:comprimento(2)
        if diametro <= vetDiametros(cont)
            diametro = vetDiametros(cont); 
            break;
    end
end
end