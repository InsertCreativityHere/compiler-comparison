% ServerDescriptor   Summary of ServerDescriptor
%
% An Ice server descriptor.
%
% ServerDescriptor Properties:
%   id - The server id.
%   exe - The path of the server executable.
%   iceVersion - The Ice version used by this server.
%   pwd - The path to the server working directory.
%   options - The command line options to pass to the server executable.
%   envs - The server environment variables.
%   activation - / The server activation mode (possible values are "on-demand" or "manual").
%   activationTimeout - The activation timeout (an integer value representing the number of seconds to wait for activation).
%   deactivationTimeout - The deactivation timeout (an integer value representing the number of seconds to wait for deactivation).
%   applicationDistrib - Specifies if the server depends on the application distribution.
%   distrib - The distribution descriptor.
%   allocatable - Specifies if the server is allocatable.
%   user - The user account used to run the server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef ServerDescriptor < IceGrid.CommunicatorDescriptor
    properties
        % id - The server id.
        id char
        % exe - The path of the server executable.
        exe char
        % iceVersion - The Ice version used by this server. This is only required if backward compatibility with servers using old
        % Ice versions is needed (otherwise the registry will assume the server is using the same Ice version).
        % For example "3.1.1", "3.2", "3.3.0".
        iceVersion char
        % pwd - The path to the server working directory.
        pwd char
        % options - The command line options to pass to the server executable.
        options
        % envs - The server environment variables.
        envs
        % activation - / The server activation mode (possible values are "on-demand" or "manual").
        activation char
        % activationTimeout - The activation timeout (an integer value representing the number of seconds to wait for activation).
        activationTimeout char
        % deactivationTimeout - The deactivation timeout (an integer value representing the number of seconds to wait for deactivation).
        deactivationTimeout char
        % applicationDistrib - Specifies if the server depends on the application distribution.
        applicationDistrib logical
        % distrib - The distribution descriptor.
        distrib IceGrid.DistributionDescriptor
        % allocatable - Specifies if the server is allocatable.
        allocatable logical
        % user - The user account used to run the server.
        user char
    end
    methods
        function obj = ServerDescriptor(adapters, propertySet, logs, description, id, exe, iceVersion, pwd, options, envs, activation, activationTimeout, deactivationTimeout, applicationDistrib, distrib, allocatable, user)
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
                v = { adapters, propertySet, logs, description };
            elseif eq(adapters, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [] };
            else
                v = { adapters, propertySet, logs, description };
            end;
            obj = obj@IceGrid.CommunicatorDescriptor(v{:});
            if ne(adapters, IceInternal.NoInit.Instance)
                obj.id = id;
                obj.exe = exe;
                obj.iceVersion = iceVersion;
                obj.pwd = pwd;
                obj.options = options;
                obj.envs = envs;
                obj.activation = activation;
                obj.activationTimeout = activationTimeout;
                obj.deactivationTimeout = deactivationTimeout;
                obj.applicationDistrib = applicationDistrib;
                obj.distrib = distrib;
                obj.allocatable = allocatable;
                obj.user = user;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::ServerDescriptor', -1, false);
            os.writeString(obj.id);
            os.writeString(obj.exe);
            os.writeString(obj.iceVersion);
            os.writeString(obj.pwd);
            os.writeStringSeq(obj.options);
            os.writeStringSeq(obj.envs);
            os.writeString(obj.activation);
            os.writeString(obj.activationTimeout);
            os.writeString(obj.deactivationTimeout);
            os.writeBool(obj.applicationDistrib);
            IceGrid.DistributionDescriptor.ice_write(os, obj.distrib);
            os.writeBool(obj.allocatable);
            os.writeString(obj.user);
            os.endSlice();
            iceWriteImpl@IceGrid.CommunicatorDescriptor(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.id = is.readString();
            obj.exe = is.readString();
            obj.iceVersion = is.readString();
            obj.pwd = is.readString();
            obj.options = is.readStringSeq();
            obj.envs = is.readStringSeq();
            obj.activation = is.readString();
            obj.activationTimeout = is.readString();
            obj.deactivationTimeout = is.readString();
            obj.applicationDistrib = is.readBool();
            obj.distrib = IceGrid.DistributionDescriptor.ice_read(is);
            obj.allocatable = is.readBool();
            obj.user = is.readString();
            is.endSlice();
            iceReadImpl@IceGrid.CommunicatorDescriptor(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::ServerDescriptor';
        end
    end
end
