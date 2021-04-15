%Cansu Sari

classdef Customer<handle
    properties
        name
        surname
        ID
    end
    
    methods
        function c = Customer(varargin)
            c.name = '';
            c.surname = '';
            c.ID = '';
            if nargin == 3
                if ischar(varargin{1})
                    c.name = varargin{1};
                else
                    c.ID = varargin{1};
                end
                if ischar(varargin{1}) == 0 && ischar(varargin{2})
                    c.name = varargin{2};
                elseif (ischar(varargin{1}) == 1) && ischar(varargin{2})
                    c.surname = varargin{2};
                else 
                    c.ID = varargin{2};
                end
                if ischar(varargin{3})
                    c.surname = varargin{3};
                else
                    c.ID = varargin{3};
                end
            elseif nargin == 2
                if ischar(varargin{1})
                    c.name = varargin{1};
                else
                    c.ID = varargin{1};
                end
                if ischar(varargin{1}) == 0 && ischar(varargin{2})
                    c.name = varargin{2};
                elseif (ischar(varargin{1}) == 1) && ischar(varargin{2})
                    c.surname = varargin{2};
                else 
                    c.ID = varargin{2};
                end
            elseif nargin == 1
                if ischar(varargin{1})
                    c.name = varargin{1};
                else
                    c.ID = varargin{1};
                end
            end              
        end
        
        function disp(c)
            fprintf('Full name of the customer is %s %s.\n',c.name,c.surname);
        end
    end
end

            

                    
                
                
                
            