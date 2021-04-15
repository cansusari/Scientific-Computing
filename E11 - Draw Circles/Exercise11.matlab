%E11 - Cansu Sari

r1=round(rand*25+5);
r2=round(rand*25+5);
r3=round(rand*25+5);
r4=round(rand*25+5);
D(1) = struct('x',1,'y',0,'r',r1,'c',[1 0 0],'d',64);
D(2) = struct('x',65,'y',0,'r',r2,'c',[1 1 0],'d',100);
D(3) = struct('x',165,'y',0,'r',r3,'c',[0 1 0],'d',51);
D(4) = struct('x',216,'y',0,'r',r4,'c',[0 0 1],'d',51);
fprintf('Circle 1: x coordinate:1   y coordinate:0 radius:%d\n',r1);
fprintf('Circle 2: x coordinate:65  y coordinate:0 radius:%d\n',r2);
fprintf('Circle 3: x coordinate:165 y coordinate:0 radius:%d\n',r3);
fprintf('Circle 4: x coordinate:216 y coordinate:0 radius:%d\n',r4);
close all
figure
axis equal off
hold on
drawCircle(D(1).x,D(1).y,D(1).r,D(1).c);
drawCircle(D(2).x,D(2).y,D(2).r,D(2).c);
drawCircle(D(3).x,D(3).y,D(3).r,D(3).c);
drawCircle(D(4).x,D(4).y,D(4).r,D(4).c);
numc=4;
a=1;
while a
    for i=1:numc
        T(i)=D(i);
    end
    numc = 2*numc-1;
    for j=1:2:numc
        D(j) = T(((j+1)/2));
    end
    for k=2:2:numc
        D(k).x = (T(k/2).x + T(k/2+1).x)/2;
        D(k).y = (T(k/2).y + T(k/2+1).y)/2;
        D(k).r = (T(k/2).r + T(k/2+1).r)/2;
        D(k).c = (T(k/2).c + T(k/2+1).c)/2;
    end
    for i=1:(numc-1)
        D(i).d = abs(D(i).x-D(i+1).x);
    end
    D(numc).d = D(numc-1).d;
    for i = 1:numc-1
        if D(i).d < 1
            a=0;
        end
    end
    for i=2:2:numc
        drawCircle(D(i).x,D(i).y,D(i).r,D(i).c);
    end
end
        ngenerated=numc-4;
        title(['Number of generated circles: ' num2str(ngenerated)]);
    
        

        
    