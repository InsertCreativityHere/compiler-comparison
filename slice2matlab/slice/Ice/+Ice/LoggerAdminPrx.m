% LoggerAdminPrx   Summary of LoggerAdminPrx
%
% The interface of the admin object that allows an Ice application the attach its
% RemoteLogger to the Logger of this admin object's Ice communicator.
%
% LoggerAdminPrx Methods:
%   attachRemoteLogger - Attaches a RemoteLogger object to the local logger.
%   attachRemoteLoggerAsync - Attaches a RemoteLogger object to the local logger.
%   detachRemoteLogger - Detaches a RemoteLogger object from the local logger.
%   detachRemoteLoggerAsync - Detaches a RemoteLogger object from the local logger.
%   getLog - Retrieves log messages recently logged.
%   getLogAsync - Retrieves log messages recently logged.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from RemoteLogger.ice by slice2matlab version 3.7.10

classdef LoggerAdminPrx < Ice.ObjectPrx
    methods
        function attachRemoteLogger(obj, prx, messageTypes, traceCategories, messageMax, varargin)
            % attachRemoteLogger   Attaches a RemoteLogger object to the local logger.
            % attachRemoteLogger calls init on the provided RemoteLogger proxy.
            %
            % Parameters:
            %   prx (Ice.RemoteLoggerPrx) - A proxy to the remote logger.
            %   messageTypes (Ice.LogMessageTypeSeq) - The list of message types that the remote logger wishes to receive.
            %     An empty list means no filtering (send all message types).
            %   traceCategories (Ice.StringSeq) - The categories of traces that the remote logger wishes to receive.
            %     This parameter is ignored if messageTypes is not empty and does not include trace.
            %     An empty list means no filtering (send all trace categories).
            %   messageMax (int32) - The maximum number of log messages (of all types) to be provided
            %     to init. A negative value requests all messages available.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   Ice.RemoteLoggerAlreadyAttachedException - Raised if this remote logger is already
            %     attached to this admin object.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(prx);
            Ice.LogMessageTypeSeq.write(os_, messageTypes);
            os_.writeStringSeq(traceCategories);
            os_.writeInt(messageMax);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachRemoteLogger', 0, true, os_, false, Ice.LoggerAdminPrx.attachRemoteLogger_ex_, varargin{:});
        end
        function r_ = attachRemoteLoggerAsync(obj, prx, messageTypes, traceCategories, messageMax, varargin)
            % attachRemoteLoggerAsync   Attaches a RemoteLogger object to the local logger.
            % attachRemoteLogger calls init on the provided RemoteLogger proxy.
            %
            % Parameters:
            %   prx (Ice.RemoteLoggerPrx) - A proxy to the remote logger.
            %   messageTypes (Ice.LogMessageTypeSeq) - The list of message types that the remote logger wishes to receive.
            %     An empty list means no filtering (send all message types).
            %   traceCategories (Ice.StringSeq) - The categories of traces that the remote logger wishes to receive.
            %     This parameter is ignored if messageTypes is not empty and does not include trace.
            %     An empty list means no filtering (send all trace categories).
            %   messageMax (int32) - The maximum number of log messages (of all types) to be provided
            %     to init. A negative value requests all messages available.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Ice.RemoteLoggerAlreadyAttachedException - Raised if this remote logger is already
            %     attached to this admin object.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(prx);
            Ice.LogMessageTypeSeq.write(os_, messageTypes);
            os_.writeStringSeq(traceCategories);
            os_.writeInt(messageMax);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('attachRemoteLogger', 0, true, os_, 0, [], Ice.LoggerAdminPrx.attachRemoteLogger_ex_, varargin{:});
        end
        function result = detachRemoteLogger(obj, prx, varargin)
            % detachRemoteLogger   Detaches a RemoteLogger object from the local logger.
            %
            % Parameters:
            %   prx (Ice.RemoteLoggerPrx) - A proxy to the remote logger.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (logical) - True if the provided remote logger proxy was detached, and false otherwise.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(prx);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('detachRemoteLogger', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = detachRemoteLoggerAsync(obj, prx, varargin)
            % detachRemoteLoggerAsync   Detaches a RemoteLogger object from the local logger.
            %
            % Parameters:
            %   prx (Ice.RemoteLoggerPrx) - A proxy to the remote logger.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(prx);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('detachRemoteLogger', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function [result, prefix] = getLog(obj, messageTypes, traceCategories, messageMax, varargin)
            % getLog   Retrieves log messages recently logged.
            %
            % Parameters:
            %   messageTypes (Ice.LogMessageTypeSeq) - The list of message types that the caller wishes to receive.
            %     An empty list means no filtering (send all message types).
            %   traceCategories (Ice.StringSeq) - The categories of traces that caller wish to receive.
            %     This parameter is ignored if messageTypes is not empty and does not include trace.
            %     An empty list means no filtering (send all trace categories).
            %   messageMax (int32) - The maximum number of log messages (of all types) to be returned.
            %     A negative value requests all messages available.
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Ice.LogMessageSeq) - The Log messages.
            %   prefix (char) - The prefix of the associated local logger.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.LogMessageTypeSeq.write(os_, messageTypes);
            os_.writeStringSeq(traceCategories);
            os_.writeInt(messageMax);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getLog', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            prefix = is_.readString();
            result = Ice.LogMessageSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getLogAsync(obj, messageTypes, traceCategories, messageMax, varargin)
            % getLogAsync   Retrieves log messages recently logged.
            %
            % Parameters:
            %   messageTypes (Ice.LogMessageTypeSeq) - The list of message types that the caller wishes to receive.
            %     An empty list means no filtering (send all message types).
            %   traceCategories (Ice.StringSeq) - The categories of traces that caller wish to receive.
            %     This parameter is ignored if messageTypes is not empty and does not include trace.
            %     An empty list means no filtering (send all trace categories).
            %   messageMax (int32) - The maximum number of log messages (of all types) to be returned.
            %     A negative value requests all messages available.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.LogMessageTypeSeq.write(os_, messageTypes);
            os_.writeStringSeq(traceCategories);
            os_.writeInt(messageMax);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                prefix = is_.readString();
                result = Ice.LogMessageSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = prefix;
            end
            r_ = obj.iceInvokeAsync('getLog', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Ice::LoggerAdmin';
        end
        function r = ice_read(is)
            r = is.readProxy('Ice.LoggerAdminPrx');
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
            % Returns (Ice.LoggerAdminPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.LoggerAdminPrx.ice_staticId(), 'Ice.LoggerAdminPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Ice.LoggerAdminPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.LoggerAdminPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = LoggerAdminPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        attachRemoteLogger_ex_ = { 'Ice.RemoteLoggerAlreadyAttachedException' }
    end
end
