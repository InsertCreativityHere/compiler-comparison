classdef InternalServerDescriptor < Ice.Value
    %INTERNALSERVERDESCRIPTOR
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.InternalServerDescriptor()
    %       obj = IceGrid.InternalServerDescriptor(id, application, uuid, revision, sessionId, exe, pwd, user, activation, activationTimeout, deactivationTimeout, processRegistered, options, envs, logs, adapters, dbEnvs, properties, services)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   InternalServerDescriptor Properties:
    %     id - The server ID.
    %     application - The server application
    %     uuid - The application uuid.
    %     revision - The application revision.
    %     sessionId - The id of the session which allocated the server.
    %     exe - The server executable.
    %     pwd - The server working directory.
    %     user - The user ID to use to run the server.
    %     activation - The server activation mode.
    %     activationTimeout - The server activation timeout.
    %     deactivationTimeout - The server deactivation timeout.
    %     processRegistered - Specifies if a process object is registered.
    %     options - The server command line options.
    %     envs - The server environment variables.
    %     logs - The path of the server logs.
    %     adapters - The indirect object adapters.
    %     dbEnvs
    %     properties - The configuration files of the server.
    %     services - IceBox service names
    %
    %   Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The server ID.
        %   character vector
        id (1, :) char
        
        % APPLICATION The server application
        %   character vector
        application (1, :) char
        
        % UUID The application uuid.
        %   character vector
        uuid (1, :) char
        
        % REVISION The application revision.
        %   int32 scalar
        revision (1, 1) int32
        
        % SESSIONID The id of the session which allocated the server.
        %   character vector
        sessionId (1, :) char
        
        % EXE The server executable.
        %   character vector
        exe (1, :) char
        
        % PWD The server working directory.
        %   character vector
        pwd (1, :) char
        
        % USER The user ID to use to run the server.
        %   character vector
        user (1, :) char
        
        % ACTIVATION The server activation mode.
        %   character vector
        activation (1, :) char
        
        % ACTIVATIONTIMEOUT The server activation timeout.
        %   character vector
        activationTimeout (1, :) char
        
        % DEACTIVATIONTIMEOUT The server deactivation timeout.
        %   character vector
        deactivationTimeout (1, :) char
        
        % PROCESSREGISTERED Specifies if a process object is registered.
        %   logical scalar
        processRegistered (1, 1) logical
        
        % OPTIONS The server command line options.
        %   string vector
        options (1, :) char
        
        % ENVS The server environment variables.
        %   string vector
        envs (1, :) char
        
        % LOGS The path of the server logs.
        %   string vector
        logs (1, :) char
        
        % ADAPTERS The indirect object adapters.
        %   cell array
        adapters (1, :) = {}
        
        % DBENVS
        %   cell array
        dbEnvs (1, :) = {}
        
        % PROPERTIES The configuration files of the server.
        %   string, cell) scalar
        properties (1, 1) dictionary = configureDictionary('char', 'cell')
        
        % SERVICES IceBox service names
        %   string vector | Ice.Unset
        services (1, :) = IceInternal.UnsetI.Instance
    end
    methods
        function obj = InternalServerDescriptor(id, application, uuid, revision, sessionId, exe, pwd, user, activation, activationTimeout, deactivationTimeout, processRegistered, options, envs, logs, adapters, dbEnvs, properties, services)
            if nargin > 0
                assert(nargin == 19, 'Invalid number of arguments');
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
                obj.processRegistered = processRegistered;
                obj.options = options;
                obj.envs = envs;
                obj.logs = logs;
                obj.adapters = adapters;
                obj.dbEnvs = dbEnvs;
                obj.properties = properties;
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
            obj.adapters = IceGrid.InternalAdapterDescriptorSeq.convert(obj.adapters);
            obj.dbEnvs = IceGrid.InternalDbEnvDescriptorSeq.convert(obj.dbEnvs);
        end
    end
    methods (Access = protected)
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
            os.writeBool(obj.processRegistered);
            os.writeStringSeq(obj.options);
            os.writeStringSeq(obj.envs);
            os.writeStringSeq(obj.logs);
            IceGrid.InternalAdapterDescriptorSeq.write(os, obj.adapters);
            IceGrid.InternalDbEnvDescriptorSeq.write(os, obj.dbEnvs);
            IceGrid.PropertyDescriptorSeqDict.write(os, obj.properties);
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
            obj.processRegistered = is.readBool();
            obj.options = is.readStringSeq();
            obj.envs = is.readStringSeq();
            obj.logs = is.readStringSeq();
            obj.adapters = IceGrid.InternalAdapterDescriptorSeq.read(is);
            obj.dbEnvs = IceGrid.InternalDbEnvDescriptorSeq.read(is);
            obj.properties = IceGrid.PropertyDescriptorSeqDict.read(is);
            obj.services = is.readStringSeqOpt(1);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::InternalServerDescriptor';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::InternalServerDescriptor'
    end
end
