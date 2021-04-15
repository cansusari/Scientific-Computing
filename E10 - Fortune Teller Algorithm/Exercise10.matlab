% E10 - Cansu Sari

[aaa,aa,a] = xlsread('Fortunes','CoffeeFortuneRandom');
[bbb,bb,b] = xlsread('Fortunes','CoffeeFortuneFigures');
[ccc,cc,c] = xlsread('Fortunes','CardsFortune');
fprintf('Welcome to Falci Baci!\n');
f = input('Please Enter the type of fortune (1: Coffee fortune, 2: Cards fortune): ');
if f == 1
    fprintf('You requested a coffee fortune.\n');
    x = input('Please tell me the three things you see in your cup among this list:\n(Horse, Horseshoe, Bird, Road, Snake, Devil, Fish, Tear, Evileye, Key,Car, Fullheart, Brokenheart, Rooster, Tree):\n','s');
    y = input('','s');
    z = input('','s');
    for i=1:15
        if strcmp(x,b{i,1})
            fprintf([b{i,2} ' ']);      
        end
    end
    fprintf([a{ceil(rand*18),1} ' ']);
    for i=1:15
        if strcmp(y,b{i,1})
           fprintf([b{i,2} ' ']);
        end
    end    
    fprintf([a{ceil(rand*18),1} ' ']);
    for i=1:15
        if strcmp(z,b{i,1})
           fprintf([b{i,2} ' ']);
        end
    end      
elseif f==2
    fprintf('You requested a cards fortune.\n');
    
    suit = {' Hearts', ' Clubs', ' Spades', ' Diamonds'};
    rank = {'A', '2', '3', '4', '5', '6', '7', '8', '9', '10','J','Q','K'};
    D = cell(1,52);
    i = 1;
    s = randperm(52);
        for k= 1:4
            for j= 1:13
                 D{s(i)} = [ rank{j} suit{k} ];
                  i = i+1;
            end
        end    
    t = input('Please tell me the type of cards fortune (1: Draw one card, 2: Draw three cards, 3: Draw six cards): ');
    if t ==1
        fprintf('Shuffling and drawing a card for you.\n');
        for i= 1:52
            if strcmp(D{52},c{i,1})
                fprintf([c{i,1} '-' c{i,2}]);
            end
        end
    elseif t==2
        fprintf('Shuffling and drawing three cards for you.\n');
        for i= 1:52
            if strcmp(D{52},c{i,1})
                fprintf(['Past: ' c{i,1} '-' c{i,2} '\n']);
            end
        end
        for i= 1:52
            if strcmp(D{51},c{i,1})
                fprintf(['Present: ' c{i,1} '-' c{i,2} '\n']);
            end
        end
        for i= 1:52
            if strcmp(D{50},c{i,1})
                fprintf(['Future: ' c{i,1} '-' c{i,2} '\n']);
            end
        end
    elseif t==3
        fprintf('Shuffling and drawing six cards for you.\n');
        for i= 1:52
            if strcmp(D{52},c{i,1})
                fprintf(['Yourself: ' c{i,1} '-' c{i,2} '\n']);
            end
        end
        for i= 1:52
            if strcmp(D{51},c{i,1})
                fprintf(['Your Family: ' c{i,1} '-' c{i,2} '\n']);
            end
        end
        for i= 1:52
            if strcmp(D{50},c{i,1})
                fprintf(['Your Friends: ' c{i,1} '-' c{i,2} '\n']);
            end
        end
        for i= 1:52
            if strcmp(D{49},c{i,1})
                fprintf(['What You Expect: ' c{i,1} '-' c{i,2} '\n']);
            end
        end
        for i= 1:52
            if strcmp(D{48},c{i,1})
                fprintf(['What You Don''t Expect: ' c{i,1} '-' c{i,2} '\n']);
            end
        end
        for i= 1:52
            if strcmp(D{47},c{i,1})
                fprintf(['The Outcome: ' c{i,1} '-' c{i,2} '\n']);
            end
        end
    end
end

        
                
                
    
    
