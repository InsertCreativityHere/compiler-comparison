
% Copyright (c) ZeroC, Inc.
% Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

classdef S5
    properties
        c1dict containers.Map
    end
    methods
        function obj = S5(c1dict)
            if nargin == 0
                obj.c1dict = containers.Map('KeyType', 'int32', 'ValueType', 'any');
            elseif ne(c1dict, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = LocalTest.S5(IceInternal.NoInit.Instance);
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
