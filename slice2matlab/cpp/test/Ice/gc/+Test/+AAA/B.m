% B   Summary of B
%
% B Properties:
%   obj1
%   obj2
%   c1
%   c2
%   x
%   y
%   z

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef B < Ice.Value
    properties
        obj1
        obj2
        c1
        c2
        x
        y containers.Map
        z Test.AAA.CStruct
    end
    methods
        function obj = B(obj1, obj2, c1, c2, x, y, z)
            if nargin == 0
                obj.obj1 = [];
                obj.obj2 = [];
                obj.c1 = [];
                obj.c2 = [];
                obj.x = [];
                obj.y = containers.Map('KeyType', 'int32', 'ValueType', 'any');
                obj.z = Test.AAA.CStruct();
            elseif ne(obj1, IceInternal.NoInit.Instance)
                obj.obj1 = obj1;
                obj.obj2 = obj2;
                obj.c1 = c1;
                obj.c2 = c2;
                obj.x = x;
                obj.y = y;
                obj.z = z;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Hidden=true)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            obj.x = Test.AAA.CSeq.convert(obj.x);
            obj.y = Test.AAA.CDict.convert(obj.y);
            obj.z = obj.z.ice_convert();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::AAA::B', -1, true);
            os.writeValue(obj.obj1);
            os.writeValue(obj.obj2);
            os.writeValue(obj.c1);
            os.writeValue(obj.c2);
            Test.AAA.CSeq.write(os, obj.x);
            Test.AAA.CDict.write(os, obj.y);
            Test.AAA.CStruct.ice_write(os, obj.z);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_obj1, 'Ice.Value');
            is.readValue(@obj.iceSetMember_obj2, 'Ice.Value');
            is.readValue(@obj.iceSetMember_c1, 'Test.AAA.C');
            is.readValue(@obj.iceSetMember_c2, 'Test.AAA.C');
            obj.x = Test.AAA.CSeq.read(is);
            obj.y = Test.AAA.CDict.read(is);
            obj.z = Test.AAA.CStruct.ice_read(is);
            is.endSlice();
        end
        function iceSetMember_obj1(obj, v)
            obj.obj1 = v;
        end
        function iceSetMember_obj2(obj, v)
            obj.obj2 = v;
        end
        function iceSetMember_c1(obj, v)
            obj.c1 = v;
        end
        function iceSetMember_c2(obj, v)
            obj.c2 = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::AAA::B';
        end
    end
end
