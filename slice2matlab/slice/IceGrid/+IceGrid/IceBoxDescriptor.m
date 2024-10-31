% IceBoxDescriptor   Summary of IceBoxDescriptor
%
% An IceBox server descriptor.
%
% IceBoxDescriptor Properties:
%   services - The service instances.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef IceBoxDescriptor < IceGrid.ServerDescriptor
    properties
        % services - The service instances.
        services
    end
    methods
        function obj = IceBoxDescriptor(adapters, propertySet, logs, description, id, exe, iceVersion, pwd, options, envs, activation, activationTimeout, deactivationTimeout, applicationDistrib, distrib, allocatable, user, services)
            if nargin == 0
                adapters = [];
                propertySet = IceGrid.PropertySetDescriptor();
                logs = [];
                description = '';
                id = '';
                exe = '';
                iceVersion = '';
                pwd = '';
                options = [];
                envs = [];
                activation = '';
                activationTimeout = '';
                deactivationTimeout = '';
                applicationDistrib = false;
                distrib = IceGrid.DistributionDescriptor();
                allocatable = false;
                user = '';
                services = [];
                v = { adapters, propertySet, logs, description, id, exe, iceVersion, pwd, options, envs, activation, activationTimeout, deactivationTimeout, applicationDistrib, distrib, allocatable, user };
            elseif eq(adapters, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [] };
            else
                v = { adapters, propertySet, logs, description, id, exe, iceVersion, pwd, options, envs, activation, activationTimeout, deactivationTimeout, applicationDistrib, distrib, allocatable, user };
            end
            obj = obj@IceGrid.ServerDescriptor(v{:});
            if ne(adapters, IceInternal.NoInit.Instance)
                obj.services = services;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Hidden=true)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            obj.services = IceGrid.ServiceInstanceDescriptorSeq.convert(obj.services);
            icePostUnmarshal@IceGrid.ServerDescriptor(obj);
        end
    end
    methods(Access=protected)
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
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::IceBoxDescriptor';
        end
    end
end
