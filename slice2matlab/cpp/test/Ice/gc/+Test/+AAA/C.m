% C   Summary of C
%
% C Properties:
%   obj1
%   obj2
%   b1
%   b2
%   x
%   y
%   z

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef C < Ice.Value
    properties
        obj1
        obj2
        b1
        b2
        x
        y containers.Map
        z Test.AAA.BStruct
    end
    methods
        function obj = C(obj1, obj2, b1, b2, x, y, z)
            if nargin == 0
                obj.obj1 = [];
                obj.obj2 = [];
                obj.b1 = [];
                obj.b2 = [];
                obj.x = [];
                obj.y = containers.Map('KeyType', 'int32', 'ValueType', 'any');
                obj.z = Test.AAA.BStruct();
            elseif ne(obj1, IceInternal.NoInit.Instance)
                obj.obj1 = obj1;
                obj.obj2 = obj2;
                obj.b1 = b1;
                obj.b2 = b2;
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
            obj.x = Test.AAA.BSeq.convert(obj.x);
            obj.y = Test.AAA.BDict.convert(obj.y);
            obj.z = obj.z.ice_convert();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::AAA::C', -1, true);
            os.writeValue(obj.obj1);
            os.writeValue(obj.obj2);
            os.writeValue(obj.b1);
            os.writeValue(obj.b2);
            Test.AAA.BSeq.write(os, obj.x);
            Test.AAA.BDict.write(os, obj.y);
            Test.AAA.BStruct.ice_write(os, obj.z);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_obj1, 'Ice.Value');
            is.readValue(@obj.iceSetMember_obj2, 'Ice.Value');
            is.readValue(@obj.iceSetMember_b1, 'Test.AAA.B');
            is.readValue(@obj.iceSetMember_b2, 'Test.AAA.B');
            obj.x = Test.AAA.BSeq.read(is);
            obj.y = Test.AAA.BDict.read(is);
            obj.z = Test.AAA.BStruct.ice_read(is);
            is.endSlice();
        end
        function iceSetMember_obj1(obj, v)
            obj.obj1 = v;
        end
        function iceSetMember_obj2(obj, v)
            obj.obj2 = v;
        end
        function iceSetMember_b1(obj, v)
            obj.b1 = v;
        end
        function iceSetMember_b2(obj, v)
            obj.b2 = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::AAA::C';
        end
    end
end
