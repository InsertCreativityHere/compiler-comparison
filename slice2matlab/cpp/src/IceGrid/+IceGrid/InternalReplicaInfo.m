% InternalReplicaInfo   Summary of InternalReplicaInfo
%
% Information about an IceGrid registry replica.
%
% InternalReplicaInfo Properties:
%   name - The name of the registry.
%   hostname - The network name of the host running this registry (as defined in uname()).

% Copyright (c) ZeroC, Inc.
% Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

classdef InternalReplicaInfo < Ice.Value
    properties
        % name - The name of the registry.
        name char
        % hostname - The network name of the host running this registry (as defined in uname()).
        hostname char
    end
    methods
        function obj = InternalReplicaInfo(name, hostname)
            if nargin == 0
                obj.name = '';
                obj.hostname = '';
            elseif ne(name, IceInternal.NoInit.Instance)
                obj.name = name;
                obj.hostname = hostname;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::InternalReplicaInfo', -1, true);
            os.writeString(obj.name);
            os.writeString(obj.hostname);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            obj.hostname = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::InternalReplicaInfo';
        end
    end
end
