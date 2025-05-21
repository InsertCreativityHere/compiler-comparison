
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MyClass < Ice.Value
    properties
        value int64
    end
    methods
        function obj = MyClass(value)
            if nargin == 0
                obj.value = 0;
            elseif ne(value, IceInternal.NoInit.Instance)
                obj.value = value;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Inner::MyClass', -1, true);
            os.writeLong(obj.value);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.value = is.readLong();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Inner::MyClass';
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::Inner::MyClass'
    end
end
