clc; clear;
f = input('Digite uma equação: ', 's');
f = str2sym(f);
a = input('Digite o valor de a: ');
b = input('Digite o valor de b: ');
erro = input('Digite o erro: ');
n = input('Número de iterações lim.: ');
cont = 1;
x(1) = cont;
y(1) = abs(b-a);

f_a = subs(f,a);
f_b = subs(f,b);

if f_a == 0  || abs(f_a) < erro
    fprintf('Raiz encontrada! \n raiz = %f',a)
elseif f_b == 0 || abs(f_b) < erro
    fprintf('Raiz encontrada! \n raiz = %f',b)
elseif  f_a * f_b < 0
    while cont < n
        M = (a+b)/2;
        f_M = subs(f,M);
        f_a = subs(f,a);
    
        if abs(b-a)<erro || f_M == 0
            fprintf('Raiz encontrada! \n raiz = %f \n',M)
            fprintf('Num. de it. = %d', cont)
            break
        end
        
        if f_a * f_M < 0
            b = M;
        else 
            a = M;   
        end

        cont = cont + 1;
        x(cont) = cont;

        y(cont) = abs(b-a);
    end
else 
    disp('Limitantes inválidos!')
end

plot(x,y)
xlabel('Nº de iterações')
ylabel('Erro')

