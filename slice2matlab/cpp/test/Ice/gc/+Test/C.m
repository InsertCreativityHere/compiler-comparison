% C   Summary of C
%
% C Properties:
%   left
%   right

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef C < Ice.Value
    properties
        left
        right
    end
    methods
        function obj = C(left, right)
            if nargin == 0
                obj.left = [];
                obj.right = [];
            elseif ne(left, IceInternal.NoInit.Instance)
                obj.left = left;
                obj.right = right;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::C', -1, true);
            os.writeValue(obj.left);
            os.writeValue(obj.right);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_left, 'Test.C');
            is.readValue(@obj.iceSetMember_right, 'Test.C');
            is.endSlice();
        end
        function iceSetMember_left(obj, v)
            obj.left = v;
        end
        function iceSetMember_right(obj, v)
            obj.right = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::C';
        end
    end
end
