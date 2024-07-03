% LogMessageType   Summary of LogMessageType
%
% An enumeration representing the different types of log messages.
%
% LogMessageType Properties:
%   PrintMessage - The RemoteLogger received a print message.
%   TraceMessage - The RemoteLogger received a trace message.
%   WarningMessage - The RemoteLogger received a warning message.
%   ErrorMessage - The RemoteLogger received an error message.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from RemoteLogger.ice by slice2matlab version 3.8.0-alpha.0

classdef LogMessageType < uint8
    enumeration
        % The RemoteLogger received a print message.
        PrintMessage (0)
        % The RemoteLogger received a trace message.
        TraceMessage (1)
        % The RemoteLogger received a warning message.
        WarningMessage (2)
        % The RemoteLogger received an error message.
        ErrorMessage (3)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Ice.LogMessageType.PrintMessage), 3);
            else
                os.writeEnum(int32(v), 3);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Ice.LogMessageType.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(3);
            r = Ice.LogMessageType.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Ice.LogMessageType.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = Ice.LogMessageType.PrintMessage;
                case 1
                    r = Ice.LogMessageType.TraceMessage;
                case 2
                    r = Ice.LogMessageType.WarningMessage;
                case 3
                    r = Ice.LogMessageType.ErrorMessage;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
