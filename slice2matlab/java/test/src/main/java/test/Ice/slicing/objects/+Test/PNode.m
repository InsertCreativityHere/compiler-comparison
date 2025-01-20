
% Copyright (c) ZeroC, Inc.
% Generated from ServerPrivateAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef PNode < Ice.Value
    properties
        next
    end
    methods
        function obj = PNode(next)
            if nargin == 0
                obj.next = [];
            elseif ne(next, IceInternal.NoInit.Instance)
                obj.next = next;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::PNode', -1, true);
            os.writeValue(obj.next);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_next, 'Test.PNode');
            is.endSlice();
        end
        function iceSetMember_next(obj, v)
            obj.next = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::PNode';
        end
    end
end
