% RetryPrx   Summary of RetryPrx
%
% RetryPrx Methods:
%   op
%   opAsync
%   opIdempotent
%   opIdempotentAsync
%   opNotIdempotent
%   opNotIdempotentAsync
%   sleep
%   sleepAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef RetryPrx < Ice.ObjectPrx
    methods
        function op(obj, kill, varargin)
            % op
            %
            % Parameters:
            %   kill (logical)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(kill);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('op', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = opAsync(obj, kill, varargin)
            % opAsync
            %
            % Parameters:
            %   kill (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(kill);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('op', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = opIdempotent(obj, c, varargin)
            % opIdempotent
            %
            % Parameters:
            %   c (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIdempotent', 1, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = opIdempotentAsync(obj, c, varargin)
            % opIdempotentAsync
            %
            % Parameters:
            %   c (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opIdempotent', 1, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function opNotIdempotent(obj, varargin)
            % opNotIdempotent
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('opNotIdempotent', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opNotIdempotentAsync(obj, varargin)
            % opNotIdempotentAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('opNotIdempotent', 0, false, [], 0, [], {}, varargin{:});
        end
        function sleep(obj, delay, varargin)
            % sleep
            %
            % Parameters:
            %   delay (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(delay);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sleep', 1, false, os_, false, {}, varargin{:});
        end
        function r_ = sleepAsync(obj, delay, varargin)
            % sleepAsync
            %
            % Parameters:
            %   delay (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(delay);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('sleep', 1, false, os_, 0, [], {}, varargin{:});
        end
        function shutdown(obj, varargin)
            % shutdown
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('shutdown', 1, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            % shutdownAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('shutdown', 1, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Retry';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.RetryPrx');
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
            % Returns (Test.RetryPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.RetryPrx.ice_staticId(), 'Test.RetryPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.RetryPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.RetryPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = RetryPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
