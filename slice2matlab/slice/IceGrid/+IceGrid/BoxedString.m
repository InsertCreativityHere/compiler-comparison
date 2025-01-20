% BoxedString   Summary of BoxedString
%
% A "boxed" string.
%
% BoxedString Properties:
%   value - The value of the boxed string.

% Copyright (c) ZeroC, Inc.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef BoxedString < Ice.Value
    properties
        % value - The value of the boxed string.
        value char
    end
    methods
        function obj = BoxedString(value)
            if nargin == 0
                obj.value = '';
            elseif ne(value, IceInternal.NoInit.Instance)
                obj.value = value;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::BoxedString', -1, true);
            os.writeString(obj.value);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.value = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::BoxedString';
        end
    end
end
