% MetricsPrx   Summary of MetricsPrx
%
% MetricsPrx Methods:
%   op
%   opAsync
%   fail
%   failAsync
%   opWithUserException
%   opWithUserExceptionAsync
%   opWithRequestFailedException
%   opWithRequestFailedExceptionAsync
%   opWithLocalException
%   opWithLocalExceptionAsync
%   opWithUnknownException
%   opWithUnknownExceptionAsync
%   opByteS
%   opByteSAsync
%   getAdmin
%   getAdminAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MetricsPrx < Ice.ObjectPrx
    methods
        function op(obj, varargin)
            % op
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('op', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opAsync(obj, varargin)
            % opAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('op', 0, false, [], 0, [], {}, varargin{:});
        end
        function fail(obj, varargin)
            % fail
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('fail', 2, false, [], false, {}, varargin{:});
        end
        function r_ = failAsync(obj, varargin)
            % failAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('fail', 2, false, [], 0, [], {}, varargin{:});
        end
        function opWithUserException(obj, varargin)
            % opWithUserException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('opWithUserException', 0, true, [], false, Test.MetricsPrx.opWithUserException_ex_, varargin{:});
        end
        function r_ = opWithUserExceptionAsync(obj, varargin)
            % opWithUserExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('opWithUserException', 0, true, [], 0, [], Test.MetricsPrx.opWithUserException_ex_, varargin{:});
        end
        function opWithRequestFailedException(obj, varargin)
            % opWithRequestFailedException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('opWithRequestFailedException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opWithRequestFailedExceptionAsync(obj, varargin)
            % opWithRequestFailedExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('opWithRequestFailedException', 0, false, [], 0, [], {}, varargin{:});
        end
        function opWithLocalException(obj, varargin)
            % opWithLocalException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('opWithLocalException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opWithLocalExceptionAsync(obj, varargin)
            % opWithLocalExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('opWithLocalException', 0, false, [], 0, [], {}, varargin{:});
        end
        function opWithUnknownException(obj, varargin)
            % opWithUnknownException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('opWithUnknownException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opWithUnknownExceptionAsync(obj, varargin)
            % opWithUnknownExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('opWithUnknownException', 0, false, [], 0, [], {}, varargin{:});
        end
        function opByteS(obj, bs, varargin)
            % opByteS
            %
            % Parameters:
            %   bs (Test.ByteSeq)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(bs);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opByteS', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = opByteSAsync(obj, bs, varargin)
            % opByteSAsync
            %
            % Parameters:
            %   bs (Test.ByteSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(bs);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('opByteS', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = getAdmin(obj, varargin)
            % getAdmin
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx)
            
            is_ = obj.iceInvoke('getAdmin', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = getAdminAsync(obj, varargin)
            % getAdminAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getAdmin', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function shutdown(obj, varargin)
            % shutdown
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            % shutdownAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Metrics';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.MetricsPrx');
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
            % Returns (Test.MetricsPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MetricsPrx.ice_staticId(), 'Test.MetricsPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.MetricsPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MetricsPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = MetricsPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        opWithUserException_ex_ = { 'Test.UserEx' }
    end
end
