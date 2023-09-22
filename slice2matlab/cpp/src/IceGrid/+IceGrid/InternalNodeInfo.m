% InternalNodeInfo   Summary of InternalNodeInfo
%
% Information about an IceGrid node.
%
% InternalNodeInfo Properties:
%   name - The name of the node.
%   os - The operating system name.
%   hostname - The network name of the host running this node (as defined in uname()).
%   release - The operation system release level (as defined in uname()).
%   version - The operation system version (as defined in uname()).
%   machine - The machine hardware type (as defined in uname()).
%   nProcessors - The number of processor threads (e.g.
%   dataDir - The path to the node data directory.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.7.10

classdef InternalNodeInfo < Ice.Value
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
        % nProcessors - The number of processor threads (e.g. 8 on
        % system with 1 quad-core CPU, with 2 threads per core)
        nProcessors int32
        % dataDir - The path to the node data directory.
        dataDir char
    end
    methods
        function obj = InternalNodeInfo(name, os, hostname, release, version, machine, nProcessors, dataDir)
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
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
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
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::InternalNodeInfo';
        end
    end
end
