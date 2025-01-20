
% Copyright (c) ZeroC, Inc.
% Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

classdef S2
    properties
        s1 LocalTest.S1
    end
    methods
        function obj = S2(s1)
            if nargin == 0
                obj.s1 = LocalTest.S1();
            elseif ne(s1, IceInternal.NoInit.Instance)
                obj.s1 = s1;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.s1 = obj.s1.ice_convert();
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = LocalTest.S2(IceInternal.NoInit.Instance);
            r.s1 = LocalTest.S1.ice_read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = LocalTest.S2();
            end
            LocalTest.S1.ice_write(os, v.s1);
        end
    end
end
