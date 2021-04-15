%Cansu Sari

classdef RockPaperScissors<handle
    
    properties
        moveOfPlayer
        moveOfComputer
    end
    
    methods
        
        function r = RockPaperScissors(p,c)
            if nargin == 2
                r.moveOfPlayer = p;
                r.moveOfComputer = c;
            elseif nargin == 1 || nargin == 0
                r.moveOfPlayer = randi(3)-1;
            end
            r.moveOfComputer = randi(3)-1;
        end
        
        function SetMoveP(d,m)
            d.moveOfPlayer = m;
        end
        
        function PrintMoveP(d)
            if d.moveOfPlayer == 0
                a = 'rock';
            elseif d.moveOfPlayer == 1
                a = 'paper';
            elseif d.moveOfPlayer == 2
                a = 'scissors';
            end
            fprintf('You played %s!\n',a);
        end
        
        function PlayC(d)
            d.moveOfComputer = randi(3)-1;
        end
        
        function PrintMoveC(d)
            if d.moveOfComputer == 0
                a = 'rock';
            elseif d.moveOfComputer == 1
                a = 'paper';
            elseif d.moveOfComputer == 2
                a = 'scissors';
            end
            fprintf('Computer played %s!\n',a);
        end
        
        function [pw, cw]=Win(d)
            pw = 0;
            cw = 0;
            if d.moveOfPlayer == 0
                if d.moveOfComputer == 1
                    cw = 1;
                elseif d.moveOfComputer == 2
                    pw = 1;
                end
            elseif d.moveOfPlayer == 1
                if d.moveOfComputer == 0
                    pw = 1;
                elseif d.moveOfComputer == 2
                    cw = 1;
                end
            elseif d.moveOfPlayer == 2
                if d.moveOfComputer == 0
                    cw = 1;
                elseif d.moveOfComputer == 1
                    pw = 1;
                end
            end
            if pw == 0 && cw == 0
                fprintf('Draw in this turn!\n');
            elseif pw == 1
                fprintf('You win this turn!\n');
            elseif cw == 1
                fprintf('You lose this turn!\n');
            end
        end
    end
end

                    
            
            
        
        
            
                