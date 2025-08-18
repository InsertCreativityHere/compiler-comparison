classdef (Sealed) S6
    %S6
    %
    %   Creation
    %     Syntax
    %       obj = LocalTest.S6()
    %       obj = LocalTest.S6(s1dict)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   S6 Properties:
    %     s1dict
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S1DICT
        %   int32, LocalTest.S1) scalar
        s1dict (1, 1) = configureDictionary('int32', 'LocalTest.S1')
    end
    methods
        function obj = S6(s1dict)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.s1dict = s1dict;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.s1dict = LocalTest.S1Dict.convert(obj.s1dict);
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = LocalTest.S6();
            r.s1dict = LocalTest.S1Dict.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = LocalTest.S6();
            end
            LocalTest.S1Dict.write(os, v.s1dict);
        end
    end
end
