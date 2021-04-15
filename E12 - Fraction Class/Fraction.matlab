%E12 - Cansu Sari

classdef Fraction < handle 
% A Fraction has a numerator (num) and a denominator (denom).
% A negative fraction has a negative numerator and a positive denominator. 
% If the denominator is zero, set the numerator to +/- inf and the
% denominator to 1.
% Assume numerator and denominator are integers (except for the case of inf).
    
    properties
        num    % numerator
        denom  % denominator
    end
    
    methods
        function frac = Fraction(nu, de)
        % Constructor: construct a Fraction object and return its handle
            if de<0  % need to make denominator positive
                nu= -nu;
                de= -de;
            end
            if de==0  % set fraction to +/- inf
                frac.num= inf*nu;
                frac.denom= 1;
            else
                frac.num= nu;
                frac.denom= de;
            end
            % Uncomment this statement if function reduce is implemented:
            frac.reduce()
        end
        
        function tf = isLessThan(self, other)
        % tf is true (1) if self is strictly less than the other Fraction
            if self.num/self.denom < other.num/other.denom
                tf = 1;
            else
                tf = 0;
            end
        end
        
        function tf = isEqualTo(self, other)
        % tf is true (1) if self is equal to the other Fraction
            %%%% write your code below %%%%
            if self.num/self.denom == other.num/other.denom
                tf = 1;
            else
                tf = 0;
            end
        end
        
        function out = add(self, other)
        % out is a new Fraction from adding self and the other Fraction
            %%%% write your code below %%%%
            out.num = self.num*other.denom+other.num*self.denom;
            out.denom = self.denom*other.denom;
            
        end
        
        function val = toDouble(self)
        % val is the type double value of self
            %%%% write your code below %%%%
            val = self.num/self.denom;
      
            
        end
        
        function reduce(self)
        % Reduce self (e.g., 14/6 --> 7/3)
            %%%% write your code below %%%%
            if self.num ==0 
            elseif isinf(self.num)
            else
                if self.num>self.denom
                    b = self.num;
                    a = self.denom;
                    r = rem(b,a); 
                        while r ~=0
                            b = a;
                            a = r;
                            r = rem(b,a);                           
                        end
                            self.num = self.num/a;
                            self.denom = self.denom/a;
                            
                elseif self.denom>self.num 
                    b = self.denom;
                    a = self.num;
                    r = rem(b,a); 
                        while r ~=0
                            b = a;
                            a = r;
                            r = rem(b,a);
                        end
                            self.num = self.num/a;
                            self.denom = self.denom/a;
                    end
                end
            end
        
                function disp(self)
         % Display self, a Fraction, in this format: numerator/denominator
                  fprintf('%d/%d\n', self.num, self.denom)
                  end
        
    end %methods
    
end %classdef
