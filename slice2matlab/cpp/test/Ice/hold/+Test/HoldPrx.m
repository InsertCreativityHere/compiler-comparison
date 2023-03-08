% HoldPrx   Summary of HoldPrx
%
% HoldPrx Methods:
%   putOnHold
%   putOnHoldAsync
%   waitForHold
%   waitForHoldAsync
%   setOneway
%   setOnewayAsync
%   set
%   setAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef HoldPrx < Ice.ObjectPrx
    methods
        function putOnHold(obj, seconds, varargin)
            % putOnHold
            %
            % Parameters:
            %   seconds (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(seconds);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('putOnHold', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = putOnHoldAsync(obj, seconds, varargin)
            % putOnHoldAsync
            %
            % Parameters:
            %   seconds (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(seconds);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('putOnHold', 0, false, os_, 0, [], {}, varargin{:});
        end
        function waitForHold(obj, varargin)
            % waitForHold
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('waitForHold', 0, false, [], false, {}, varargin{:});
        end
        function r_ = waitForHoldAsync(obj, varargin)
            % waitForHoldAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('waitForHold', 0, false, [], 0, [], {}, varargin{:});
        end
        function setOneway(obj, value, expected, varargin)
            % setOneway
            %
            % Parameters:
            %   value (int32)
            %   expected (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(value);
            os_.writeInt(expected);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setOneway', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = setOnewayAsync(obj, value, expected, varargin)
            % setOnewayAsync
            %
            % Parameters:
            %   value (int32)
            %   expected (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(value);
            os_.writeInt(expected);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setOneway', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = set(obj, value, delay, varargin)
            % set
            %
            % Parameters:
            %   value (int32)
            %   delay (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(value);
            os_.writeInt(delay);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('set', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = setAsync(obj, value, delay, varargin)
            % setAsync
            %
            % Parameters:
            %   value (int32)
            %   delay (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(value);
            os_.writeInt(delay);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('set', 0, true, os_, 1, @unmarshal, {}, varargin{:});
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
            id = '::Test::Hold';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.HoldPrx');
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
            % Returns (Test.HoldPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.HoldPrx.ice_staticId(), 'Test.HoldPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.HoldPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.HoldPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = HoldPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
