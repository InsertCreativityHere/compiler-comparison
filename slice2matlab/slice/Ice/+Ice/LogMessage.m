classdef (Sealed) LogMessage
    %LOGMESSAGE Represents a full log message.
    %
    %   Creation
    %     Syntax
    %       obj = Ice.LogMessage()
    %       obj = Ice.LogMessage(type, timestamp, traceCategory, message)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   LogMessage Properties:
    %     type - The type of message sent to the <a href="matlab:help Ice.RemoteLoggerPrx -displayBanner">RemoteLoggerPrx</a>.
    %     timestamp - The date and time when the <a href="matlab:help Ice.RemoteLoggerPrx -displayBanner">RemoteLoggerPrx</a> received this message, expressed as the number of microseconds since the Unix Epoch (00:00:00 UTC on 1 January 1970).
    %     traceCategory - For a message of type trace, the trace category of this log message; otherwise, the empty string.
    %     message - The log message itself.
    %
    %   Generated from RemoteLogger.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % TYPE The type of message sent to the <a href="matlab:help Ice.RemoteLoggerPrx -displayBanner">RemoteLoggerPrx</a>.
        %   Ice.LogMessageType scalar
        type (1, 1) Ice.LogMessageType
        
        % TIMESTAMP The date and time when the <a href="matlab:help Ice.RemoteLoggerPrx -displayBanner">RemoteLoggerPrx</a> received this message, expressed as the number of
        %   microseconds since the Unix Epoch (00:00:00 UTC on 1 January 1970).
        %   int64 scalar
        timestamp (1, 1) int64
        
        % TRACECATEGORY For a message of type trace, the trace category of this log message; otherwise, the empty string.
        %   character vector
        traceCategory (1, :) char
        
        % MESSAGE The log message itself.
        %   character vector
        message (1, :) char
    end
    methods
        function obj = LogMessage(type, timestamp, traceCategory, message)
            if nargin > 0
                assert(nargin == 4, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = Ice.LogMessage();
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
