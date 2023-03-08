% Node   Summary of Node
%
% Node Properties:
%   l
%   n

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef Node < Ice.Value
    properties
        l
        n
    end
    methods
        function obj = Node(l, n)
            if nargin == 0
                obj.l = [];
                obj.n = [];
            elseif ne(l, IceInternal.NoInit.Instance)
                obj.l = l;
                obj.n = n;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Node', -1, true);
            os.writeValue(obj.l);
            os.writeValue(obj.n);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_l, 'Test.Leaf');
            is.readValue(@obj.iceSetMember_n, 'Test.Node');
            is.endSlice();
        end
        function iceSetMember_l(obj, v)
            obj.l = v;
        end
        function iceSetMember_n(obj, v)
            obj.n = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Node';
        end
    end
end
