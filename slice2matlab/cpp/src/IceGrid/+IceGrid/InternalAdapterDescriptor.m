classdef InternalAdapterDescriptor < Ice.Value
    %INTERNALADAPTERDESCRIPTOR
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.InternalAdapterDescriptor()
    %       obj = IceGrid.InternalAdapterDescriptor(id, serverLifetime)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   InternalAdapterDescriptor Properties:
    %     id - The identifier of the server.
    %     serverLifetime - Specifies if the lifetime of the adapter is the same as the server.
    %
    %   Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The identifier of the server.
        %   character vector
        id (1, :) char
        
        % SERVERLIFETIME Specifies if the lifetime of the adapter is the same as the server.
        %   logical scalar
        serverLifetime (1, 1) logical
    end
    methods
        function obj = InternalAdapterDescriptor(id, serverLifetime)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.id = id;
                obj.serverLifetime = serverLifetime;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
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
    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::InternalAdapterDescriptor';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::InternalAdapterDescriptor'
    end
end
