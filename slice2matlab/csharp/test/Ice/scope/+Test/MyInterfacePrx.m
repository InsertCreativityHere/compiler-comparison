classdef MyInterfacePrx < Ice.ObjectPrx
    %MYINTERFACEPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.MyInterfacePrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   MyInterfacePrx Methods:
    %     opMyClass
    %     opMyClassAsync - An asynchronous opMyClass.
    %     opMyClassMap
    %     opMyClassMapAsync - An asynchronous opMyClassMap.
    %     opMyClassSeq
    %     opMyClassSeqAsync - An asynchronous opMyClassSeq.
    %     opMyEnum
    %     opMyEnumAsync - An asynchronous opMyEnum.
    %     opMyOtherClass
    %     opMyOtherClassAsync - An asynchronous opMyOtherClass.
    %     opMyOtherStruct
    %     opMyOtherStructAsync - An asynchronous opMyOtherStruct.
    %     opMyStruct
    %     opMyStructAsync - An asynchronous opMyStruct.
    %     opMyStructMap
    %     opMyStructMapAsync - An asynchronous opMyStructMap.
    %     opMyStructSeq
    %     opMyStructSeqAsync - An asynchronous opMyStructSeq.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   MyInterfacePrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::MyInterface.
    %     uncheckedCast - Creates a MyInterfacePrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [returnValue, s2] = opMyStruct(obj, s1, context)
            %OPMYSTRUCT
            %
            %   Input Arguments
            %     s1
            %       Test.MyStruct scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MyStruct scalar
            %     s2
            %       Test.MyStruct scalar
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                s1 (1, 1) Test.MyStruct
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyStruct.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyStruct', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            s2 = Test.MyStruct.ice_read(is_);
            returnValue = Test.MyStruct.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opMyStructAsync(obj, s1, context)
            %OPMYSTRUCTASYNC
            %
            %   Input Arguments
            %     s1
            %       Test.MyStruct scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyStruct, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                s1 (1, 1) Test.MyStruct
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyStruct.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.MyStruct.ice_read(is_);
                returnValue = Test.MyStruct.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = s2;
            end
            future = obj.iceInvokeAsync('opMyStruct', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, s2] = opMyStructSeq(obj, s1, context)
            %OPMYSTRUCTSEQ
            %
            %   Input Arguments
            %     s1
            %       Test.MyStruct vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MyStruct vector
            %     s2
            %       Test.MyStruct vector
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                s1 (1, :) Test.MyStruct
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyStructSeq.write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyStructSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            s2 = Test.MyStructSeq.read(is_);
            returnValue = Test.MyStructSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = opMyStructSeqAsync(obj, s1, context)
            %OPMYSTRUCTSEQASYNC
            %
            %   Input Arguments
            %     s1
            %       Test.MyStruct vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyStructSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                s1 (1, :) Test.MyStruct
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyStructSeq.write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.MyStructSeq.read(is_);
                returnValue = Test.MyStructSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = s2;
            end
            future = obj.iceInvokeAsync('opMyStructSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, s2] = opMyStructMap(obj, s1, context)
            %OPMYSTRUCTMAP
            %
            %   Input Arguments
            %     s1
            %       string, Test.MyStruct) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, Test.MyStruct) scalar
            %     s2
            %       string, Test.MyStruct) scalar
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                s1 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyStructMap.write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyStructMap', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            s2 = Test.MyStructMap.read(is_);
            returnValue = Test.MyStructMap.read(is_);
            is_.endEncapsulation();
        end

        function future = opMyStructMapAsync(obj, s1, context)
            %OPMYSTRUCTMAPASYNC
            %
            %   Input Arguments
            %     s1
            %       string, Test.MyStruct) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyStructMap, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                s1 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyStructMap.write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.MyStructMap.read(is_);
                returnValue = Test.MyStructMap.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = s2;
            end
            future = obj.iceInvokeAsync('opMyStructMap', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, c2] = opMyClass(obj, c1, context)
            %OPMYCLASS
            %
            %   Input Arguments
            %     c1
            %       Test.MyClass scalar | empty array of Test.MyClass
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MyClass scalar | empty array of Test.MyClass
            %     c2
            %       Test.MyClass scalar | empty array of Test.MyClass
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                c1 Test.MyClass {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyClass', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            c2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) c2_h_.set(v), 'Test.MyClass');
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.MyClass');
            is_.readPendingValues();
            is_.endEncapsulation();
            c2 = c2_h_.value;
            returnValue = returnValue_h_.value;
        end

        function future = opMyClassAsync(obj, c1, context)
            %OPMYCLASSASYNC
            %
            %   Input Arguments
            %     c1
            %       Test.MyClass scalar | empty array of Test.MyClass
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyClass, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                c1 Test.MyClass {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                c2 = IceInternal.ValueHolder();
                is_.readValue(@(v) c2.set(v), 'Test.MyClass');
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.MyClass');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
                varargout{2} = c2.value;
            end
            future = obj.iceInvokeAsync('opMyClass', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, c2] = opMyClassSeq(obj, c1, context)
            %OPMYCLASSSEQ
            %
            %   Input Arguments
            %     c1
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     c2
            %       cell array
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                c1 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyClassSeq.write(os_, c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyClassSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            c2 = Test.MyClassSeq.read(is_);
            returnValue = Test.MyClassSeq.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            c2 = Test.MyClassSeq.convert(c2);
            returnValue = Test.MyClassSeq.convert(returnValue);
        end

        function future = opMyClassSeqAsync(obj, c1, context)
            %OPMYCLASSSEQASYNC
            %
            %   Input Arguments
            %     c1
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyClassSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                c1 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyClassSeq.write(os_, c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                c2 = Test.MyClassSeq.read(is_);
                returnValue = Test.MyClassSeq.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.MyClassSeq.convert(returnValue);
                varargout{2} = Test.MyClassSeq.convert(c2);
            end
            future = obj.iceInvokeAsync('opMyClassSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, c2] = opMyClassMap(obj, c1, context)
            %OPMYCLASSMAP
            %
            %   Input Arguments
            %     c1
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, cell) scalar
            %     c2
            %       string, cell) scalar
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                c1 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyClassMap.write(os_, c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyClassMap', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            c2 = Test.MyClassMap.read(is_);
            returnValue = Test.MyClassMap.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            c2 = Test.MyClassMap.convert(c2);
            returnValue = Test.MyClassMap.convert(returnValue);
        end

        function future = opMyClassMapAsync(obj, c1, context)
            %OPMYCLASSMAPASYNC
            %
            %   Input Arguments
            %     c1
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyClassMap, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                c1 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyClassMap.write(os_, c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                c2 = Test.MyClassMap.read(is_);
                returnValue = Test.MyClassMap.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.MyClassMap.convert(returnValue);
                varargout{2} = Test.MyClassMap.convert(c2);
            end
            future = obj.iceInvokeAsync('opMyClassMap', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function returnValue = opMyEnum(obj, e1, context)
            %OPMYENUM
            %
            %   Input Arguments
            %     e1
            %       Test.MyEnum scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MyEnum scalar
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                e1 (1, 1) Test.MyEnum
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnum.ice_write(os_, e1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyEnum', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.MyEnum.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opMyEnumAsync(obj, e1, context)
            %OPMYENUMASYNC
            %
            %   Input Arguments
            %     e1
            %       Test.MyEnum scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyEnum, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                e1 (1, 1) Test.MyEnum
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnum.ice_write(os_, e1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.MyEnum.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opMyEnum', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opMyOtherStruct(obj, s1, context)
            %OPMYOTHERSTRUCT
            %
            %   Input Arguments
            %     s1
            %       Test.MyOtherStruct scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MyOtherStruct scalar
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                s1 (1, 1) Test.MyOtherStruct
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyOtherStruct.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyOtherStruct', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.MyOtherStruct.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opMyOtherStructAsync(obj, s1, context)
            %OPMYOTHERSTRUCTASYNC
            %
            %   Input Arguments
            %     s1
            %       Test.MyOtherStruct scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyOtherStruct, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                s1 (1, 1) Test.MyOtherStruct
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyOtherStruct.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.MyOtherStruct.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opMyOtherStruct', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opMyOtherClass(obj, c1, context)
            %OPMYOTHERCLASS
            %
            %   Input Arguments
            %     c1
            %       Test.MyOtherClass scalar | empty array of Test.MyOtherClass
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MyOtherClass scalar | empty array of Test.MyOtherClass
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                c1 Test.MyOtherClass {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyOtherClass', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.MyOtherClass');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = opMyOtherClassAsync(obj, c1, context)
            %OPMYOTHERCLASSASYNC
            %
            %   Input Arguments
            %     c1
            %       Test.MyOtherClass scalar | empty array of Test.MyOtherClass
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyOtherClass, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
                c1 Test.MyOtherClass {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.MyOtherClass');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('opMyOtherClass', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MyInterfacePrx
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
                obj (1, 1) Test.MyInterfacePrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::MyInterface';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.MyInterfacePrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::MyInterface.
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
            %     r - A Test.MyInterfacePrx scalar if the target object implements Slice interface 
            %       ::Test::MyInterface; otherwise, an empty array of Test.MyInterfacePrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MyInterfacePrx.ice_staticId(), 'Test.MyInterfacePrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.MyInterfacePrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.MyInterfacePrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MyInterfacePrx', varargin{:});
        end
    end
end
