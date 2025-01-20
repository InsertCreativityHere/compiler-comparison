% BoxedDistributionDescriptor   Summary of BoxedDistributionDescriptor
%
% A "boxed" distribution descriptor.
%
% BoxedDistributionDescriptor Properties:
%   value - The value of the boxed distribution descriptor.

% Copyright (c) ZeroC, Inc.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef BoxedDistributionDescriptor < Ice.Value
    properties
        % value - The value of the boxed distribution descriptor.
        value IceGrid.DistributionDescriptor
    end
    methods
        function obj = BoxedDistributionDescriptor(value)
            if nargin == 0
                obj.value = IceGrid.DistributionDescriptor();
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
            os.startSlice('::IceGrid::BoxedDistributionDescriptor', -1, true);
            IceGrid.DistributionDescriptor.ice_write(os, obj.value);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.value = IceGrid.DistributionDescriptor.ice_read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::BoxedDistributionDescriptor';
        end
    end
end
