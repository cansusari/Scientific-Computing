%Cansu Sari

classdef Asset<handle 
    properties (Access=protected)
        descriptor
        current_value
        owner
    end    
    methods
        function a = Asset(varargin)
            if nargin >= 3
                for k = 1:3
                if ischar(varargin{k})
                    a.descriptor = varargin{k};
                elseif isnumeric(varargin{k})
                    a.current_value = varargin{k};
                elseif isobject(varargin{k})
                    a.owner = varargin{k};
                end
                end               
            elseif nargin >= 2
                for k = 1:2
                if ischar(varargin{k})
                    a.descriptor = varargin{k};
                elseif isnumeric(varargin{k})
                    a.current_value = varargin{k};
                elseif isobject(varargin{k})
                    a.owner = varargin{k};
                end
                end 
            elseif nargin >= 1
                if ischar(varargin{1})
                    a.descriptor = varargin{1};
                elseif isnumeric(varargin{1})
                    a.current_value = varargin{1};
                elseif isobject(varargin{1})
                    a.owner = varargin{1};
                end
            elseif nargin == 0
                a.descriptor = 'Undefined';
                a.current_value = 0;
                a.owner = Customer();
            end
        end
 
                
        function disp(a)
            fprintf('Checking information for asset...\n');
            fprintf('%s current value: %.2f\n',a.descriptor,a.current_value);
            fprintf('%s owner information\n', a.descriptor);
            disp(a.owner);
        end
    end
end
        

        