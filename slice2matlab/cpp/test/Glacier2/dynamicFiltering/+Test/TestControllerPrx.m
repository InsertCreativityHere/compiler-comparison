classdef TestControllerPrx < Ice.ObjectPrx
    %TESTCONTROLLERPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.TestControllerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   TestControllerPrx Methods:
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     step
    %     stepAsync - An asynchronous step.
    %
    %   TestControllerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::TestController.
    %     uncheckedCast - Creates a TestControllerPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function newState = step(obj, currentSession, currentState, context)
            %STEP
            %
            %   Input Arguments
            %     currentSession
            %       Glacier2.SessionPrx scalar | empty array of Glacier2.SessionPrx
            %     currentState
            %       Test.TestToken scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     newState
            %       Test.TestToken scalar
            
            arguments
                obj (1, 1) Test.TestControllerPrx
                currentSession Glacier2.SessionPrx {mustBeScalarOrEmpty}
                currentState (1, 1) Test.TestToken
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(currentSession);
            Test.TestToken.ice_write(os_, currentState);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('step', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            newState = Test.TestToken.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = stepAsync(obj, currentSession, currentState, context)
            %STEPASYNC
            %
            %   Input Arguments
            %     currentSession
            %       Glacier2.SessionPrx scalar | empty array of Glacier2.SessionPrx
            %     currentState
            %       Test.TestToken scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also step, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestControllerPrx
                currentSession Glacier2.SessionPrx {mustBeScalarOrEmpty}
                currentState (1, 1) Test.TestToken
                context (1, 1) dictionary = dictionary
            end
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
            future = obj.iceInvokeAsync('step', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestControllerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('shutdown', 0, false, [], false, {}, context);
        end

        function future = shutdownAsync(obj, context)
            %SHUTDOWNASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also shutdown, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestControllerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::TestController';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.TestControllerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::TestController.
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
            %     r - A Test.TestControllerPrx scalar if the target object implements Slice interface 
            %       ::Test::TestController; otherwise, an empty array of Test.TestControllerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestControllerPrx.ice_staticId(), 'Test.TestControllerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.TestControllerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.TestControllerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestControllerPrx', varargin{:});
        end
    end
end
