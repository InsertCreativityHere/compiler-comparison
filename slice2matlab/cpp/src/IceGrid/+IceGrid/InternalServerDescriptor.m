% InternalServerDescriptor   Summary of InternalServerDescriptor
%
% InternalServerDescriptor Properties:
%   id - The server ID.
%   application - The server application
%   uuid - The application uuid.
%   revision - The application revision.
%   sessionId - The id of the session which allocated the server.
%   exe - The server executable.
%   pwd - The server working directory.
%   user - The user ID to use to run the server.
%   activation - The server activation mode.
%   activationTimeout - The server activation timeout.
%   deactivationTimeout - The server deactivation timeout.
%   applicationDistrib - Specifies if the server depends on the application distrib.
%   distrib - The distribution descriptor of this server.
%   processRegistered - Specifies if a process object is registered.
%   options - The server command line options.
%   envs - The server environment variables.
%   logs - The path of the server logs.
%   adapters - The indirect object adapters.
%   dbEnvs - The database environments.
%   properties_ - The configuration files of the server.
%   services - IceBox service names

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.7.9

classdef InternalServerDescriptor < Ice.Value
    properties
        % id - The server ID.
        id char
        % application - The server application
        application char
        % uuid - The application uuid.
        uuid char
        % revision - The application revision.
        revision int32
        % sessionId - The id of the session which allocated the server.
        sessionId char
        % exe - The server executable.
        exe char
        % pwd - The server working directory.
        pwd char
        % user - The user ID to use to run the server.
        user char
        % activation - The server activation mode.
        activation char
        % activationTimeout - The server activation timeout.
        activationTimeout char
        % deactivationTimeout - The server deactivation timeout.
        deactivationTimeout char
        % applicationDistrib - Specifies if the server depends on the application distrib.
        applicationDistrib logical
        % distrib - The distribution descriptor of this server.
        distrib
        % processRegistered - Specifies if a process object is registered.
        processRegistered logical
        % options - The server command line options.
        options
        % envs - The server environment variables.
        envs
        % logs - The path of the server logs.
        logs
        % adapters - The indirect object adapters.
        adapters
        % dbEnvs - The database environments.
        dbEnvs
        % properties_ - The configuration files of the server.
        properties_ containers.Map
        % services - IceBox service names
        services
    end
    methods
        function obj = InternalServerDescriptor(id, application, uuid, revision, sessionId, exe, pwd, user, activation, activationTimeout, deactivationTimeout, applicationDistrib, distrib, processRegistered, options, envs, logs, adapters, dbEnvs, properties_, services)
            if nargin == 0
                obj.id = '';
                obj.application = '';
                obj.uuid = '';
                obj.revision = 0;
                obj.sessionId = '';
                obj.exe = '';
                obj.pwd = '';
                obj.user = '';
                obj.activation = '';
                obj.activationTimeout = '';
                obj.deactivationTimeout = '';
                obj.applicationDistrib = false;
                obj.distrib = [];
                obj.processRegistered = false;
                obj.options = [];
                obj.envs = [];
                obj.logs = [];
                obj.adapters = [];
                obj.dbEnvs = [];
                obj.properties_ = containers.Map('KeyType', 'char', 'ValueType', 'any');
                obj.services = IceInternal.UnsetI.Instance;
            elseif ne(id, IceInternal.NoInit.Instance)
                obj.id = id;
                obj.application = application;
                obj.uuid = uuid;
                obj.revision = revision;
                obj.sessionId = sessionId;
                obj.exe = exe;
                obj.pwd = pwd;
                obj.user = user;
                obj.activation = activation;
                obj.activationTimeout = activationTimeout;
                obj.deactivationTimeout = deactivationTimeout;
                obj.applicationDistrib = applicationDistrib;
                obj.distrib = distrib;
                obj.processRegistered = processRegistered;
                obj.options = options;
                obj.envs = envs;
                obj.logs = logs;
                obj.adapters = adapters;
                obj.dbEnvs = dbEnvs;
                obj.properties_ = properties_;
                obj.services = services;
            end;
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
            obj.adapters = IceGrid.InternalAdapterDescriptorSeq.convert(obj.adapters);
            obj.dbEnvs = IceGrid.InternalDbEnvDescriptorSeq.convert(obj.dbEnvs);
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::InternalServerDescriptor', -1, true);
            os.writeString(obj.id);
            os.writeString(obj.application);
            os.writeString(obj.uuid);
            os.writeInt(obj.revision);
            os.writeString(obj.sessionId);
            os.writeString(obj.exe);
            os.writeString(obj.pwd);
            os.writeString(obj.user);
            os.writeString(obj.activation);
            os.writeString(obj.activationTimeout);
            os.writeString(obj.deactivationTimeout);
            os.writeBool(obj.applicationDistrib);
            os.writeValue(obj.distrib);
            os.writeBool(obj.processRegistered);
            os.writeStringSeq(obj.options);
            os.writeStringSeq(obj.envs);
            os.writeStringSeq(obj.logs);
            IceGrid.InternalAdapterDescriptorSeq.write(os, obj.adapters);
            IceGrid.InternalDbEnvDescriptorSeq.write(os, obj.dbEnvs);
            IceGrid.PropertyDescriptorSeqDict.write(os, obj.properties_);
            os.writeStringSeqOpt(1, obj.services);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.id = is.readString();
            obj.application = is.readString();
            obj.uuid = is.readString();
            obj.revision = is.readInt();
            obj.sessionId = is.readString();
            obj.exe = is.readString();
            obj.pwd = is.readString();
            obj.user = is.readString();
            obj.activation = is.readString();
            obj.activationTimeout = is.readString();
            obj.deactivationTimeout = is.readString();
            obj.applicationDistrib = is.readBool();
            is.readValue(@obj.iceSetMember_distrib, 'IceGrid.InternalDistributionDescriptor');
            obj.processRegistered = is.readBool();
            obj.options = is.readStringSeq();
            obj.envs = is.readStringSeq();
            obj.logs = is.readStringSeq();
            obj.adapters = IceGrid.InternalAdapterDescriptorSeq.read(is);
            obj.dbEnvs = IceGrid.InternalDbEnvDescriptorSeq.read(is);
            obj.properties_ = IceGrid.PropertyDescriptorSeqDict.read(is);
            obj.services = is.readStringSeqOpt(1);
            is.endSlice();
        end
        function iceSetMember_distrib(obj, v)
            obj.distrib = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::InternalServerDescriptor';
        end
    end
end
