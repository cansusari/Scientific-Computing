%E3 - Part a - Cansu Sari

for N = 10:10:1000
	A = 1;
	T = 0;
	R = 0;

	for k = 1:N
	    A = A + ((-3)^(-k))/(2*k+1);
	    T = T + 1/(k^2);
	    R = R + ((-1)^(k+1))/(2*k-1);
	end

	a = A*sqrt(12);
	t = sqrt(6*T);
	r = 4*R;
	x(N/10) = abs(pi-a);
	y(N/10) = abs(pi-t);
	z(N/10) = abs(pi-r);
end

n = 10:10:1000;

hold on, plot(n,x,'b.',n,y,'g.',n,z,'r.'), hold off;
title('Errors with respect to n values');
xlabel('n values');
ylabel('Errors');
legend('Errors in the first estimate','Errors in the second estimate','Errors in the third estimate');