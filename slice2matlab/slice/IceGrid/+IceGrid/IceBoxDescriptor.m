classdef IceBoxDescriptor < IceGrid.ServerDescriptor
    %ICEBOXDESCRIPTOR Describes an IceBox server.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.IceBoxDescriptor()
    %       obj = IceGrid.IceBoxDescriptor(services)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   IceBoxDescriptor Properties:
    %     services - The service instances.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SERVICES The service instances.
        %   IceGrid.ServiceInstanceDescriptor vector
        services (1, :) = {}
    end
    methods
        function obj = IceBoxDescriptor(adapters, propertySet, logs, description, id, exe, iceVersion, pwd, options, envs, activation, activationTimeout, deactivationTimeout, applicationDistrib, distrib, allocatable, user, services)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 18, 'Invalid number of arguments');
                superArgs = {adapters, propertySet, logs, description, id, exe, iceVersion, pwd, options, envs, activation, activationTimeout, deactivationTimeout, applicationDistrib, distrib, allocatable, user};
            end
            obj = obj@IceGrid.ServerDescriptor(superArgs{:});
            if nargin > 0
                obj.services = services;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Hidden)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            obj.services = IceGrid.ServiceInstanceDescriptorSeq.convert(obj.services);
            icePostUnmarshal@IceGrid.ServerDescriptor(obj);
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::IceBoxDescriptor', -1, false);
            IceGrid.ServiceInstanceDescriptorSeq.write(os, obj.services);
            os.endSlice();
            iceWriteImpl@IceGrid.ServerDescriptor(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.services = IceGrid.ServiceInstanceDescriptorSeq.read(is);
            is.endSlice();
            iceReadImpl@IceGrid.ServerDescriptor(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::IceBoxDescriptor';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::IceBoxDescriptor'
    end
end
