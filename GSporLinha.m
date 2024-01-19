clc;
clear all;
close;
% Definição de parâmetros reais (valores de entrada)
Nx = 225; %input('Forneça a quantidade de nós na vertical: ');
Ny = 225;% input('Forneça a quantidade de nós na horizontal: ');
H = 1;%input('Forneça o comprimento horizontal: ');
V = 1;%input('Forneça o comprimento vertical: ');
B = H/V;
% Iniciando a função temperatura
T = zeros(Nx,Ny);
% Condições de contorno
T(Nx,:) = 50; %input('Forneça a temperatura (ºC) para a aresta inferior: ');
T(1,:) = 0;%input('Forneça a temperatura (ºC) para a aresta superior: ');
T(:,Ny) = 100;%input('Forneça a temperatura (ºC) para a aresta direita: ');
T(:,1) = 75;%input('Forneça a temperatura (ºC) para a aresta esquerda: ');
crit_conver = 10e-6;%input('Determine o Critério de Convergência: ');
% Cálculo para a temperatura
 Tatual = T;
 cont = 0;
 parar = 1;
 while parar==1 %interrupção do loop
 parar=0;

 for (i = 2:Nx-1)
    for (j = 2:Ny-1)
       % T(i,j) = (-(B^2)*(Tant(i,j+1))-(B^2)*(T(i,j-1)));
       %T(i,j) = (T(i+1,j))-2*(1+(B^2))*(T(i,j))+(T(i-1,j));
      %%  Tatual(i,j) = ((B^2)*(T(i,j+1))+(B^2)*(Tatual(i,j-1))+(Tatual(i-1,j))+(Tatual(i+1,j)))/(2*(1+(B^2)));
        Tatual(i,j) = ((Tatual(i+1,j)+(Tatual(i-1,j))+(T(i,j+1))*(B^2)+Tatual(i,j-1))/(2*(1+(B^2))));
        %T(i,j) = ((T(i+1,j)+(T(i-1,j))+(Tatual(i,j+1))*(B^2)+T(i,j-1))/(2*(1+(B^2))));
        Cc = abs(Tatual(i,j)-T(i,j));
%         if (Cc >= crit_conver);
%             parar = 1;
%         end
    end
 end
 if (Cc >= crit_conver);
            parar = 1;
 end
 T = Tatual;
 cont = cont+1;
 end
 fprintf('Número de iterações: %d', cont);

 % Plot da temperatura
[x,y] = meshgrid(0:1/(Nx-1):1 , 0:1/(Ny-1):1);
surf(x,y,T)
figure
contour(x,y,T)
title('Método de GS')
xlabel('x')
ylabel('y')

