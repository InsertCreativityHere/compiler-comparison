classdef ServerDescriptor < IceGrid.CommunicatorDescriptor
    %SERVERDESCRIPTOR Describes an Ice server.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.ServerDescriptor()
    %       obj = IceGrid.ServerDescriptor(id, exe, iceVersion, pwd, options, envs, activation, activationTimeout, deactivationTimeout, applicationDistrib, distrib, allocatable, user)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ServerDescriptor Properties:
    %     id - The server ID.
    %     exe - The path of the server executable.
    %     iceVersion - The Ice version used by this server.
    %     pwd - The path to the server working directory.
    %     options - The command line options to pass to the server executable.
    %     envs - The server environment variables.
    %     activation - / The server activation mode.
    %     activationTimeout - The activation timeout.
    %     deactivationTimeout - The deactivation timeout.
    %     applicationDistrib - Specifies if the server depends on the application distribution.
    %     distrib - The distribution descriptor.
    %     allocatable - Specifies if the server is allocatable.
    %     user - The user account used to run the server.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The server ID.
        %   character vector
        id (1, :) char
        
        % EXE The path of the server executable.
        %   character vector
        exe (1, :) char
        
        % ICEVERSION The Ice version used by this server. This is only required if backward compatibility with servers using old
        %   Ice versions is needed (otherwise the registry assumes the server is using the same Ice version as the
        %   registry itself). For example "3.7.5".
        %   character vector
        iceVersion (1, :) char
        
        % PWD The path to the server working directory.
        %   character vector
        pwd (1, :) char
        
        % OPTIONS The command line options to pass to the server executable.
        %   string vector
        options (1, :) char
        
        % ENVS The server environment variables.
        %   string vector
        envs (1, :) char
        
        % ACTIVATION / The server activation mode. Possible values are "on-demand" and "manual".
        %   character vector
        activation (1, :) char
        
        % ACTIVATIONTIMEOUT The activation timeout. It's an integer (in string format) that represents the number of seconds to wait for
        %   activation.
        %   character vector
        activationTimeout (1, :) char
        
        % DEACTIVATIONTIMEOUT The deactivation timeout. It's an integer (in string format) that represents the number of seconds to wait
        %   for deactivation.
        %   character vector
        deactivationTimeout (1, :) char
        
        % APPLICATIONDISTRIB Specifies if the server depends on the application distribution.
        %   logical scalar
        %
        %   Deprecated
        applicationDistrib (1, 1) logical = false
        
        % DISTRIB The distribution descriptor.
        %   IceGrid.DistributionDescriptor scalar
        %
        %   Deprecated
        distrib IceGrid.DistributionDescriptor {mustBeScalarOrEmpty} = IceGrid.DistributionDescriptor.empty
        
        % ALLOCATABLE Specifies if the server is allocatable.
        %   logical scalar
        allocatable (1, 1) logical
        
        % USER The user account used to run the server.
        %   character vector
        user (1, :) char
    end
    methods
        function obj = ServerDescriptor(adapters, propertySet, logs, description, id, exe, iceVersion, pwd, options, envs, activation, activationTimeout, deactivationTimeout, applicationDistrib, distrib, allocatable, user)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 17, 'Invalid number of arguments');
                superArgs = {adapters, propertySet, logs, description};
            end
            obj = obj@IceGrid.CommunicatorDescriptor(superArgs{:});
            if nargin > 0
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
    methods (Access = protected)
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
    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::ServerDescriptor';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::ServerDescriptor'
    end
end
