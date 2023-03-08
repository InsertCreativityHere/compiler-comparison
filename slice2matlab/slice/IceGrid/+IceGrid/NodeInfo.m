% NodeInfo   Summary of NodeInfo
%
% Information about an IceGrid node.
%
% NodeInfo Properties:
%   name - The name of the node.
%   os - The operating system name.
%   hostname - The network name of the host running this node (as defined in uname()).
%   release - The operation system release level (as defined in uname()).
%   version - The operation system version (as defined in uname()).
%   machine - The machine hardware type (as defined in uname()).
%   nProcessors - The number of processor threads on the node.
%   dataDir - The path to the node data directory.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.7.9

classdef NodeInfo
    properties
        % name - The name of the node.
        name char
        % os - The operating system name.
        os char
        % hostname - The network name of the host running this node (as defined in
        % uname()).
        hostname char
        % release - The operation system release level (as defined in uname()).
        release char
        % version - The operation system version (as defined in uname()).
        version char
        % machine - The machine hardware type (as defined in uname()).
        machine char
        % nProcessors - The number of processor threads on the node.
        % For example, nProcessors is 8 on a computer with a single quad-core
        % processor and two HT threads per core.
        nProcessors int32
        % dataDir - The path to the node data directory.
        dataDir char
    end
    methods
        function obj = NodeInfo(name, os, hostname, release, version, machine, nProcessors, dataDir)
            if nargin == 0
                obj.name = '';
                obj.os = '';
                obj.hostname = '';
                obj.release = '';
                obj.version = '';
                obj.machine = '';
                obj.nProcessors = 0;
                obj.dataDir = '';
            elseif ne(name, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.NodeInfo(IceInternal.NoInit.Instance);
            r.name = is.readString();
            r.os = is.readString();
            r.hostname = is.readString();
            r.release = is.readString();
            r.version = is.readString();
            r.machine = is.readString();
            r.nProcessors = is.readInt();
            r.dataDir = is.readString();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.NodeInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
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
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.NodeInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
