clear; clc;
x = 0:20;
n = length(x)

for cont = 1:n
    a2 = 5
    if  x(cont)>a2
        u2 = (x(cont) - a2)^5;
    else 
        u2 = 0;
    end

    a1 = 0
    if  x(cont)>a1
        u1 = (x(cont)-a1)^4;
    else 
        u1 = 0;
    end


    a3 = 8
    if  x(cont)>a3
        u3 = 15/6*(x(cont)-a3)^3;
    else 
        u3 = 0;
    end

    a4 = 7
    if  x(cont)>a4
        u4 = 75*(x(cont)-a4)^2;
    else 
        u4 = 0;
    end

    u(cont) =  -5/6*(u1 - u2) + u3 + u4 + 57/6*x(cont)^3 * 238.25*x(cont)
end

plot(x, u, '-*')
