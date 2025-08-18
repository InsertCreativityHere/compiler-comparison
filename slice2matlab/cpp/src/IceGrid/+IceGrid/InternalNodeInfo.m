classdef InternalNodeInfo < Ice.Value
    %INTERNALNODEINFO Information about an IceGrid node.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.InternalNodeInfo()
    %       obj = IceGrid.InternalNodeInfo(name, os, hostname, release, version, machine, nProcessors, dataDir, iceSoVersion)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   InternalNodeInfo Properties:
    %     name - The name of the node.
    %     os - The operating system name.
    %     hostname - The network name of the host running this node (as defined in uname()).
    %     release - The operation system release level (as defined in uname()).
    %     version - The operation system version (as defined in uname()).
    %     machine - The machine hardware type (as defined in uname()).
    %     nProcessors - The number of processor threads (e.g.
    %     dataDir - The path to the node data directory.
    %     iceSoVersion - The Ice SO version of this node, for example 38.
    %
    %   Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME The name of the node.
        %   character vector
        name (1, :) char
        
        % OS The operating system name.
        %   character vector
        os (1, :) char
        
        % HOSTNAME The network name of the host running this node (as defined in uname()).
        %   character vector
        hostname (1, :) char
        
        % RELEASE The operation system release level (as defined in uname()).
        %   character vector
        release (1, :) char
        
        % VERSION The operation system version (as defined in uname()).
        %   character vector
        version (1, :) char
        
        % MACHINE The machine hardware type (as defined in uname()).
        %   character vector
        machine (1, :) char
        
        % NPROCESSORS The number of processor threads (e.g. 8 on system with 1 quad-core CPU, with 2 threads per core)
        %   int32 scalar
        nProcessors (1, 1) int32
        
        % DATADIR The path to the node data directory.
        %   character vector
        dataDir (1, :) char
        
        % ICESOVERSION The Ice SO version of this node, for example 38. It is typically used to load the same version of the IceStorm
        %   service in IceBox.
        %   character vector | Ice.Unset
        iceSoVersion (1, :) = IceInternal.UnsetI.Instance
    end
    methods
        function obj = InternalNodeInfo(name, os, hostname, release, version, machine, nProcessors, dataDir, iceSoVersion)
            if nargin > 0
                assert(nargin == 9, 'Invalid number of arguments');
                obj.name = name;
                obj.os = os;
                obj.hostname = hostname;
                obj.release = release;
                obj.version = version;
                obj.machine = machine;
                obj.nProcessors = nProcessors;
                obj.dataDir = dataDir;
                obj.iceSoVersion = iceSoVersion;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::InternalNodeInfo', -1, true);
            os.writeString(obj.name);
            os.writeString(obj.os);
            os.writeString(obj.hostname);
            os.writeString(obj.release);
            os.writeString(obj.version);
            os.writeString(obj.machine);
            os.writeInt(obj.nProcessors);
            os.writeString(obj.dataDir);
            os.writeStringOpt(1, obj.iceSoVersion);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            obj.os = is.readString();
            obj.hostname = is.readString();
            obj.release = is.readString();
            obj.version = is.readString();
            obj.machine = is.readString();
            obj.nProcessors = is.readInt();
            obj.dataDir = is.readString();
            obj.iceSoVersion = is.readStringOpt(1);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::InternalNodeInfo';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::InternalNodeInfo'
    end
end
