function drawCircle(x,y,r,c)

th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
fill(xunit, yunit,c);