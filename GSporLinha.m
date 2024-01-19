clc;
clear all;
close;
% Defini��o de par�metros reais (valores de entrada)
Nx = 225; %input('Forne�a a quantidade de n�s na vertical: ');
Ny = 225;% input('Forne�a a quantidade de n�s na horizontal: ');
H = 1;%input('Forne�a o comprimento horizontal: ');
V = 1;%input('Forne�a o comprimento vertical: ');
B = H/V;
% Iniciando a fun��o temperatura
T = zeros(Nx,Ny);
% Condi��es de contorno
T(Nx,:) = 50; %input('Forne�a a temperatura (�C) para a aresta inferior: ');
T(1,:) = 0;%input('Forne�a a temperatura (�C) para a aresta superior: ');
T(:,Ny) = 100;%input('Forne�a a temperatura (�C) para a aresta direita: ');
T(:,1) = 75;%input('Forne�a a temperatura (�C) para a aresta esquerda: ');
crit_conver = 10e-6;%input('Determine o Crit�rio de Converg�ncia: ');
% C�lculo para a temperatura
 Tatual = T;
 cont = 0;
 parar = 1;
 while parar==1 %interrup��o do loop
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
 fprintf('N�mero de itera��es: %d', cont);

 % Plot da temperatura
[x,y] = meshgrid(0:1/(Nx-1):1 , 0:1/(Ny-1):1);
surf(x,y,T)
figure
contour(x,y,T)
title('M�todo de GS')
xlabel('x')
ylabel('y')

