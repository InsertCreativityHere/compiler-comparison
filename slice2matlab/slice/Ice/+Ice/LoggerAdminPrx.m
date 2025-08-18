classdef LoggerAdminPrx < Ice.ObjectPrx
    %LOGGERADMINPRX Represents the admin facet that allows an Ice application the attach its <a href="matlab:help Ice.RemoteLoggerPrx -displayBanner">RemoteLoggerPrx</a> to the local
    %   logger of an Ice communicator.
    %
    %   Creation
    %     Syntax
    %       prx = Ice.LoggerAdminPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   LoggerAdminPrx Methods:
    %     attachRemoteLogger - Attaches a RemoteLogger object to the local logger.
    %     attachRemoteLoggerAsync - An asynchronous attachRemoteLogger.
    %     detachRemoteLogger - Detaches a RemoteLogger object from the local logger.
    %     detachRemoteLoggerAsync - An asynchronous detachRemoteLogger.
    %     getLog - Retrieves log messages recently logged.
    %     getLogAsync - An asynchronous getLog.
    %
    %   LoggerAdminPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Ice::LoggerAdmin.
    %     uncheckedCast - Creates a LoggerAdminPrx from another proxy without any validation.
    %
    %   Generated from RemoteLogger.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function attachRemoteLogger(obj, prx, messageTypes, traceCategories, messageMax, context)
            %ATTACHREMOTELOGGER Attaches a RemoteLogger object to the local logger. This operation calls <a href="matlab:help Ice.RemoteLoggerPrx/init -displayBanner">init</a> on @p prx.
            %
            %   Input Arguments
            %     prx - A proxy to the remote logger.
            %       Ice.RemoteLoggerPrx scalar | empty array of Ice.RemoteLoggerPrx
            %     messageTypes - The list of message types that the remote logger wishes to receive. An empty list means
            %       no filtering (send all message types).
            %       Ice.LogMessageType vector
            %     traceCategories - The categories of traces that the remote logger wishes to receive. This parameter is
            %       ignored if messageTypes is not empty and does not include trace. An empty list means no filtering (send all
            %       trace categories).
            %       string vector
            %     messageMax - The maximum number of log messages (of all types) to be provided to init. A negative
            %       value requests all messages available.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Ice.RemoteLoggerAlreadyAttachedException - Thrown if this remote logger is already attached to this admin
            %       object.
            
            arguments
                obj (1, 1) Ice.LoggerAdminPrx
                prx Ice.RemoteLoggerPrx {mustBeScalarOrEmpty}
                messageTypes (1, :) Ice.LogMessageType
                traceCategories (1, :) string
                messageMax (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(prx);
            Ice.LogMessageTypeSeq.write(os_, messageTypes);
            os_.writeStringSeq(traceCategories);
            os_.writeInt(messageMax);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachRemoteLogger', 0, true, os_, false, Ice.LoggerAdminPrx.attachRemoteLogger_ex_, context);
        end

        function future = attachRemoteLoggerAsync(obj, prx, messageTypes, traceCategories, messageMax, context)
            %ATTACHREMOTELOGGERASYNC Attaches a RemoteLogger object to the local logger. This operation calls <a href="matlab:help Ice.RemoteLoggerPrx/init -displayBanner">init</a> on @p prx.
            %
            %   Input Arguments
            %     prx - A proxy to the remote logger.
            %       Ice.RemoteLoggerPrx scalar | empty array of Ice.RemoteLoggerPrx
            %     messageTypes - The list of message types that the remote logger wishes to receive. An empty list means
            %       no filtering (send all message types).
            %       Ice.LogMessageType vector
            %     traceCategories - The categories of traces that the remote logger wishes to receive. This parameter is
            %       ignored if messageTypes is not empty and does not include trace. An empty list means no filtering (send all
            %       trace categories).
            %       string vector
            %     messageMax - The maximum number of log messages (of all types) to be provided to init. A negative
            %       value requests all messages available.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also attachRemoteLogger, Ice.Future.
            
            arguments
                obj (1, 1) Ice.LoggerAdminPrx
                prx Ice.RemoteLoggerPrx {mustBeScalarOrEmpty}
                messageTypes (1, :) Ice.LogMessageType
                traceCategories (1, :) string
                messageMax (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(prx);
            Ice.LogMessageTypeSeq.write(os_, messageTypes);
            os_.writeStringSeq(traceCategories);
            os_.writeInt(messageMax);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('attachRemoteLogger', 0, true, os_, 0, [], Ice.LoggerAdminPrx.attachRemoteLogger_ex_, context);
        end

        function returnValue = detachRemoteLogger(obj, prx, context)
            %DETACHREMOTELOGGER Detaches a RemoteLogger object from the local logger.
            %
            %   Input Arguments
            %     prx - A proxy to the remote logger.
            %       Ice.RemoteLoggerPrx scalar | empty array of Ice.RemoteLoggerPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - `true` if the provided remote logger proxy was detached, and `false` otherwise.
            %       logical scalar
            
            arguments
                obj (1, 1) Ice.LoggerAdminPrx
                prx Ice.RemoteLoggerPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(prx);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('detachRemoteLogger', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = detachRemoteLoggerAsync(obj, prx, context)
            %DETACHREMOTELOGGERASYNC Detaches a RemoteLogger object from the local logger.
            %
            %   Input Arguments
            %     prx - A proxy to the remote logger.
            %       Ice.RemoteLoggerPrx scalar | empty array of Ice.RemoteLoggerPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also detachRemoteLogger, Ice.Future.
            
            arguments
                obj (1, 1) Ice.LoggerAdminPrx
                prx Ice.RemoteLoggerPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(prx);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('detachRemoteLogger', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function [returnValue, prefix] = getLog(obj, messageTypes, traceCategories, messageMax, context)
            %GETLOG Retrieves log messages recently logged.
            %
            %   Input Arguments
            %     messageTypes - The list of message types that the caller wishes to receive. An empty list means no
            %       filtering (send all message types).
            %       Ice.LogMessageType vector
            %     traceCategories - The categories of traces that caller wish to receive. This parameter is ignored if
            %       messageTypes is not empty and does not include trace. An empty list means no filtering (send all trace
            %       categories).
            %       string vector
            %     messageMax - The maximum number of log messages (of all types) to be returned. A negative value
            %       requests all messages available.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The Log messages.
            %       Ice.LogMessage vector
            %     prefix - The prefix of the associated local logger.
            %       character vector
            
            arguments
                obj (1, 1) Ice.LoggerAdminPrx
                messageTypes (1, :) Ice.LogMessageType
                traceCategories (1, :) string
                messageMax (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.LogMessageTypeSeq.write(os_, messageTypes);
            os_.writeStringSeq(traceCategories);
            os_.writeInt(messageMax);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getLog', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            prefix = is_.readString();
            returnValue = Ice.LogMessageSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = getLogAsync(obj, messageTypes, traceCategories, messageMax, context)
            %GETLOGASYNC Retrieves log messages recently logged.
            %
            %   Input Arguments
            %     messageTypes - The list of message types that the caller wishes to receive. An empty list means no
            %       filtering (send all message types).
            %       Ice.LogMessageType vector
            %     traceCategories - The categories of traces that caller wish to receive. This parameter is ignored if
            %       messageTypes is not empty and does not include trace. An empty list means no filtering (send all trace
            %       categories).
            %       string vector
            %     messageMax - The maximum number of log messages (of all types) to be returned. A negative value
            %       requests all messages available.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getLog, Ice.Future.
            
            arguments
                obj (1, 1) Ice.LoggerAdminPrx
                messageTypes (1, :) Ice.LogMessageType
                traceCategories (1, :) string
                messageMax (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.LogMessageTypeSeq.write(os_, messageTypes);
            os_.writeStringSeq(traceCategories);
            os_.writeInt(messageMax);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                prefix = is_.readString();
                returnValue = Ice.LogMessageSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = prefix;
            end
            future = obj.iceInvokeAsync('getLog', 0, true, os_, 2, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Ice::LoggerAdmin';
        end

        function r = ice_read(is)
            r = is.readProxy('Ice.LoggerAdminPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Ice::LoggerAdmin.
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
            %     r - A Ice.LoggerAdminPrx scalar if the target object implements Slice interface 
            %       ::Ice::LoggerAdmin; otherwise, an empty array of Ice.LoggerAdminPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.LoggerAdminPrx.ice_staticId(), 'Ice.LoggerAdminPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Ice.LoggerAdminPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Ice.LoggerAdminPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.LoggerAdminPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        attachRemoteLogger_ex_ = { 'Ice.RemoteLoggerAlreadyAttachedException' }
    end
end
