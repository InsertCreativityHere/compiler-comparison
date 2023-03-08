% B1   Summary of B1
%
% B1 Properties:
%   a1
%   a2

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef B1 < Ice.Value
    properties
        a1
        a2
    end
    methods
        function obj = B1(a1, a2)
            if nargin == 0
                obj.a1 = [];
                obj.a2 = [];
            elseif ne(a1, IceInternal.NoInit.Instance)
                obj.a1 = a1;
                obj.a2 = a2;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::B1', -1, true);
            os.writeValue(obj.a1);
            os.writeValue(obj.a2);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_a1, 'Test.A1');
            is.readValue(@obj.iceSetMember_a2, 'Test.A1');
            is.endSlice();
        end
        function iceSetMember_a1(obj, v)
            obj.a1 = v;
        end
        function iceSetMember_a2(obj, v)
            obj.a2 = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::B1';
        end
    end
end
