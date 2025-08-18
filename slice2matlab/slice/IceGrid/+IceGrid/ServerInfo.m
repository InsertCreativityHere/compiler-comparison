classdef (Sealed) ServerInfo
    %SERVERINFO Information about a server managed by an IceGrid node.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.ServerInfo()
    %       obj = IceGrid.ServerInfo(application, uuid, revision, node, descriptor, sessionId)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ServerInfo Properties:
    %     application - The application to which this server belongs.
    %     uuid - The application UUID.
    %     revision - The application revision.
    %     node - The IceGrid node where this server is deployed.
    %     descriptor - The server descriptor.
    %     sessionId - The ID of the session which allocated the server.
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % APPLICATION The application to which this server belongs.
        %   character vector
        application (1, :) char
        
        % UUID The application UUID.
        %   character vector
        uuid (1, :) char
        
        % REVISION The application revision.
        %   int32 scalar
        revision (1, 1) int32
        
        % NODE The IceGrid node where this server is deployed.
        %   character vector
        node (1, :) char
        
        % DESCRIPTOR The server descriptor.
        %   IceGrid.ServerDescriptor scalar | empty array of IceGrid.ServerDescriptor
        descriptor {mustBeScalarOrEmpty} = IceGrid.ServerDescriptor.empty
        
        % SESSIONID The ID of the session which allocated the server.
        %   character vector
        sessionId (1, :) char
    end
    methods
        function obj = ServerInfo(application, uuid, revision, node, descriptor, sessionId)
            if nargin > 0
                assert(nargin == 6, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = IceGrid.ServerInfo();
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
