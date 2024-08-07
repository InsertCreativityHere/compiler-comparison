% TestIntfPrx   Summary of TestIntfPrx
%
% TestIntfPrx Methods:
%   requestFailedException
%   requestFailedExceptionAsync
%   unknownUserException
%   unknownUserExceptionAsync
%   unknownLocalException
%   unknownLocalExceptionAsync
%   unknownException
%   unknownExceptionAsync
%   localException
%   localExceptionAsync
%   userException
%   userExceptionAsync
%   csException
%   csExceptionAsync
%   unknownExceptionWithServantException
%   unknownExceptionWithServantExceptionAsync
%   impossibleException
%   impossibleExceptionAsync
%   intfUserException
%   intfUserExceptionAsync
%   asyncResponse
%   asyncResponseAsync
%   asyncException
%   asyncExceptionAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function requestFailedException(obj, varargin)
            % requestFailedException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('requestFailedException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = requestFailedExceptionAsync(obj, varargin)
            % requestFailedExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('requestFailedException', 0, false, [], 0, [], {}, varargin{:});
        end
        function unknownUserException(obj, varargin)
            % unknownUserException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('unknownUserException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = unknownUserExceptionAsync(obj, varargin)
            % unknownUserExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('unknownUserException', 0, false, [], 0, [], {}, varargin{:});
        end
        function unknownLocalException(obj, varargin)
            % unknownLocalException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('unknownLocalException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = unknownLocalExceptionAsync(obj, varargin)
            % unknownLocalExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('unknownLocalException', 0, false, [], 0, [], {}, varargin{:});
        end
        function unknownException(obj, varargin)
            % unknownException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('unknownException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = unknownExceptionAsync(obj, varargin)
            % unknownExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('unknownException', 0, false, [], 0, [], {}, varargin{:});
        end
        function localException(obj, varargin)
            % localException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('localException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = localExceptionAsync(obj, varargin)
            % localExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('localException', 0, false, [], 0, [], {}, varargin{:});
        end
        function userException(obj, varargin)
            % userException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('userException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = userExceptionAsync(obj, varargin)
            % userExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('userException', 0, false, [], 0, [], {}, varargin{:});
        end
        function csException(obj, varargin)
            % csException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('csException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = csExceptionAsync(obj, varargin)
            % csExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('csException', 0, false, [], 0, [], {}, varargin{:});
        end
        function unknownExceptionWithServantException(obj, varargin)
            % unknownExceptionWithServantException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('unknownExceptionWithServantException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = unknownExceptionWithServantExceptionAsync(obj, varargin)
            % unknownExceptionWithServantExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('unknownExceptionWithServantException', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = impossibleException(obj, throw, varargin)
            % impossibleException
            %
            % Parameters:
            %   throw (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(throw);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('impossibleException', 0, true, os_, true, Test.TestIntfPrx.impossibleException_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = impossibleExceptionAsync(obj, throw, varargin)
            % impossibleExceptionAsync
            %
            % Parameters:
            %   throw (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(throw);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('impossibleException', 0, true, os_, 1, @unmarshal, Test.TestIntfPrx.impossibleException_ex_, varargin{:});
        end
        function result = intfUserException(obj, throw, varargin)
            % intfUserException
            %
            % Parameters:
            %   throw (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(throw);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('intfUserException', 0, true, os_, true, Test.TestIntfPrx.intfUserException_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = intfUserExceptionAsync(obj, throw, varargin)
            % intfUserExceptionAsync
            %
            % Parameters:
            %   throw (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(throw);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('intfUserException', 0, true, os_, 1, @unmarshal, Test.TestIntfPrx.intfUserException_ex_, varargin{:});
        end
        function asyncResponse(obj, varargin)
            % asyncResponse
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('asyncResponse', 0, true, [], false, Test.TestIntfPrx.asyncResponse_ex_, varargin{:});
        end
        function r_ = asyncResponseAsync(obj, varargin)
            % asyncResponseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('asyncResponse', 0, true, [], 0, [], Test.TestIntfPrx.asyncResponse_ex_, varargin{:});
        end
        function asyncException(obj, varargin)
            % asyncException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('asyncException', 0, true, [], false, Test.TestIntfPrx.asyncException_ex_, varargin{:});
        end
        function r_ = asyncExceptionAsync(obj, varargin)
            % asyncExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('asyncException', 0, true, [], 0, [], Test.TestIntfPrx.asyncException_ex_, varargin{:});
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
            id = '::Test::TestIntf';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.TestIntfPrx');
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
            % Returns (Test.TestIntfPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestIntfPrx.ice_staticId(), 'Test.TestIntfPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.TestIntfPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestIntfPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        impossibleException_ex_ = { 'Test.TestImpossibleException' }
        intfUserException_ex_ = { 'Test.TestIntfUserException', 'Test.TestImpossibleException' }
        asyncResponse_ex_ = { 'Test.TestIntfUserException', 'Test.TestImpossibleException' }
        asyncException_ex_ = { 'Test.TestIntfUserException', 'Test.TestImpossibleException' }
    end
end
