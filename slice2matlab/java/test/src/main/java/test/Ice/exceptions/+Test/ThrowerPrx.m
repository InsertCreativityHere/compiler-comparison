classdef ThrowerPrx < Ice.ObjectPrx
    %THROWERPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.ThrowerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ThrowerPrx Methods:
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     supportsAssertException
    %     supportsAssertExceptionAsync - An asynchronous supportsAssertException.
    %     supportsUndeclaredExceptions
    %     supportsUndeclaredExceptionsAsync - An asynchronous supportsUndeclaredExceptions.
    %     throwAasA
    %     throwAasAAsync - An asynchronous throwAasA.
    %     throwAfterException
    %     throwAfterExceptionAsync - An asynchronous throwAfterException.
    %     throwAfterResponse
    %     throwAfterResponseAsync - An asynchronous throwAfterResponse.
    %     throwAorDasAorD
    %     throwAorDasAorDAsync - An asynchronous throwAorDasAorD.
    %     throwAssertException
    %     throwAssertExceptionAsync - An asynchronous throwAssertException.
    %     throwBasA
    %     throwBasAAsync - An asynchronous throwBasA.
    %     throwBasB
    %     throwBasBAsync - An asynchronous throwBasB.
    %     throwCasA
    %     throwCasAAsync - An asynchronous throwCasA.
    %     throwCasB
    %     throwCasBAsync - An asynchronous throwCasB.
    %     throwCasC
    %     throwCasCAsync - An asynchronous throwCasC.
    %     throwDispatchException
    %     throwDispatchExceptionAsync - An asynchronous throwDispatchException.
    %     throwLocalException
    %     throwLocalExceptionAsync - An asynchronous throwLocalException.
    %     throwLocalExceptionIdempotent
    %     throwLocalExceptionIdempotentAsync - An asynchronous throwLocalExceptionIdempotent.
    %     throwMemoryLimitException
    %     throwMemoryLimitExceptionAsync - An asynchronous throwMemoryLimitException.
    %     throwNonIceException
    %     throwNonIceExceptionAsync - An asynchronous throwNonIceException.
    %     throwUndeclaredA
    %     throwUndeclaredAAsync - An asynchronous throwUndeclaredA.
    %     throwUndeclaredB
    %     throwUndeclaredBAsync - An asynchronous throwUndeclaredB.
    %     throwUndeclaredC
    %     throwUndeclaredCAsync - An asynchronous throwUndeclaredC.
    %
    %   ThrowerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Thrower.
    %     uncheckedCast - Creates a ThrowerPrx from another proxy without any validation.
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ThrowerPrx
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
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end

        function returnValue = supportsUndeclaredExceptions(obj, context)
            %SUPPORTSUNDECLAREDEXCEPTIONS
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical scalar
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('supportsUndeclaredExceptions', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = supportsUndeclaredExceptionsAsync(obj, context)
            %SUPPORTSUNDECLAREDEXCEPTIONSASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also supportsUndeclaredExceptions, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('supportsUndeclaredExceptions', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = supportsAssertException(obj, context)
            %SUPPORTSASSERTEXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical scalar
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('supportsAssertException', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = supportsAssertExceptionAsync(obj, context)
            %SUPPORTSASSERTEXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also supportsAssertException, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('supportsAssertException', 0, true, [], 1, @unmarshal, {}, context);
        end

        function throwAasA(obj, a, context)
            %THROWAASA
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.A
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwAasA', 0, true, os_, false, Test.ThrowerPrx.throwAasA_ex_, context);
        end

        function future = throwAasAAsync(obj, a, context)
            %THROWAASAASYNC
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwAasA, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('throwAasA', 0, true, os_, 0, [], Test.ThrowerPrx.throwAasA_ex_, context);
        end

        function throwAorDasAorD(obj, a, context)
            %THROWAORDASAORD
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.A
            %     Test.D
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwAorDasAorD', 0, true, os_, false, Test.ThrowerPrx.throwAorDasAorD_ex_, context);
        end

        function future = throwAorDasAorDAsync(obj, a, context)
            %THROWAORDASAORDASYNC
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwAorDasAorD, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('throwAorDasAorD', 0, true, os_, 0, [], Test.ThrowerPrx.throwAorDasAorD_ex_, context);
        end

        function throwBasA(obj, a, b, context)
            %THROWBASA
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     b
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.A
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                b (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwBasA', 0, true, os_, false, Test.ThrowerPrx.throwBasA_ex_, context);
        end

        function future = throwBasAAsync(obj, a, b, context)
            %THROWBASAASYNC
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     b
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwBasA, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                b (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('throwBasA', 0, true, os_, 0, [], Test.ThrowerPrx.throwBasA_ex_, context);
        end

        function throwCasA(obj, a, b, c, context)
            %THROWCASA
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     b
            %       int32 scalar
            %     c
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.A
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                b (1, 1) int32
                c (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwCasA', 0, true, os_, false, Test.ThrowerPrx.throwCasA_ex_, context);
        end

        function future = throwCasAAsync(obj, a, b, c, context)
            %THROWCASAASYNC
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     b
            %       int32 scalar
            %     c
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwCasA, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                b (1, 1) int32
                c (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('throwCasA', 0, true, os_, 0, [], Test.ThrowerPrx.throwCasA_ex_, context);
        end

        function throwBasB(obj, a, b, context)
            %THROWBASB
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     b
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.B
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                b (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwBasB', 0, true, os_, false, Test.ThrowerPrx.throwBasB_ex_, context);
        end

        function future = throwBasBAsync(obj, a, b, context)
            %THROWBASBASYNC
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     b
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwBasB, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                b (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('throwBasB', 0, true, os_, 0, [], Test.ThrowerPrx.throwBasB_ex_, context);
        end

        function throwCasB(obj, a, b, c, context)
            %THROWCASB
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     b
            %       int32 scalar
            %     c
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.B
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                b (1, 1) int32
                c (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwCasB', 0, true, os_, false, Test.ThrowerPrx.throwCasB_ex_, context);
        end

        function future = throwCasBAsync(obj, a, b, c, context)
            %THROWCASBASYNC
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     b
            %       int32 scalar
            %     c
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwCasB, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                b (1, 1) int32
                c (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('throwCasB', 0, true, os_, 0, [], Test.ThrowerPrx.throwCasB_ex_, context);
        end

        function throwCasC(obj, a, b, c, context)
            %THROWCASC
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     b
            %       int32 scalar
            %     c
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.C
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                b (1, 1) int32
                c (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwCasC', 0, true, os_, false, Test.ThrowerPrx.throwCasC_ex_, context);
        end

        function future = throwCasCAsync(obj, a, b, c, context)
            %THROWCASCASYNC
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     b
            %       int32 scalar
            %     c
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwCasC, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                b (1, 1) int32
                c (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('throwCasC', 0, true, os_, 0, [], Test.ThrowerPrx.throwCasC_ex_, context);
        end

        function throwUndeclaredA(obj, a, context)
            %THROWUNDECLAREDA
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwUndeclaredA', 0, false, os_, false, {}, context);
        end

        function future = throwUndeclaredAAsync(obj, a, context)
            %THROWUNDECLAREDAASYNC
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwUndeclaredA, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('throwUndeclaredA', 0, false, os_, 0, [], {}, context);
        end

        function throwUndeclaredB(obj, a, b, context)
            %THROWUNDECLAREDB
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     b
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                b (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwUndeclaredB', 0, false, os_, false, {}, context);
        end

        function future = throwUndeclaredBAsync(obj, a, b, context)
            %THROWUNDECLAREDBASYNC
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     b
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwUndeclaredB, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                b (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('throwUndeclaredB', 0, false, os_, 0, [], {}, context);
        end

        function throwUndeclaredC(obj, a, b, c, context)
            %THROWUNDECLAREDC
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     b
            %       int32 scalar
            %     c
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                b (1, 1) int32
                c (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwUndeclaredC', 0, false, os_, false, {}, context);
        end

        function future = throwUndeclaredCAsync(obj, a, b, c, context)
            %THROWUNDECLAREDCASYNC
            %
            %   Input Arguments
            %     a
            %       int32 scalar
            %     b
            %       int32 scalar
            %     c
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwUndeclaredC, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                a (1, 1) int32
                b (1, 1) int32
                c (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('throwUndeclaredC', 0, false, os_, 0, [], {}, context);
        end

        function throwLocalException(obj, context)
            %THROWLOCALEXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwLocalException', 0, false, [], false, {}, context);
        end

        function future = throwLocalExceptionAsync(obj, context)
            %THROWLOCALEXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwLocalException, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwLocalException', 0, false, [], 0, [], {}, context);
        end

        function throwNonIceException(obj, context)
            %THROWNONICEEXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwNonIceException', 0, false, [], false, {}, context);
        end

        function future = throwNonIceExceptionAsync(obj, context)
            %THROWNONICEEXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwNonIceException, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwNonIceException', 0, false, [], 0, [], {}, context);
        end

        function throwAssertException(obj, context)
            %THROWASSERTEXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwAssertException', 0, false, [], false, {}, context);
        end

        function future = throwAssertExceptionAsync(obj, context)
            %THROWASSERTEXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwAssertException, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwAssertException', 0, false, [], 0, [], {}, context);
        end

        function returnValue = throwMemoryLimitException(obj, seq, context)
            %THROWMEMORYLIMITEXCEPTION
            %
            %   Input Arguments
            %     seq
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                seq (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(seq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('throwMemoryLimitException', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = throwMemoryLimitExceptionAsync(obj, seq, context)
            %THROWMEMORYLIMITEXCEPTIONASYNC
            %
            %   Input Arguments
            %     seq
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwMemoryLimitException, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                seq (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(seq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('throwMemoryLimitException', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function throwLocalExceptionIdempotent(obj, context)
            %THROWLOCALEXCEPTIONIDEMPOTENT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwLocalExceptionIdempotent', 2, false, [], false, {}, context);
        end

        function future = throwLocalExceptionIdempotentAsync(obj, context)
            %THROWLOCALEXCEPTIONIDEMPOTENTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwLocalExceptionIdempotent, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwLocalExceptionIdempotent', 2, false, [], 0, [], {}, context);
        end

        function throwDispatchException(obj, replyStatus, context)
            %THROWDISPATCHEXCEPTION
            %
            %   Input Arguments
            %     replyStatus
            %       uint8 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                replyStatus (1, 1) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByte(replyStatus);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwDispatchException', 0, false, os_, false, {}, context);
        end

        function future = throwDispatchExceptionAsync(obj, replyStatus, context)
            %THROWDISPATCHEXCEPTIONASYNC
            %
            %   Input Arguments
            %     replyStatus
            %       uint8 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwDispatchException, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                replyStatus (1, 1) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByte(replyStatus);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('throwDispatchException', 0, false, os_, 0, [], {}, context);
        end

        function throwAfterResponse(obj, context)
            %THROWAFTERRESPONSE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwAfterResponse', 0, false, [], false, {}, context);
        end

        function future = throwAfterResponseAsync(obj, context)
            %THROWAFTERRESPONSEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwAfterResponse, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwAfterResponse', 0, false, [], 0, [], {}, context);
        end

        function throwAfterException(obj, context)
            %THROWAFTEREXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.A
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwAfterException', 0, true, [], false, Test.ThrowerPrx.throwAfterException_ex_, context);
        end

        function future = throwAfterExceptionAsync(obj, context)
            %THROWAFTEREXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwAfterException, Ice.Future.
            
            arguments
                obj (1, 1) Test.ThrowerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwAfterException', 0, true, [], 0, [], Test.ThrowerPrx.throwAfterException_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Thrower';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.ThrowerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Thrower.
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
            %     r - A Test.ThrowerPrx scalar if the target object implements Slice interface 
            %       ::Test::Thrower; otherwise, an empty array of Test.ThrowerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.ThrowerPrx.ice_staticId(), 'Test.ThrowerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.ThrowerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.ThrowerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.ThrowerPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        throwAasA_ex_ = { 'Test.A' }
        throwAorDasAorD_ex_ = { 'Test.A', 'Test.D' }
        throwBasA_ex_ = { 'Test.A' }
        throwCasA_ex_ = { 'Test.A' }
        throwBasB_ex_ = { 'Test.B' }
        throwCasB_ex_ = { 'Test.B' }
        throwCasC_ex_ = { 'Test.C' }
        throwAfterException_ex_ = { 'Test.A' }
    end
end
