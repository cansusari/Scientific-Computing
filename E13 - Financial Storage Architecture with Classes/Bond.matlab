%Cansu Sari

classdef Bond<Asset
    properties
        int_rate
    end
    
    methods
        function b = Bond(varargin)       
                if nargin == 0
                    b.descriptor = 'Undefined';
                    b.current_value = 0;
                    b.owner = Customer();
                    b.int_rate = 0;
            elseif nargin == 3
                for k = 1:2
                    if ischar(varargin{k})
                        b.descriptor = varargin{k};
                    elseif isnumeric(varargin{k})
                        b.current_value = varargin{k};
                    elseif isobject(varargin{k})
                        b.owner = varargin{k};
                    end
                    end 
                b.int_rate = varargin{3};
            elseif nargin == 4
                for k = 1:3
                if ischar(varargin{k})
                    b.descriptor = varargin{k};
                elseif isnumeric(varargin{k})
                    b.current_value = varargin{k};
                elseif isobject(varargin{k})
                    b.owner = varargin{k};
                end
                end   
                b.int_rate = varargin{4};  
            end
        end
        
        function disp(b)
            fprintf('Checking information for asset...\n');
            fprintf('%s current value: %.2f\n',b.descriptor,b.current_value);
            fprintf('%s owner information\n', b.descriptor);
            disp(b.owner);            
            fprintf('Bond Information\n');
            fprintf('Interest Rate: %.2f\n',b.int_rate);
        end
    end
end