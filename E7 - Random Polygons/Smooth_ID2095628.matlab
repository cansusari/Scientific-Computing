%E7 - Function - Cansu Sari

function [x,y] = Smooth_ID2095628(a,b,n,m);

% n for number of dots
% m for number of iterations


for k = 1:m

	for i = 1:n
	    if i<n
	        x(i) = (a(i)+a(i+1))/2;
	        y(i) = (b(i)+b(i+1))/2;
	    else
	        x(n) = (a(n)+a(1))/2;
	        y(n) = (b(n)+b(1))/2; 
	    end
	end

	x(n+1) = x(1);
	y(n+1) = y(1);

	a=x;
	b=y;
	
end