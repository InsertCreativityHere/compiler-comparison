classdef BoxedDistributionDescriptor < Ice.Value
    %BOXEDDISTRIBUTIONDESCRIPTOR A "boxed" distribution descriptor.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.BoxedDistributionDescriptor()
    %       obj = IceGrid.BoxedDistributionDescriptor(value)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   BoxedDistributionDescriptor Properties:
    %     value - The value of the boxed distribution descriptor.
    %
    %   Deprecated
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % VALUE The value of the boxed distribution descriptor.
        %   IceGrid.DistributionDescriptor scalar
        value IceGrid.DistributionDescriptor {mustBeScalarOrEmpty} = IceGrid.DistributionDescriptor.empty
    end
    methods
        function obj = BoxedDistributionDescriptor(value)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.value = value;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
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
    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::BoxedDistributionDescriptor';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::BoxedDistributionDescriptor'
    end
end
