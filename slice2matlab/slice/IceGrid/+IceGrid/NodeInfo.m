classdef (Sealed) NodeInfo
    %NODEINFO Information about an IceGrid node.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.NodeInfo()
    %       obj = IceGrid.NodeInfo(name, os, hostname, release, version, machine, nProcessors, dataDir)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   NodeInfo Properties:
    %     name - The name of the node.
    %     os - The operating system name.
    %     hostname - The network name of the host running this node.
    %     release - The operation system release level.
    %     version - The operation system version.
    %     machine - The machine hardware type.
    %     nProcessors - The number of processor threads on the node.
    %     dataDir - The path to the node data directory.
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME The name of the node.
        %   character vector
        name (1, :) char
        
        % OS The operating system name.
        %   character vector
        os (1, :) char
        
        % HOSTNAME The network name of the host running this node.
        %   character vector
        hostname (1, :) char
        
        % RELEASE The operation system release level.
        %   character vector
        release (1, :) char
        
        % VERSION The operation system version.
        %   character vector
        version (1, :) char
        
        % MACHINE The machine hardware type.
        %   character vector
        machine (1, :) char
        
        % NPROCESSORS The number of processor threads on the node. For example, nProcessors is 8 on a computer with a single
        %   quad-core processor and two threads per core.
        %   int32 scalar
        nProcessors (1, 1) int32
        
        % DATADIR The path to the node data directory.
        %   character vector
        dataDir (1, :) char
    end
    methods
        function obj = NodeInfo(name, os, hostname, release, version, machine, nProcessors, dataDir)
            if nargin > 0
                assert(nargin == 8, 'Invalid number of arguments');
                obj.name = name;
                obj.os = os;
                obj.hostname = hostname;
                obj.release = release;
                obj.version = version;
                obj.machine = machine;
                obj.nProcessors = nProcessors;
                obj.dataDir = dataDir;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = IceGrid.NodeInfo();
            r.name = is.readString();
            r.os = is.readString();
            r.hostname = is.readString();
            r.release = is.readString();
            r.version = is.readString();
            r.machine = is.readString();
            r.nProcessors = is.readInt();
            r.dataDir = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.NodeInfo();
            end
            os.writeString(v.name);
            os.writeString(v.os);
            os.writeString(v.hostname);
            os.writeString(v.release);
            os.writeString(v.version);
            os.writeString(v.machine);
            os.writeInt(v.nProcessors);
            os.writeString(v.dataDir);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.NodeInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.NodeInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
