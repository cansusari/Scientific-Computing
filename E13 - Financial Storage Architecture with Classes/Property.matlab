%Cansu Sari

classdef Property<Asset
    properties
        mort_rate
    end
    
    methods
        function p = Property(varargin)
            if nargin == 0
                p.descriptor = 'Undefined';
                p.current_value = 0;
                p.owner = Customer();
                p.mort_rate = 0;
            else
                for k = 1:3
                if ischar(varargin{k})
                    p.descriptor = varargin{k};
                elseif isnumeric(varargin{k})
                    p.current_value = varargin{k};
                elseif isobject(varargin{k})
                    p.owner = varargin{k};
                end
                end                   
                p.mort_rate = varargin{4};
            end
        end
        
        function disp(p)
            fprintf('Checking information for asset...\n');
            fprintf('%s current value: %.2f\n',p.descriptor,p.current_value);
            fprintf('%s owner information\n', p.descriptor);
            disp(p.owner);            
            fprintf('Property Information\n');
            fprintf('Mortgage Rate: %.2f\n',p.mort_rate);
        end
    end
end
            
            