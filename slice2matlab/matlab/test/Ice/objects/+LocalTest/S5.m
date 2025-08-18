classdef (Sealed) S5
    %S5
    %
    %   Creation
    %     Syntax
    %       obj = LocalTest.S5()
    %       obj = LocalTest.S5(c1dict)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   S5 Properties:
    %     c1dict
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % C1DICT
        %   int32, cell) scalar
        c1dict (1, 1) = configureDictionary('int32', 'cell')
    end
    methods
        function obj = S5(c1dict)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.c1dict = c1dict;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.c1dict = LocalTest.C1Dict.convert(obj.c1dict);
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = LocalTest.S5();
            r.c1dict = LocalTest.C1Dict.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = LocalTest.S5();
            end
            LocalTest.C1Dict.write(os, v.c1dict);
        end
    end
end
