classdef HoldPrx < Ice.ObjectPrx
    %HOLDPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.HoldPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   HoldPrx Methods:
    %     putOnHold - Puts the adapter on hold, and optionally reactivates it.
    %     putOnHoldAsync - An asynchronous putOnHold.
    %     set - Saves value as the last value after a delay.
    %     setAsync - An asynchronous set.
    %     setOneway - Saves value as the last value.
    %     setOnewayAsync - An asynchronous setOneway.
    %     shutdown - Shuts down the server.
    %     shutdownAsync - An asynchronous shutdown.
    %     waitForHold - Starts a background task that calls waitForHold and activate on the adapter.
    %     waitForHoldAsync - An asynchronous waitForHold.
    %
    %   HoldPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Hold.
    %     uncheckedCast - Creates a HoldPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function putOnHold(obj, delay, context)
            %PUTONHOLD Puts the adapter on hold, and optionally reactivates it.
            %
            %   Input Arguments
            %     delay - When less than 0, puts the adapter on hold indefinitely. When 0, puts the adapter on hold and
            %       immediately reactivates it. When greater than 0, starts a background task that sleeps for delay
            %       milliseconds, puts the adapter on hold and then immediately reactivates it.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.HoldPrx
                delay (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(delay);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('putOnHold', 0, false, os_, false, {}, context);
        end

        function future = putOnHoldAsync(obj, delay, context)
            %PUTONHOLDASYNC Puts the adapter on hold, and optionally reactivates it.
            %
            %   Input Arguments
            %     delay - When less than 0, puts the adapter on hold indefinitely. When 0, puts the adapter on hold and
            %       immediately reactivates it. When greater than 0, starts a background task that sleeps for delay
            %       milliseconds, puts the adapter on hold and then immediately reactivates it.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also putOnHold, Ice.Future.
            
            arguments
                obj (1, 1) Test.HoldPrx
                delay (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(delay);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('putOnHold', 0, false, os_, 0, [], {}, context);
        end

        function waitForHold(obj, context)
            %WAITFORHOLD Starts a background task that calls waitForHold and activate on the adapter.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.HoldPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('waitForHold', 0, false, [], false, {}, context);
        end

        function future = waitForHoldAsync(obj, context)
            %WAITFORHOLDASYNC Starts a background task that calls waitForHold and activate on the adapter.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also waitForHold, Ice.Future.
            
            arguments
                obj (1, 1) Test.HoldPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('waitForHold', 0, false, [], 0, [], {}, context);
        end

        function setOneway(obj, value, expected, context)
            %SETONEWAY Saves value as the last value.
            %
            %   Input Arguments
            %     value - The new value.
            %       int32 scalar
            %     expected - The current value as expected by the caller.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.HoldPrx
                value (1, 1) int32
                expected (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(value);
            os_.writeInt(expected);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setOneway', 0, false, os_, false, {}, context);
        end

        function future = setOnewayAsync(obj, value, expected, context)
            %SETONEWAYASYNC Saves value as the last value.
            %
            %   Input Arguments
            %     value - The new value.
            %       int32 scalar
            %     expected - The current value as expected by the caller.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setOneway, Ice.Future.
            
            arguments
                obj (1, 1) Test.HoldPrx
                value (1, 1) int32
                expected (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(value);
            os_.writeInt(expected);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setOneway', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = set(obj, value, delay, context)
            %SET Saves value as the last value after a delay.
            %
            %   Input Arguments
            %     value - The new value.
            %       int32 scalar
            %     delay - The delay in milliseconds.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The previous value.
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.HoldPrx
                value (1, 1) int32
                delay (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(value);
            os_.writeInt(delay);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('set', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = setAsync(obj, value, delay, context)
            %SETASYNC Saves value as the last value after a delay.
            %
            %   Input Arguments
            %     value - The new value.
            %       int32 scalar
            %     delay - The delay in milliseconds.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also set, Ice.Future.
            
            arguments
                obj (1, 1) Test.HoldPrx
                value (1, 1) int32
                delay (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(value);
            os_.writeInt(delay);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('set', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN Shuts down the server.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.HoldPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('shutdown', 0, false, [], false, {}, context);
        end

        function future = shutdownAsync(obj, context)
            %SHUTDOWNASYNC Shuts down the server.
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
                obj (1, 1) Test.HoldPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Hold';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.HoldPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Hold.
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
            %     r - A Test.HoldPrx scalar if the target object implements Slice interface 
            %       ::Test::Hold; otherwise, an empty array of Test.HoldPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.HoldPrx.ice_staticId(), 'Test.HoldPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.HoldPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.HoldPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.HoldPrx', varargin{:});
        end
    end
end
