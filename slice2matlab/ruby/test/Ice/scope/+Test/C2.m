
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef C2 < Ice.Value
    properties
        e1 Test.MyEnum
        s1 Test.MyOtherStruct
        c1
    end
    methods
        function obj = C2(e1, s1, c1)
            if nargin == 0
                obj.e1 = Test.MyEnum.v1;
                obj.s1 = Test.MyOtherStruct();
                obj.c1 = [];
            elseif ne(e1, IceInternal.NoInit.Instance)
                obj.e1 = e1;
                obj.s1 = s1;
                obj.c1 = c1;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::C2', -1, true);
            Test.MyEnum.ice_write(os, obj.e1);
            Test.MyOtherStruct.ice_write(os, obj.s1);
            os.writeValue(obj.c1);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.e1 = Test.MyEnum.ice_read(is);
            obj.s1 = Test.MyOtherStruct.ice_read(is);
            is.readValue(@obj.iceSetMember_c1, 'Test.MyOtherClass');
            is.endSlice();
        end
        function iceSetMember_c1(obj, v)
            obj.c1 = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::C2';
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::Test::C2'
    end
end
