classdef UnexpectedObjectExceptionTestPrx < Ice.ObjectPrx
    %UNEXPECTEDOBJECTEXCEPTIONTESTPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.UnexpectedObjectExceptionTestPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   UnexpectedObjectExceptionTestPrx Methods:
    %     op
    %     opAsync - An asynchronous op.
    %
    %   UnexpectedObjectExceptionTestPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::UnexpectedObjectExceptionTest.
    %     uncheckedCast - Creates a UnexpectedObjectExceptionTestPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = op(obj, context)
            %OP
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.Empty scalar | empty array of Test.Empty
            
            arguments
                obj (1, 1) Test.UnexpectedObjectExceptionTestPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('op', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.Empty');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = opAsync(obj, context)
            %OPASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also op, Ice.Future.
            
            arguments
                obj (1, 1) Test.UnexpectedObjectExceptionTestPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.Empty');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('op', 0, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::UnexpectedObjectExceptionTest';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.UnexpectedObjectExceptionTestPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::UnexpectedObjectExceptionTest.
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
            %     r - A Test.UnexpectedObjectExceptionTestPrx scalar if the target object implements Slice interface 
            %       ::Test::UnexpectedObjectExceptionTest; otherwise, an empty array of Test.UnexpectedObjectExceptionTestPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.UnexpectedObjectExceptionTestPrx.ice_staticId(), 'Test.UnexpectedObjectExceptionTestPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.UnexpectedObjectExceptionTestPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.UnexpectedObjectExceptionTestPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.UnexpectedObjectExceptionTestPrx', varargin{:});
        end
    end
end
