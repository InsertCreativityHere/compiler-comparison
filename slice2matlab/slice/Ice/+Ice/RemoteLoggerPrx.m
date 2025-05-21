% RemoteLoggerPrx   Summary of RemoteLoggerPrx
%
% Represents an Ice object that accepts log messages. It's called by the implementation of LoggerAdmin.
%
% RemoteLoggerPrx Methods:
%   init - Attaches a remote logger to the local logger.
%   initAsync - Attaches a remote logger to the local logger.
%   log - Logs a LogMessage.
%   logAsync - Logs a LogMessage.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from RemoteLogger.ice by slice2matlab version 3.8.0-alpha.0

classdef RemoteLoggerPrx < Ice.ObjectPrx
    methods
        function init(obj, prefix, logMessages, varargin)
            % init   Attaches a remote logger to the local logger.
            %
            % Parameters:
            %   prefix (char) - The prefix of the associated local Logger.
            %   logMessages (Ice.LogMessageSeq) - Old log messages generated before "now".
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(prefix);
            Ice.LogMessageSeq.write(os_, logMessages);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('init', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = initAsync(obj, prefix, logMessages, varargin)
            % initAsync   Attaches a remote logger to the local logger.
            %
            % Parameters:
            %   prefix (char) - The prefix of the associated local Logger.
            %   logMessages (Ice.LogMessageSeq) - Old log messages generated before "now".
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(prefix);
            Ice.LogMessageSeq.write(os_, logMessages);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('init', 0, false, os_, 0, [], {}, varargin{:});
        end
        function log(obj, message, varargin)
            % log   Logs a LogMessage.
            %
            % Parameters:
            %   message (Ice.LogMessage) - The message to log.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.LogMessage.ice_write(os_, message);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('log', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = logAsync(obj, message, varargin)
            % logAsync   Logs a LogMessage.
            %
            % Parameters:
            %   message (Ice.LogMessage) - The message to log.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.LogMessage.ice_write(os_, message);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('log', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Ice::RemoteLogger';
        end
        function r = ice_read(is)
            r = is.readProxy('Ice.RemoteLoggerPrx');
        end
        function r = checkedCast(p, varargin)
            % checkedCast   Contacts the remote server to verify that the object implements this type.
            %   Raises a local exception if a communication error occurs. You can optionally supply a
            %   facet name and a context map.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %   context - The optional context map to send with the invocation.
            %
            % Returns (Ice.RemoteLoggerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.RemoteLoggerPrx.ice_staticId(), 'Ice.RemoteLoggerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Ice.RemoteLoggerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.RemoteLoggerPrx', varargin{:});
        end
    end
end
