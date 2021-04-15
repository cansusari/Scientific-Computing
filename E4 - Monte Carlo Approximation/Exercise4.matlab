%E4 - Cansu Sari

r = 0;
g = 0;
b = 0;
t = 10000;

for i=1:t
    x = (rand-0.5)*2;
    y = (rand-0.5)*2;
    if ((x^2+y^2)^3<=2*x^2*y^2)
        r = r+1;
        plot(x,y,'.r');
        axis equal
        axis equal off
        hold on
    elseif ((x^2+y^2)^3<=4*x^2*y^2)
        g = g+1;
        plot(x,y,'.g');
        hold on
    else
        plot(x,y,'.b');
        b = b+1;
    end
end


Area_Red = 4*r/t;
Area_Green = 4*g/t;

fprintf('The area of the red region is: %f',Area_Red);
fprintf('The area of the green region is: %f',Area_Green);


%When the approximation is done with different t values, as t increases,
%the approximation gets better, but since the number of the points also
%increases, the time it takes the plot the figure extends. Also the
%sharpness of the figure gets better as t increases.