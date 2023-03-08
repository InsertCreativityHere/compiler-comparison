% InternalAdapterDescriptor   Summary of InternalAdapterDescriptor
%
% InternalAdapterDescriptor Properties:
%   id - The identifier of the server.
%   serverLifetime - Specifies if the lifetime of the adapter is the same as the server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.7.9

classdef InternalAdapterDescriptor < Ice.Value
    properties
        % id - The identifier of the server.
        id char
        % serverLifetime - Specifies if the lifetime of the adapter is the same as the server.
        serverLifetime logical
    end
    methods
        function obj = InternalAdapterDescriptor(id, serverLifetime)
            if nargin == 0
                obj.id = '';
                obj.serverLifetime = false;
            elseif ne(id, IceInternal.NoInit.Instance)
                obj.id = id;
                obj.serverLifetime = serverLifetime;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::InternalAdapterDescriptor', -1, true);
            os.writeString(obj.id);
            os.writeBool(obj.serverLifetime);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.id = is.readString();
            obj.serverLifetime = is.readBool();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::InternalAdapterDescriptor';
        end
    end
end
