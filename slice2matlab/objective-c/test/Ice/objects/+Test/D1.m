% D1   Summary of D1
%
% D1 Properties:
%   a3
%   a4

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ObjectsTest.ice by slice2matlab version 3.7.9

classdef D1 < Test.B1
    properties
        a3
        a4
    end
    methods
        function obj = D1(a1, a2, a3, a4)
            if nargin == 0
                a1 = [];
                a2 = [];
                a3 = [];
                a4 = [];
                v = { a1, a2 };
            elseif eq(a1, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [] };
            else
                v = { a1, a2 };
            end;
            obj = obj@Test.B1(v{:});
            if ne(a1, IceInternal.NoInit.Instance)
                obj.a3 = a3;
                obj.a4 = a4;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::D1', -1, false);
            os.writeValue(obj.a3);
            os.writeValue(obj.a4);
            os.endSlice();
            iceWriteImpl@Test.B1(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_a3, 'Test.A1');
            is.readValue(@obj.iceSetMember_a4, 'Test.A1');
            is.endSlice();
            iceReadImpl@Test.B1(obj, is);
        end
        function iceSetMember_a3(obj, v)
            obj.a3 = v;
        end
        function iceSetMember_a4(obj, v)
            obj.a4 = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::D1';
        end
    end
end
