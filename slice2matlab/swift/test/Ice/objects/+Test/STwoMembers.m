
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef STwoMembers
    properties
        e1
        e2
    end
    methods
        function obj = STwoMembers(e1, e2)
            if nargin == 0
                obj.e1 = [];
                obj.e2 = [];
            elseif ne(e1, IceInternal.NoInit.Instance)
                obj.e1 = e1;
                obj.e2 = e2;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.e1 = obj.e1.value;
            obj.e2 = obj.e2.value;
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.STwoMembers(IceInternal.NoInit.Instance);
            e1_ = IceInternal.ValueHolder();
            r.e1 = e1_;
            is.readValue(@(v_) e1_.set(v_), 'Test.Empty');
            e2_ = IceInternal.ValueHolder();
            r.e2 = e2_;
            is.readValue(@(v_) e2_.set(v_), 'Test.Empty');
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.STwoMembers();
            end
            os.writeValue(v.e1);
            os.writeValue(v.e2);
        end
    end
end
