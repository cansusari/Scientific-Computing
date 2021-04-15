%Cansu Sari

clear all
clc
n = input('Enter the number of turns you want to play:');
nump = 0;
numc = 0;
for i = 1:n
    fprintf('Turn %d\n',i);
    d = RockPaperScissors;
    m = input('Enter your move (0:Rock, 1:Paper, 2:Scissors):');
    SetMoveP(d,m);
    PrintMoveP(d);
    PlayC(d);
    PrintMoveC(d);
    [pw, cw]= Win(d);
    nump = nump + pw;
    numc = numc + cw;
end
if nump > numc
    fprintf('Congratulations, you win the game :)\n');
elseif nump < numc
    fprintf('You lose :(\n');
else
    fprintf('Draw!\n');
end
    
    