%E9 - Cansu Sari

load HW5w2
I = size(inv,1);
S = size(inv,2);
C = 0;
for i = 1:I
minof = [100 0];    
    for k = 1:S
       if inv(i,k)>= p0(i)
           if c(i,k)<= minof(1)
               minof(1) = c(i,k);
               minof(2) = k;
           end
       end 
    end
    if minof(1) ~= 100
       fprintf('Ingredient %d purchased from store %d\n', i, minof(2));
       C = C + minof(1)*p0(i);
    else fprintf('Demand of ingredient %d not satisfied!\n',i);
    end
end
   fprintf('Total cost is %d galleons.', C);
     



           