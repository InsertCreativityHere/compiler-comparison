classdef RemoteLoggerPrx < Ice.ObjectPrx
    %REMOTELOGGERPRX Represents an Ice object that accepts log messages. It's called by the implementation of <a href="matlab:help Ice.LoggerAdminPrx -displayBanner">LoggerAdminPrx</a>.
    %
    %   Creation
    %     Syntax
    %       prx = Ice.RemoteLoggerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   RemoteLoggerPrx Methods:
    %     init - Attaches a remote logger to the local logger.
    %     initAsync - An asynchronous init.
    %     log - Logs a LogMessage.
    %     logAsync - An asynchronous log.
    %
    %   RemoteLoggerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Ice::RemoteLogger.
    %     uncheckedCast - Creates a RemoteLoggerPrx from another proxy without any validation.
    %
    %   Generated from RemoteLogger.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function init(obj, prefix, logMessages, context)
            %INIT Attaches a remote logger to the local logger.
            %
            %   Input Arguments
            %     prefix - The prefix of the associated local Logger.
            %       character vector
            %     logMessages - Old log messages generated before "now".
            %       Ice.LogMessage vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Ice.RemoteLoggerPrx
                prefix (1, :) char
                logMessages (1, :) Ice.LogMessage
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(prefix);
            Ice.LogMessageSeq.write(os_, logMessages);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('init', 0, false, os_, false, {}, context);
        end

        function future = initAsync(obj, prefix, logMessages, context)
            %INITASYNC Attaches a remote logger to the local logger.
            %
            %   Input Arguments
            %     prefix - The prefix of the associated local Logger.
            %       character vector
            %     logMessages - Old log messages generated before "now".
            %       Ice.LogMessage vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also init, Ice.Future.
            
            arguments
                obj (1, 1) Ice.RemoteLoggerPrx
                prefix (1, :) char
                logMessages (1, :) Ice.LogMessage
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(prefix);
            Ice.LogMessageSeq.write(os_, logMessages);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('init', 0, false, os_, 0, [], {}, context);
        end

        function log(obj, message, context)
            %LOG Logs a LogMessage.
            %
            %   Input Arguments
            %     message - The message to log.
            %       Ice.LogMessage scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Remarks
            %     <a href="matlab:help Ice.RemoteLoggerPrx/log -displayBanner">log</a> may be called by <a href="matlab:help Ice.LoggerAdminPrx -displayBanner">LoggerAdminPrx</a> before <a href="matlab:help Ice.RemoteLoggerPrx/init -displayBanner">init</a>.
            
            arguments
                obj (1, 1) Ice.RemoteLoggerPrx
                message (1, 1) Ice.LogMessage
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.LogMessage.ice_write(os_, message);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('log', 0, false, os_, false, {}, context);
        end

        function future = logAsync(obj, message, context)
            %LOGASYNC Logs a LogMessage.
            %
            %   Input Arguments
            %     message - The message to log.
            %       Ice.LogMessage scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also log, Ice.Future.
            %
            %   Remarks
            %     <a href="matlab:help Ice.RemoteLoggerPrx/log -displayBanner">log</a> may be called by <a href="matlab:help Ice.LoggerAdminPrx -displayBanner">LoggerAdminPrx</a> before <a href="matlab:help Ice.RemoteLoggerPrx/init -displayBanner">init</a>.
            
            arguments
                obj (1, 1) Ice.RemoteLoggerPrx
                message (1, 1) Ice.LogMessage
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.LogMessage.ice_write(os_, message);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('log', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Ice::RemoteLogger';
        end

        function r = ice_read(is)
            r = is.readProxy('Ice.RemoteLoggerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Ice::RemoteLogger.
            %
            %   Input Arguments
            %     p - The proxy to check.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %     context - The request context (optional).
            %       dictionary(string, string) scalar
            %
            %   Output Arguments
            %     r - A Ice.RemoteLoggerPrx scalar if the target object implements Slice interface 
            %       ::Ice::RemoteLogger; otherwise, an empty array of Ice.RemoteLoggerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.RemoteLoggerPrx.ice_staticId(), 'Ice.RemoteLoggerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Ice.RemoteLoggerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Ice.RemoteLoggerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.RemoteLoggerPrx', varargin{:});
        end
    end
end
