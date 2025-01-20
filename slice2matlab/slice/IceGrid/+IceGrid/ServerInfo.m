% ServerInfo   Summary of ServerInfo
%
% Information about a server managed by an IceGrid node.
%
% ServerInfo Properties:
%   application - The server application.
%   uuid - The application uuid.
%   revision - The application revision.
%   node - The server node.
%   descriptor - The server descriptor.
%   sessionId - The id of the session which allocated the server.

% Copyright (c) ZeroC, Inc.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef ServerInfo
    properties
        % application - The server application.
        application char
        % uuid - The application uuid.
        uuid char
        % revision - The application revision.
        revision int32
        % node - The server node.
        node char
        % descriptor - The server descriptor.
        descriptor
        % sessionId - The id of the session which allocated the server.
        sessionId char
    end
    methods
        function obj = ServerInfo(application, uuid, revision, node, descriptor, sessionId)
            if nargin == 0
                obj.application = '';
                obj.uuid = '';
                obj.revision = 0;
                obj.node = '';
                obj.descriptor = [];
                obj.sessionId = '';
            elseif ne(application, IceInternal.NoInit.Instance)
                obj.application = application;
                obj.uuid = uuid;
                obj.revision = revision;
                obj.node = node;
                obj.descriptor = descriptor;
                obj.sessionId = sessionId;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.descriptor = obj.descriptor.value;
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.ServerInfo(IceInternal.NoInit.Instance);
            r.application = is.readString();
            r.uuid = is.readString();
            r.revision = is.readInt();
            r.node = is.readString();
            descriptor_ = IceInternal.ValueHolder();
            r.descriptor = descriptor_;
            is.readValue(@(v_) descriptor_.set(v_), 'IceGrid.ServerDescriptor');
            r.sessionId = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.ServerInfo();
            end
            os.writeString(v.application);
            os.writeString(v.uuid);
            os.writeInt(v.revision);
            os.writeString(v.node);
            os.writeValue(v.descriptor);
            os.writeString(v.sessionId);
        end
    end
end
