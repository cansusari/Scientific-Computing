%E8 - Cansu Sari

load HW5w1
for i=1:100
    cx(i) = data(i,1);
    cy(i) = data(i,2);
end
bx = [rand*max(cx) rand*max(cx)];
by = [rand*max(cy) rand*max(cy)];
for I = 1:100
    a1=0;
    a2=0;
    a3=0;
    a4=0;
    b1=0;
    b2=0;    
    for i = 1:2
        for j = 1:100
            f(i,j) = 1-(((cx(j)-bx(i))^2+(cy(j)-by(i))^2)/((cx(j)-bx(1))^2+(cy(j)-by(1))^2+(cx(j)-bx(2))^2+(cy(j)-by(2))^2));
        end
    end
    for k =1:100
        a1 = a1+f(1,k)*cx(k);
        a2 = a2+f(1,k)*cy(k);
        a3 = a3+f(2,k)*cx(k);
        a4 = a4+f(2,k)*cy(k);
        b1 = b1+f(1,k);
        b2 = b2+f(2,k);
    end
    bx(1)=a1/b1;
    by(1)=a2/b1;
    bx(2)=a3/b2;
    by(2)=a4/b2;
end
    fprintf('Final Locations of the Base Stations\nStation 1\nX coordinate: %f\nY coordinate: %f\n', bx(1), by(1));
    fprintf('Station 2\nX coordinate: %f\nY coordinate: %f\n', bx(2), by(2));
    
x = linspace(0,max(cx),200);
y = linspace(0,max(cy),200);
for Y=1:200
    for X = 1:200
        F1(Y,X) = 1-(((x(X)-bx(1))^2+(y(Y)-by(1))^2)/((x(X)-bx(1))^2+(y(Y)-by(1))^2+(x(X)-bx(2))^2+(y(Y)-by(2))^2));
        F2(Y,X) = 1-(((x(X)-bx(2))^2+(y(Y)-by(2))^2)/((x(X)-bx(1))^2+(y(Y)-by(1))^2+(x(X)-bx(2))^2+(y(Y)-by(2))^2));
    end
end
subplot(2,1,1)
contour(x,y,F1,50);
title('Relative Signal Strength For Base Station 1');
subplot(2,1,2)
contour(x,y,F2,50);
title('Relative Signal Strength For Base Station 2');