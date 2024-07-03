% ServerState   Summary of ServerState
%
% An enumeration representing the state of the server.
%
% ServerState Properties:
%   Inactive - The server is not running.
%   Activating - The server is being activated and will change to the active state when the registered server object adapters are activated or to the activation timed out state if the activation timeout expires.
%   ActivationTimedOut - The activation timed out state indicates that the server activation timed out.
%   Active - The server is running.
%   Deactivating - The server is being deactivated.
%   Destroying - The server is being destroyed.
%   Destroyed - The server is destroyed.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef ServerState < uint8
    enumeration
        % The server is not running.
        Inactive (0)
        % The server is being activated and will change to the active state when the registered server object adapters
        % are activated or to the activation timed out state if the activation timeout expires.
        Activating (1)
        % The activation timed out state indicates that the server activation timed out.
        ActivationTimedOut (2)
        % The server is running.
        Active (3)
        % The server is being deactivated.
        Deactivating (4)
        % The server is being destroyed.
        Destroying (5)
        % The server is destroyed.
        Destroyed (6)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(IceGrid.ServerState.Inactive), 6);
            else
                os.writeEnum(int32(v), 6);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                IceGrid.ServerState.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(6);
            r = IceGrid.ServerState.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = IceGrid.ServerState.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = IceGrid.ServerState.Inactive;
                case 1
                    r = IceGrid.ServerState.Activating;
                case 2
                    r = IceGrid.ServerState.ActivationTimedOut;
                case 3
                    r = IceGrid.ServerState.Active;
                case 4
                    r = IceGrid.ServerState.Deactivating;
                case 5
                    r = IceGrid.ServerState.Destroying;
                case 6
                    r = IceGrid.ServerState.Destroyed;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
