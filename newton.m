clc; clear;
y = input('Digite uma equação: ', 's');
y = str2sym(y);
x0 = input('Digite o valor de X0: ');
erro = input('Digite o erro: ');
n = input('Número de iterações lim.: ');

for cont = 1:n
    
    yx0 = subs(y,x0);
    dyx0 = subs(diff(y),x0);
    xn = x0 - yx0/dyx0;
    x0 = xn;

    if(yx0 == 0 || abs(yx0) < erro)
        fprintf('Raiz encontrada! \n raiz = %f \n', xn)
        fprintf('Número de iterações = %d', cont)
        break
    end

end