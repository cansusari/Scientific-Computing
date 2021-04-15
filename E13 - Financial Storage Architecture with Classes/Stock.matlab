%Cansu Sari

classdef Stock < Asset
    properties
        num_shares
        share_price
    end
    
    methods
        function s = Stock(varargin)        
            if nargin == 0
                s.descriptor = 'Undefined';
                s.current_value = 0;
                s.owner = Customer();
                s.num_shares = 0;
                s.share_price = 0;
            elseif nargin == 4
                s.descriptor = 'Undefined';
                s.current_value = 0;
                s.owner = Customer();
                for k = 1:2
                if ischar(varargin{k})
                    s.descriptor = varargin{k};
                elseif isnumeric(varargin{k})
                    s.current_value = varargin{k};
                elseif isobject(varargin{k})
                    s.owner = varargin{k};
                end
                end
                s.num_shares = varargin{3};
                s.share_price = varargin{4};
            elseif nargin == 5
                for k = 1:3
                if ischar(varargin{k})
                    s.descriptor = varargin{k};
                elseif isnumeric(varargin{k})
                    s.current_value = varargin{k};
                elseif isobject(varargin{k})
                    s.owner = varargin{k};
                end
                end           
                s.num_shares = varargin{4};
                s.share_price = varargin{5};
            end
 
        end
        
        function disp(s)
            fprintf('Checking information for asset...\n');
            fprintf('%s current value: %.2f\n',s.descriptor,s.current_value);
            fprintf('%s owner information\n', s.descriptor);
            disp(s.owner);            
            fprintf('Stock Information\n');
            fprintf('Number of Shares: %.2f\n', s.num_shares);
            fprintf('Price of Shares: %.2f\n', s.share_price);
        end
    end
end

            
            