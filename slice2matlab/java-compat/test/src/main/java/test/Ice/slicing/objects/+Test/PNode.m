% PNode   Summary of PNode
%
% PNode Properties:
%   next

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.7.9

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
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
        function r = ice_getSlicedData(obj)
            r = obj.iceSlicedData_;
        end
    end
    methods(Hidden=true)
        function iceWrite(obj, os)
            os.startValue(obj.iceSlicedData_);
            obj.iceWriteImpl(os);
            os.endValue();
        end
        function iceRead(obj, is)
            is.startValue();
            obj.iceReadImpl(is);
            obj.iceSlicedData_ = is.endValue(true);
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
    properties(Access=protected)
        iceSlicedData_
    end
end
