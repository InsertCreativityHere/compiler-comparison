% SessionCreationError   Summary of SessionCreationError
%
% The reason for the session creation failure.
%
% SessionCreationError Properties:
%   AlreadyConnected - The session is already connected.
%   NodeShutdown - Node is shutting down.
%   SessionNotFound - A confirmation was received for a session that doesn't exist.
%   Internal - The session creation failed due to an internal error.

% Copyright (c) ZeroC, Inc.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef SessionCreationError < uint8
    enumeration
        % AlreadyConnected   Summary of AlreadyConnected
        %
        % The session is already connected.
        AlreadyConnected (0)
        
        % NodeShutdown   Summary of NodeShutdown
        %
        % Node is shutting down.
        NodeShutdown (1)
        
        % SessionNotFound   Summary of SessionNotFound
        %
        % A confirmation was received for a session that doesn't exist.
        SessionNotFound (2)
        
        % Internal   Summary of Internal
        %
        % The session creation failed due to an internal error.
        Internal (3)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(DataStormContract.SessionCreationError.AlreadyConnected), 3);
            else
                os.writeEnum(int32(v), 3);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(3);
            r = DataStormContract.SessionCreationError.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                DataStormContract.SessionCreationError.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = DataStormContract.SessionCreationError.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = DataStormContract.SessionCreationError.AlreadyConnected;
                case 1
                    r = DataStormContract.SessionCreationError.NodeShutdown;
                case 2
                    r = DataStormContract.SessionCreationError.SessionNotFound;
                case 3
                    r = DataStormContract.SessionCreationError.Internal;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
