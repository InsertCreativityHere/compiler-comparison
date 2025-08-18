classdef MyDerivedClassPrx < Test.MyClassPrx
    %MYDERIVEDCLASSPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.MyDerivedClassPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   MyDerivedClassPrx Methods:
    %     opDerived
    %     opDerivedAsync - An asynchronous opDerived.
    %     opMyClass1
    %     opMyClass1Async - An asynchronous opMyClass1.
    %     opMyStruct1
    %     opMyStruct1Async - An asynchronous opMyStruct1.
    %
    %   MyDerivedClassPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::MyDerivedClass.
    %     uncheckedCast - Creates a MyDerivedClassPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function opDerived(obj, context)
            %OPDERIVED
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MyDerivedClassPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('opDerived', 0, false, [], false, {}, context);
        end

        function future = opDerivedAsync(obj, context)
            %OPDERIVEDASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opDerived, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyDerivedClassPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('opDerived', 0, false, [], 0, [], {}, context);
        end

        function returnValue = opMyClass1(obj, opMyClass1, context)
            %OPMYCLASS1
            %
            %   Input Arguments
            %     opMyClass1
            %       Test.MyClass1 scalar | empty array of Test.MyClass1
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MyClass1 scalar | empty array of Test.MyClass1
            
            arguments
                obj (1, 1) Test.MyDerivedClassPrx
                opMyClass1 Test.MyClass1 {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(opMyClass1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyClass1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.MyClass1');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = opMyClass1Async(obj, opMyClass1, context)
            %OPMYCLASS1ASYNC
            %
            %   Input Arguments
            %     opMyClass1
            %       Test.MyClass1 scalar | empty array of Test.MyClass1
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyClass1, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyDerivedClassPrx
                opMyClass1 Test.MyClass1 {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(opMyClass1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.MyClass1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('opMyClass1', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opMyStruct1(obj, opMyStruct1, context)
            %OPMYSTRUCT1
            %
            %   Input Arguments
            %     opMyStruct1
            %       Test.MyStruct1 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MyStruct1 scalar
            
            arguments
                obj (1, 1) Test.MyDerivedClassPrx
                opMyStruct1 (1, 1) Test.MyStruct1
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyStruct1.ice_write(os_, opMyStruct1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyStruct1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.MyStruct1.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opMyStruct1Async(obj, opMyStruct1, context)
            %OPMYSTRUCT1ASYNC
            %
            %   Input Arguments
            %     opMyStruct1
            %       Test.MyStruct1 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyStruct1, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyDerivedClassPrx
                opMyStruct1 (1, 1) Test.MyStruct1
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyStruct1.ice_write(os_, opMyStruct1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.MyStruct1.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opMyStruct1', 0, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::MyDerivedClass';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.MyDerivedClassPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::MyDerivedClass.
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
            %     r - A Test.MyDerivedClassPrx scalar if the target object implements Slice interface 
            %       ::Test::MyDerivedClass; otherwise, an empty array of Test.MyDerivedClassPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MyDerivedClassPrx.ice_staticId(), 'Test.MyDerivedClassPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.MyDerivedClassPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.MyDerivedClassPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MyDerivedClassPrx', varargin{:});
        end
    end
end
