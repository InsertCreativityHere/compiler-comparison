% TestControllerPrx   Summary of TestControllerPrx
%
% The test controller interface permits coordination between the test
% server and the test client. Prior to each call the client makes on
% various backend references, it calls step on the controller. The
% controller will manage the configuration of the system and return a
% flag indicating whether the next call is meant to succeed or not.
%
% TestControllerPrx Methods:
%   step
%   stepAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef TestControllerPrx < Ice.ObjectPrx
    methods
        function newState = step(obj, currentSession, currentState, varargin)
            % step
            %
            % Parameters:
            %   currentSession (Glacier2.SessionPrx)
            %   currentState (Test.TestToken)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.TestToken)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(currentSession);
            Test.TestToken.ice_write(os_, currentState);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('step', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            newState = Test.TestToken.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = stepAsync(obj, currentSession, currentState, varargin)
            % stepAsync
            %
            % Parameters:
            %   currentSession (Glacier2.SessionPrx)
            %   currentState (Test.TestToken)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(currentSession);
            Test.TestToken.ice_write(os_, currentState);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                newState = Test.TestToken.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = newState;
            end
            r_ = obj.iceInvokeAsync('step', 0, true, os_, 1, @unmarshal, {}, varargin{:});
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
            id = '::Test::TestController';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.TestControllerPrx');
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
            % Returns (Test.TestControllerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestControllerPrx.ice_staticId(), 'Test.TestControllerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.TestControllerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestControllerPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = TestControllerPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
