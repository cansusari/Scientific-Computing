%E7 - Main - Cansu Sari

n = input('Enter the number of dots:');

x = rand(1,n)*2-1;
y = rand(1,n)*2-1;
x(n+1) = x(1);
y(n+1) = y(1);

figure
plot(x,y,x,y,'o');

[x1,y1] = Smooth_ID2095628(x,y,n,1);
figure
plot(x1,y1,x1,y1,'o');

[x10,y10] = Smooth_ID2095628(x,y,n,10);
figure
plot(x10,y10,x10,y10,'o');

[x100,y100] = Smooth_ID2095628(x,y,n,100);
figure
plot(x100,y100,x100,y100,'o');

[x900,y900] = Smooth_ID2095628(x,y,n,900);
figure
plot(x900,y900,x900,y900,'o');

[x1000,y1000] = Smooth_ID2095628(x,y,n,1000);
A = sum(x1000)/(n+1);
B = sum(y1000)/(n+1);
xC = x1000 - A;
yC = y1000 - B;
figure
plot(xC,yC,'r',xC,yC,'o');
hold on
R = max(sqrt(xC.^2 + yC.^2));
xN = xC/R;
yN = yC/R;
plot(xN,yN,'b',xN,yN,'o');