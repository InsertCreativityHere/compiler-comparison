classdef (Sealed) ServerDynamicInfo
    %SERVERDYNAMICINFO Dynamic information about the state of a server.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.ServerDynamicInfo()
    %       obj = IceGrid.ServerDynamicInfo(id, state, pid, enabled)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ServerDynamicInfo Properties:
    %     id - The ID of the server.
    %     state - The state of the server.
    %     pid - The process ID of the server.
    %     enabled - Indicates whether the server is enabled.
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The ID of the server.
        %   character vector
        id (1, :) char
        
        % STATE The state of the server.
        %   IceGrid.ServerState scalar
        state (1, 1) IceGrid.ServerState
        
        % PID The process ID of the server.
        %   int32 scalar
        pid (1, 1) int32
        
        % ENABLED Indicates whether the server is enabled.
        %   logical scalar
        enabled (1, 1) logical
    end
    methods
        function obj = ServerDynamicInfo(id, state, pid, enabled)
            if nargin > 0
                assert(nargin == 4, 'Invalid number of arguments');
                obj.id = id;
                obj.state = state;
                obj.pid = pid;
                obj.enabled = enabled;
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
            r = IceGrid.ServerDynamicInfo();
            r.id = is.readString();
            r.state = IceGrid.ServerState.ice_read(is);
            r.pid = is.readInt();
            r.enabled = is.readBool();
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.ServerDynamicInfo();
            end
            os.writeString(v.id);
            IceGrid.ServerState.ice_write(os, v.state);
            os.writeInt(v.pid);
            os.writeBool(v.enabled);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.ServerDynamicInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.ServerDynamicInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
