%E3 - Part b - Cansu Sari

for N = 10:10:1000
    
	A = 1;
	T = 0;
	R = 0;
	B = 1;
	C = 0;
	D = 0;

	for k = 1:N
	    A = A + ((-3)^(-k))/(2*k+1);
	    T = T + 1/(k^2);
	    R = R + ((-1)^(k+1))/(2*k-1);
	    B = B + round(((-3)^(-k))/(2*k+1),5);
	    C = C + round(1/(k^2),5);
	    D = D + round(((-1)^(k+1))/(2*k-1),5);
	end

	a = A*sqrt(12);
	t = sqrt(6*T);
	r = 4*R;
	b = B*sqrt(12);
	c = sqrt(6*C);
	d = 4*D;

	abs_error_1(N) = abs(a-b);
	abs_error_2(N) = abs(t-c);
	abs_error_3(N) = abs(r-d);

	RE1(N/10) = abs(b-pi)/pi;
	RE2(N/10) = abs(c-pi)/pi;
	RE3(N/10) = abs(d-pi)/pi;

end


n = 10:10:1000;
hold on, plot(n,RE1,'b.',n,RE2,'g.',n,RE3,'r.'), hold off;
title('Relative errors with respect to n values');
xlabel('n values');
ylabel('Relative errors');
legend('Relative errors in the first estimate','Relative errors in the second estimate','Relative errors in the third estimate');
