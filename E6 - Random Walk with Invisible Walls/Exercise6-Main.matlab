%E6 - Main - Cansu Sari

i = [];
i = input('Which cell do you need to visit?');
a = i(1);
b = i(2);

n1 = RWalk_ID2095628(a,b,21);
n2 = RWalk_ID2095628(a,b,201);
n3 = RWalk_ID2095628(a,b,2001);

fprintf('For N=21   : The cell (%d,%d) is visited in %d steps in average.\n',a,b,n1);
fprintf('For N=201  : The cell (%d,%d) is visited in %d steps in average.\n',a,b,n2);
fprintf('For N=2001 : The cell (%d,%d) is visited in %d steps in average.\n',a,b,n3);