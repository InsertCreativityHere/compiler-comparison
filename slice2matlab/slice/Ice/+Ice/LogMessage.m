% LogMessage   Summary of LogMessage
%
% A complete log message.
%
% LogMessage Properties:
%   type - The type of message sent to the RemoteLogger.
%   timestamp - The date and time when the RemoteLogger received this message, expressed as the number of microseconds since the Unix Epoch (00:00:00 UTC on 1 January 1970)
%   traceCategory - For a message of type trace, the trace category of this log message; otherwise, the empty string.
%   message - The log message itself.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from RemoteLogger.ice by slice2matlab version 3.8.0-alpha.0

classdef LogMessage
    properties
        % type - The type of message sent to the RemoteLogger.
        type Ice.LogMessageType
        % timestamp - The date and time when the RemoteLogger received this message, expressed as the number of microseconds
        % since the Unix Epoch (00:00:00 UTC on 1 January 1970)
        timestamp int64
        % traceCategory - For a message of type trace, the trace category of this log message; otherwise, the empty string.
        traceCategory char
        % message - The log message itself.
        message char
    end
    methods
        function obj = LogMessage(type, timestamp, traceCategory, message)
            if nargin == 0
                obj.type = Ice.LogMessageType.PrintMessage;
                obj.timestamp = 0;
                obj.traceCategory = '';
                obj.message = '';
            elseif ne(type, IceInternal.NoInit.Instance)
                obj.type = type;
                obj.timestamp = timestamp;
                obj.traceCategory = traceCategory;
                obj.message = message;
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
            r = Ice.LogMessage(IceInternal.NoInit.Instance);
            r.type = Ice.LogMessageType.ice_read(is);
            r.timestamp = is.readLong();
            r.traceCategory = is.readString();
            r.message = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Ice.LogMessage();
            end
            Ice.LogMessageType.ice_write(os, v.type);
            os.writeLong(v.timestamp);
            os.writeString(v.traceCategory);
            os.writeString(v.message);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Ice.LogMessage.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Ice.LogMessage.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
