% ServerDynamicInfo   Summary of ServerDynamicInfo
%
% Dynamic information about the state of a server.
%
% ServerDynamicInfo Properties:
%   id - The id of the server.
%   state - The state of the server.
%   pid - The process id of the server.
%   enabled - Indicates whether the server is enabled.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef ServerDynamicInfo
    properties
        % id - The id of the server.
        id char
        % state - The state of the server.
        state IceGrid.ServerState
        % pid - The process id of the server.
        pid int32
        % enabled - Indicates whether the server is enabled.
        enabled logical
    end
    methods
        function obj = ServerDynamicInfo(id, state, pid, enabled)
            if nargin == 0
                obj.id = '';
                obj.state = IceGrid.ServerState.Inactive;
                obj.pid = 0;
                obj.enabled = false;
            elseif ne(id, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.ServerDynamicInfo(IceInternal.NoInit.Instance);
            r.id = is.readString();
            r.state = IceGrid.ServerState.ice_read(is);
            r.pid = is.readInt();
            r.enabled = is.readBool();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.ServerDynamicInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
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
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.ServerDynamicInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
