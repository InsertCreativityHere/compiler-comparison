% MyClass   Summary of MyClass
%
% MyClass Properties:
%   c
%   o
%   s

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef MyClass < Test.Base
    properties
        c
        o
        s Test.ValStruct
    end
    methods
        function obj = MyClass(bo, by, sh, i, l, e, c, o, s)
            if nargin == 0
                bo = false;
                by = 0;
                sh = 0;
                i = 0;
                l = 0;
                e = Test.MyEnum.enum1;
                c = [];
                o = [];
                s = Test.ValStruct();
                v = { bo, by, sh, i, l, e };
            elseif eq(bo, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [], [], [] };
            else
                v = { bo, by, sh, i, l, e };
            end;
            obj = obj@Test.Base(v{:});
            if ne(bo, IceInternal.NoInit.Instance)
                obj.c = c;
                obj.o = o;
                obj.s = s;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::MyClass', -1, false);
            os.writeValue(obj.c);
            os.writeValue(obj.o);
            Test.ValStruct.ice_write(os, obj.s);
            os.endSlice();
            iceWriteImpl@Test.Base(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_c, 'Test.MyClass');
            is.readValue(@obj.iceSetMember_o, 'Ice.Value');
            obj.s = Test.ValStruct.ice_read(is);
            is.endSlice();
            iceReadImpl@Test.Base(obj, is);
        end
        function iceSetMember_c(obj, v)
            obj.c = v;
        end
        function iceSetMember_o(obj, v)
            obj.o = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MyClass';
        end
    end
end
