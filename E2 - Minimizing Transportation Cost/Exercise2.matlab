%E2 - Cansu Sari

w = [8 4 10 7 6 5 1 7];
c = [.02 .05 .02 .03 .03 .03 .05 .03];
x = [32 27 28 37 41 36 30 41];
y = [39 38 41 37 39 41 36 37];

X = input('Enter initial X coordinate:');
Y = input('Enter initial Y coordinate:');
I = input('Enter number of iterations:');

for n=1:8
    d(n) = abs(X-x(n))+abs(Y-y(n));
    if (d(n)== 0)
        d(n) = 0.0001;
    end
end

for n=1:I
    A = 0;
    B = 0;
    C = 0;
    
    for m = 1:8
        A = A + (w(m)*c(m)*x(m))/d(m);
        B = B + (w(m)*c(m))/d(m);
        C = C + (w(m)*c(m)*y(m))/d(m);
    end
        X = A/B;
        Y = C/B;
        
        for k=1:8
            d(k) = abs(X-x(k))+abs(Y-y(k));
            if (d(k) == 0)
                d(k) = 0.0001;
            end
        end
        
        TC = 0;
        for j=1:8
            TC = TC + w(j)*c(j)*d(j);
        end
        
        fprintf('Iteration-%d: X coordinate: %f, Y coordinate: %f, TC: %f \n', n,X,Y,TC);
end