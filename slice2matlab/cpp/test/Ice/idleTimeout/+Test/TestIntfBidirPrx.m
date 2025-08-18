classdef TestIntfBidirPrx < Ice.ObjectPrx
    %TESTINTFBIDIRPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.TestIntfBidirPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   TestIntfBidirPrx Methods:
    %     makeSleep
    %     makeSleepAsync - An asynchronous makeSleep.
    %
    %   TestIntfBidirPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntfBidir.
    %     uncheckedCast - Creates a TestIntfBidirPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function makeSleep(obj, aborted, ms, target, context)
            %MAKESLEEP
            %
            %   Input Arguments
            %     aborted
            %       logical scalar
            %     ms
            %       int32 scalar
            %     target
            %       Test.DelayedTestIntfPrx scalar | empty array of Test.DelayedTestIntfPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfBidirPrx
                aborted (1, 1) logical
                ms (1, 1) int32
                target Test.DelayedTestIntfPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(aborted);
            os_.writeInt(ms);
            os_.writeProxy(target);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('makeSleep', 0, false, os_, false, {}, context);
        end

        function future = makeSleepAsync(obj, aborted, ms, target, context)
            %MAKESLEEPASYNC
            %
            %   Input Arguments
            %     aborted
            %       logical scalar
            %     ms
            %       int32 scalar
            %     target
            %       Test.DelayedTestIntfPrx scalar | empty array of Test.DelayedTestIntfPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also makeSleep, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfBidirPrx
                aborted (1, 1) logical
                ms (1, 1) int32
                target Test.DelayedTestIntfPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(aborted);
            os_.writeInt(ms);
            os_.writeProxy(target);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('makeSleep', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::TestIntfBidir';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.TestIntfBidirPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntfBidir.
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
            %     r - A Test.TestIntfBidirPrx scalar if the target object implements Slice interface 
            %       ::Test::TestIntfBidir; otherwise, an empty array of Test.TestIntfBidirPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestIntfBidirPrx.ice_staticId(), 'Test.TestIntfBidirPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.TestIntfBidirPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.TestIntfBidirPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestIntfBidirPrx', varargin{:});
        end
    end
end
