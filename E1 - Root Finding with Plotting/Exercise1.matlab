%E1 - Cansu Sari

x = [-6:0.01:3];
y = 2*sin(x)-exp(x)+1;

subplot(4,2,1), plot(x,y);
title('Plot of 2sin(x)-e^x+1');

subplot(4,2,3), plot(x,y);
axis([-2.7 -2.6 -0.02 0.02]);
title('Zoomed view for the first root');

subplot(4,2,5), plot(x,y);
axis([-0.05 0.05 -0.02 0.02]);
title('Zoomed view for the second root');

subplot(4,2,7), plot(x,y);
axis([0.92 1.02 -0.02 0.02]);
title('Zoomed view for the third root');

z = [0:0.01:4];
t = (4.*z.*sin(z)-3)./(2+z.^2);

subplot(4,2,2), plot(z,t);
title('Plot of (4sin(x)-3)/(2+x^2)');

subplot(4,2,4), plot(z,t);
axis([0.88 0.98 -0.02 0.02]);
title('Zoomed view for the first root');

subplot(4,2,6), plot(z,t);
axis([2.82 2.92 -0.02 0.02]);
title('Zoomed view for the second root');