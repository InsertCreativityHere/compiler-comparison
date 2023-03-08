% K   Summary of K
%
% K Properties:
%   value

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef K < Ice.Value
    properties
        value
    end
    methods
        function obj = K(value)
            if nargin == 0
                obj.value = [];
            elseif ne(value, IceInternal.NoInit.Instance)
                obj.value = value;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::K', -1, true);
            os.writeValue(obj.value);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_value, 'Ice.Value');
            is.endSlice();
        end
        function iceSetMember_value(obj, v)
            obj.value = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::K';
        end
    end
end
