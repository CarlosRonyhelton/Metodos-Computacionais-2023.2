clc; clear;
f = input('Digite uma equação: ', 's');
a = input('Digite o valor de a: ');
b = input('Digite o valor de b: ');
erro = input('Digite o erro: ');

f_a = subs(f,a);
f_b = subs(f,b);


if f_a == 0
    fprintf('Raiz encontrada! \n raiz = %d',a)
elseif f_b == 0
    fprintf('Raiz encontrada! \n raiz = %d',b)
else 
    while 
        if f_a*f_b < 0
            M = (a+b)/2;
            f_M = subs(f,M);
        else
            disp('Limitantes inválidos!')
        end
    end
end

