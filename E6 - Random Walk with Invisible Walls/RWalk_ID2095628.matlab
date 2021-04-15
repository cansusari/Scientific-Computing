%E6 - Function - Cansu Sari

function k = RWalk_ID2095628(a,b,N)

L = (N-1)/2;
w = 0;
for i = 1:100
    x=0;
    y=0;
    v=0;
while (x~=a || y~=b);
r = rand;
if r<0.125      %d1xb
    if x == L
        x = -L;
    else x = x+1;
    end
elseif r<0.25   %d2xbyb
    if x == L
        x = -L;
    else x = x+1;
    end
    if y == L
        y = -L;
    else y = y+1;
    end
elseif r<0.375  %d3yb
    if y == L
        y = -L;
    else y = y+1;
    end
elseif r<0.5    %d4xkyb
    if x == -L
        x = L;
    else x = x-1;
    end
    if y == L
        y = -L;
    else y = y+1;
    end
elseif r<0.625  %d5xk
    if x == -L
        x = L;
    else x = x-1;    
    end
elseif r<0.75   %d6xkyk
    if x == -L
        x = L;
    else x = x-1;   
    end    
    if y == -L
        y = L;
    else y = y-1;
    end
elseif r<0.875  %d7yk
    if y == -L
        y = L;
    else y = y-1;
    end    
else            %d8xbyk
    if x == L
        x = -L;
    else x = x+1;
    end
    if y == -L
        y = L;
    else y = y-1;
    end
end
    v = v+1;
end
w = w+v;
end
k = round(w/100);