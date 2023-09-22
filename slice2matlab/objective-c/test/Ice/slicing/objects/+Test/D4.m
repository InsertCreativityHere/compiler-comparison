% D4   Summary of D4
%
% D4 Properties:
%   p1
%   p2

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from SlicingObjectsTestServer.ice by slice2matlab version 3.7.10

classdef D4 < Test.B
    properties
        p1
        p2
    end
    methods
        function obj = D4(sb, pb, p1, p2)
            if nargin == 0
                sb = '';
                pb = [];
                p1 = [];
                p2 = [];
                v = { sb, pb };
            elseif eq(sb, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [] };
            else
                v = { sb, pb };
            end;
            obj = obj@Test.B(v{:});
            if ne(sb, IceInternal.NoInit.Instance)
                obj.p1 = p1;
                obj.p2 = p2;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::D4', -1, false);
            os.writeValue(obj.p1);
            os.writeValue(obj.p2);
            os.endSlice();
            iceWriteImpl@Test.B(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_p1, 'Test.B');
            is.readValue(@obj.iceSetMember_p2, 'Test.B');
            is.endSlice();
            iceReadImpl@Test.B(obj, is);
        end
        function iceSetMember_p1(obj, v)
            obj.p1 = v;
        end
        function iceSetMember_p2(obj, v)
            obj.p2 = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::D4';
        end
    end
end
