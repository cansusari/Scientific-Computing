%E5 - Main - Cansu Sari

a = 10;
b = 2;
n = 0;
while(abs(a-b)>=0.0001)
    n = n+1;
    t = a;
    a = CalcTerm_ID2095628(a,b);
    b = t;
end
    fprintf('After %d iterations, the function converges to %f.\n',n,a);
    
    %When giving b=2 (X1) and a=10 (X2) as initial values and determining the stopping
    %criteria as 0.0001, after 14 iterations the function converges to
    %0.610760. 
    
    %With the same a and b values, when changing the criteria to
    %0.00000001, the function converges to 0.610759 after 16 iterations,
    %which means that as the stopping criteria gets smaller, the number of
    %iterations increases.
    
    %When using 0.00000001 as the stopping criteria but using the inital
    %values b=4 and a=5, the function converges to 4.991961, which is the
    %second root of the function after 5 iterations. 
    
    %Choosing b=4 and a=6 as the initial values, the function again
    %converges to the second root of the function, 4.991961, but the number
    %of iterations increases to 14.
    
    %When b=2 and a=3, the first root of the function, 0.610759 is found in
    %15 iterations.