
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MyClass < Ice.Value
    properties
        s Test.Inner.Inner2.MyStruct
    end
    methods
        function obj = MyClass(s)
            if nargin == 0
                obj.s = Test.Inner.Inner2.MyStruct();
            elseif ne(s, IceInternal.NoInit.Instance)
                obj.s = s;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Inner::Inner2::MyClass', -1, true);
            Test.Inner.Inner2.MyStruct.ice_write(os, obj.s);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s = Test.Inner.Inner2.MyStruct.ice_read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Inner::Inner2::MyClass';
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::Test::Inner::Inner2::MyClass'
    end
end
