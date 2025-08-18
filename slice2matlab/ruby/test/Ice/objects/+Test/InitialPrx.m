classdef InitialPrx < Ice.ObjectPrx
    %INITIALPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.InitialPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   InitialPrx Methods:
    %     acceptsClassCycles
    %     acceptsClassCyclesAsync - An asynchronous acceptsClassCycles.
    %     getAMDMB
    %     getAMDMBAsync - An asynchronous getAMDMB.
    %     getAll
    %     getAllAsync - An asynchronous getAll.
    %     getB1
    %     getB1Async - An asynchronous getB1.
    %     getB2
    %     getB2Async - An asynchronous getB2.
    %     getC
    %     getCAsync - An asynchronous getC.
    %     getCompact
    %     getCompactAsync - An asynchronous getCompact.
    %     getD
    %     getDAsync - An asynchronous getD.
    %     getD1
    %     getD1Async - An asynchronous getD1.
    %     getK
    %     getKAsync - An asynchronous getK.
    %     getMB
    %     getMBAsync - An asynchronous getMB.
    %     hasF3
    %     hasF3Async - An asynchronous hasF3.
    %     opBaseSeq
    %     opBaseSeqAsync - An asynchronous opBaseSeq.
    %     opF1
    %     opF1Async - An asynchronous opF1.
    %     opF2
    %     opF2Async - An asynchronous opF2.
    %     opF3
    %     opF3Async - An asynchronous opF3.
    %     opM
    %     opMAsync - An asynchronous opM.
    %     opValue
    %     opValueAsync - An asynchronous opValue.
    %     opValueMap
    %     opValueMapAsync - An asynchronous opValueMap.
    %     opValueSeq
    %     opValueSeqAsync - An asynchronous opValueSeq.
    %     setCycle
    %     setCycleAsync - An asynchronous setCycle.
    %     setG
    %     setGAsync - An asynchronous setG.
    %     setRecursive
    %     setRecursiveAsync - An asynchronous setRecursive.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     throwEDerived
    %     throwEDerivedAsync - An asynchronous throwEDerived.
    %
    %   InitialPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Initial.
    %     uncheckedCast - Creates a InitialPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.InitialPrx
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
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end

        function returnValue = getB1(obj, context)
            %GETB1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.B scalar | empty array of Test.B
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getB1', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getB1Async(obj, context)
            %GETB1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getB1, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getB1', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getB2(obj, context)
            %GETB2
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.B scalar | empty array of Test.B
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getB2', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getB2Async(obj, context)
            %GETB2ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getB2, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getB2', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getC(obj, context)
            %GETC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.C scalar | empty array of Test.C
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getC', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.C');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getCAsync(obj, context)
            %GETCASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getC, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.C');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getC', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getD(obj, context)
            %GETD
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.D scalar | empty array of Test.D
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getD', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.D');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getDAsync(obj, context)
            %GETDASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getD, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.D');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getD', 0, true, [], 1, @unmarshal, {}, context);
        end

        function setRecursive(obj, p, context)
            %SETRECURSIVE
            %
            %   Input Arguments
            %     p
            %       Test.Recursive scalar | empty array of Test.Recursive
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.InitialPrx
                p Test.Recursive {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setRecursive', 0, false, os_, false, {}, context);
        end

        function future = setRecursiveAsync(obj, p, context)
            %SETRECURSIVEASYNC
            %
            %   Input Arguments
            %     p
            %       Test.Recursive scalar | empty array of Test.Recursive
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setRecursive, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p Test.Recursive {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setRecursive', 0, false, os_, 0, [], {}, context);
        end

        function setCycle(obj, r, context)
            %SETCYCLE
            %
            %   Input Arguments
            %     r
            %       Test.Recursive scalar | empty array of Test.Recursive
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.InitialPrx
                r Test.Recursive {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(r);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setCycle', 0, false, os_, false, {}, context);
        end

        function future = setCycleAsync(obj, r, context)
            %SETCYCLEASYNC
            %
            %   Input Arguments
            %     r
            %       Test.Recursive scalar | empty array of Test.Recursive
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setCycle, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                r Test.Recursive {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(r);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setCycle', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = acceptsClassCycles(obj, context)
            %ACCEPTSCLASSCYCLES
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical scalar
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('acceptsClassCycles', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = acceptsClassCyclesAsync(obj, context)
            %ACCEPTSCLASSCYCLESASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also acceptsClassCycles, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('acceptsClassCycles', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getMB(obj, context)
            %GETMB
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.B scalar | empty array of Test.B
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getMB', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getMBAsync(obj, context)
            %GETMBASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getMB, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getMB', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getAMDMB(obj, context)
            %GETAMDMB
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.B scalar | empty array of Test.B
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getAMDMB', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getAMDMBAsync(obj, context)
            %GETAMDMBASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getAMDMB, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getAMDMB', 0, true, [], 1, @unmarshal, {}, context);
        end

        function [b1, b2, theC, theD] = getAll(obj, context)
            %GETALL
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     b1
            %       Test.B scalar | empty array of Test.B
            %     b2
            %       Test.B scalar | empty array of Test.B
            %     theC
            %       Test.C scalar | empty array of Test.C
            %     theD
            %       Test.D scalar | empty array of Test.D
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getAll', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            b1_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) b1_h_.set(v), 'Test.B');
            b2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) b2_h_.set(v), 'Test.B');
            theC_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) theC_h_.set(v), 'Test.C');
            theD_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) theD_h_.set(v), 'Test.D');
            is_.readPendingValues();
            is_.endEncapsulation();
            b1 = b1_h_.value;
            b2 = b2_h_.value;
            theC = theC_h_.value;
            theD = theD_h_.value;
        end

        function future = getAllAsync(obj, context)
            %GETALLASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getAll, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                b1 = IceInternal.ValueHolder();
                is_.readValue(@(v) b1.set(v), 'Test.B');
                b2 = IceInternal.ValueHolder();
                is_.readValue(@(v) b2.set(v), 'Test.B');
                theC = IceInternal.ValueHolder();
                is_.readValue(@(v) theC.set(v), 'Test.C');
                theD = IceInternal.ValueHolder();
                is_.readValue(@(v) theD.set(v), 'Test.D');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = b1.value;
                varargout{2} = b2.value;
                varargout{3} = theC.value;
                varargout{4} = theD.value;
            end
            future = obj.iceInvokeAsync('getAll', 0, true, [], 4, @unmarshal, {}, context);
        end

        function returnValue = getK(obj, context)
            %GETK
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.K scalar | empty array of Test.K
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getK', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.K');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getKAsync(obj, context)
            %GETKASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getK, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.K');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getK', 0, true, [], 1, @unmarshal, {}, context);
        end

        function [returnValue, v2] = opValue(obj, v1, context)
            %OPVALUE
            %
            %   Input Arguments
            %     v1
            %       Ice.Value scalar | empty array of Ice.Value
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Ice.Value scalar | empty array of Ice.Value
            %     v2
            %       Ice.Value scalar | empty array of Ice.Value
            
            arguments
                obj (1, 1) Test.InitialPrx
                v1 Ice.Value {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(v1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opValue', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            v2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) v2_h_.set(v), 'Ice.Value');
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Ice.Value');
            is_.readPendingValues();
            is_.endEncapsulation();
            v2 = v2_h_.value;
            returnValue = returnValue_h_.value;
        end

        function future = opValueAsync(obj, v1, context)
            %OPVALUEASYNC
            %
            %   Input Arguments
            %     v1
            %       Ice.Value scalar | empty array of Ice.Value
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opValue, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                v1 Ice.Value {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(v1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = IceInternal.ValueHolder();
                is_.readValue(@(v) v2.set(v), 'Ice.Value');
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Ice.Value');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
                varargout{2} = v2.value;
            end
            future = obj.iceInvokeAsync('opValue', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, v2] = opValueSeq(obj, v1, context)
            %OPVALUESEQ
            %
            %   Input Arguments
            %     v1
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     v2
            %       cell array
            
            arguments
                obj (1, 1) Test.InitialPrx
                v1 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ValueSeq.write(os_, v1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opValueSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            v2 = Test.ValueSeq.read(is_);
            returnValue = Test.ValueSeq.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            v2 = Test.ValueSeq.convert(v2);
            returnValue = Test.ValueSeq.convert(returnValue);
        end

        function future = opValueSeqAsync(obj, v1, context)
            %OPVALUESEQASYNC
            %
            %   Input Arguments
            %     v1
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opValueSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                v1 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ValueSeq.write(os_, v1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = Test.ValueSeq.read(is_);
                returnValue = Test.ValueSeq.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.ValueSeq.convert(returnValue);
                varargout{2} = Test.ValueSeq.convert(v2);
            end
            future = obj.iceInvokeAsync('opValueSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, v2] = opValueMap(obj, v1, context)
            %OPVALUEMAP
            %
            %   Input Arguments
            %     v1
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, cell) scalar
            %     v2
            %       string, cell) scalar
            
            arguments
                obj (1, 1) Test.InitialPrx
                v1 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ValueMap.write(os_, v1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opValueMap', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            v2 = Test.ValueMap.read(is_);
            returnValue = Test.ValueMap.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            v2 = Test.ValueMap.convert(v2);
            returnValue = Test.ValueMap.convert(returnValue);
        end

        function future = opValueMapAsync(obj, v1, context)
            %OPVALUEMAPASYNC
            %
            %   Input Arguments
            %     v1
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opValueMap, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                v1 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ValueMap.write(os_, v1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = Test.ValueMap.read(is_);
                returnValue = Test.ValueMap.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.ValueMap.convert(returnValue);
                varargout{2} = Test.ValueMap.convert(v2);
            end
            future = obj.iceInvokeAsync('opValueMap', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function returnValue = getD1(obj, d1, context)
            %GETD1
            %
            %   Input Arguments
            %     d1
            %       Test.D1 scalar | empty array of Test.D1
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.D1 scalar | empty array of Test.D1
            
            arguments
                obj (1, 1) Test.InitialPrx
                d1 Test.D1 {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(d1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getD1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.D1');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getD1Async(obj, d1, context)
            %GETD1ASYNC
            %
            %   Input Arguments
            %     d1
            %       Test.D1 scalar | empty array of Test.D1
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getD1, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                d1 Test.D1 {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(d1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.D1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getD1', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function throwEDerived(obj, context)
            %THROWEDERIVED
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.EDerived
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwEDerived', 0, true, [], false, Test.InitialPrx.throwEDerived_ex_, context);
        end

        function future = throwEDerivedAsync(obj, context)
            %THROWEDERIVEDASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwEDerived, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwEDerived', 0, true, [], 0, [], Test.InitialPrx.throwEDerived_ex_, context);
        end

        function setG(obj, theG, context)
            %SETG
            %
            %   Input Arguments
            %     theG
            %       Test.G scalar | empty array of Test.G
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.InitialPrx
                theG Test.G {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(theG);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setG', 0, false, os_, false, {}, context);
        end

        function future = setGAsync(obj, theG, context)
            %SETGASYNC
            %
            %   Input Arguments
            %     theG
            %       Test.G scalar | empty array of Test.G
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setG, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                theG Test.G {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(theG);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setG', 0, false, os_, 0, [], {}, context);
        end

        function [returnValue, outSeq] = opBaseSeq(obj, inSeq, context)
            %OPBASESEQ
            %
            %   Input Arguments
            %     inSeq
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     outSeq
            %       cell array
            
            arguments
                obj (1, 1) Test.InitialPrx
                inSeq (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.BaseSeq.write(os_, inSeq);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBaseSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.BaseSeq.read(is_);
            returnValue = Test.BaseSeq.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            outSeq = Test.BaseSeq.convert(outSeq);
            returnValue = Test.BaseSeq.convert(returnValue);
        end

        function future = opBaseSeqAsync(obj, inSeq, context)
            %OPBASESEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBaseSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                inSeq (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.BaseSeq.write(os_, inSeq);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.BaseSeq.read(is_);
                returnValue = Test.BaseSeq.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.BaseSeq.convert(returnValue);
                varargout{2} = Test.BaseSeq.convert(outSeq);
            end
            future = obj.iceInvokeAsync('opBaseSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function returnValue = getCompact(obj, context)
            %GETCOMPACT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.Compact scalar | empty array of Test.Compact
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getCompact', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.Compact');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getCompactAsync(obj, context)
            %GETCOMPACTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getCompact, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.Compact');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getCompact', 0, true, [], 1, @unmarshal, {}, context);
        end

        function [returnValue, v2] = opM(obj, v1, context)
            %OPM
            %
            %   Input Arguments
            %     v1
            %       Test.M scalar | empty array of Test.M
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.M scalar | empty array of Test.M
            %     v2
            %       Test.M scalar | empty array of Test.M
            
            arguments
                obj (1, 1) Test.InitialPrx
                v1 Test.M {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(v1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opM', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            v2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) v2_h_.set(v), 'Test.M');
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.M');
            is_.readPendingValues();
            is_.endEncapsulation();
            v2 = v2_h_.value;
            returnValue = returnValue_h_.value;
        end

        function future = opMAsync(obj, v1, context)
            %OPMASYNC
            %
            %   Input Arguments
            %     v1
            %       Test.M scalar | empty array of Test.M
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opM, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                v1 Test.M {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(v1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = IceInternal.ValueHolder();
                is_.readValue(@(v) v2.set(v), 'Test.M');
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.M');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
                varargout{2} = v2.value;
            end
            future = obj.iceInvokeAsync('opM', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, f12] = opF1(obj, f11, context)
            %OPF1
            %
            %   Input Arguments
            %     f11
            %       Test.F1 scalar | empty array of Test.F1
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.F1 scalar | empty array of Test.F1
            %     f12
            %       Test.F1 scalar | empty array of Test.F1
            
            arguments
                obj (1, 1) Test.InitialPrx
                f11 Test.F1 {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(f11);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opF1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            f12_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) f12_h_.set(v), 'Test.F1');
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.F1');
            is_.readPendingValues();
            is_.endEncapsulation();
            f12 = f12_h_.value;
            returnValue = returnValue_h_.value;
        end

        function future = opF1Async(obj, f11, context)
            %OPF1ASYNC
            %
            %   Input Arguments
            %     f11
            %       Test.F1 scalar | empty array of Test.F1
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opF1, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                f11 Test.F1 {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(f11);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                f12 = IceInternal.ValueHolder();
                is_.readValue(@(v) f12.set(v), 'Test.F1');
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.F1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
                varargout{2} = f12.value;
            end
            future = obj.iceInvokeAsync('opF1', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, f22] = opF2(obj, f21, context)
            %OPF2
            %
            %   Input Arguments
            %     f21
            %       Test.F2Prx scalar | empty array of Test.F2Prx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.F2Prx scalar | empty array of Test.F2Prx
            %     f22
            %       Test.F2Prx scalar | empty array of Test.F2Prx
            
            arguments
                obj (1, 1) Test.InitialPrx
                f21 Test.F2Prx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(f21);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opF2', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            f22 = Test.F2Prx.ice_read(is_);
            returnValue = Test.F2Prx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opF2Async(obj, f21, context)
            %OPF2ASYNC
            %
            %   Input Arguments
            %     f21
            %       Test.F2Prx scalar | empty array of Test.F2Prx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opF2, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                f21 Test.F2Prx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(f21);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                f22 = Test.F2Prx.ice_read(is_);
                returnValue = Test.F2Prx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = f22;
            end
            future = obj.iceInvokeAsync('opF2', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, f32] = opF3(obj, f31, context)
            %OPF3
            %
            %   Input Arguments
            %     f31
            %       Test.F3 scalar | empty array of Test.F3
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.F3 scalar | empty array of Test.F3
            %     f32
            %       Test.F3 scalar | empty array of Test.F3
            
            arguments
                obj (1, 1) Test.InitialPrx
                f31 Test.F3 {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(f31);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opF3', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            f32_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) f32_h_.set(v), 'Test.F3');
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.F3');
            is_.readPendingValues();
            is_.endEncapsulation();
            f32 = f32_h_.value;
            returnValue = returnValue_h_.value;
        end

        function future = opF3Async(obj, f31, context)
            %OPF3ASYNC
            %
            %   Input Arguments
            %     f31
            %       Test.F3 scalar | empty array of Test.F3
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opF3, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                f31 Test.F3 {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(f31);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                f32 = IceInternal.ValueHolder();
                is_.readValue(@(v) f32.set(v), 'Test.F3');
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.F3');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
                varargout{2} = f32.value;
            end
            future = obj.iceInvokeAsync('opF3', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function returnValue = hasF3(obj, context)
            %HASF3
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical scalar
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('hasF3', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = hasF3Async(obj, context)
            %HASF3ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also hasF3, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('hasF3', 0, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Initial';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.InitialPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Initial.
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
            %     r - A Test.InitialPrx scalar if the target object implements Slice interface 
            %       ::Test::Initial; otherwise, an empty array of Test.InitialPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.InitialPrx.ice_staticId(), 'Test.InitialPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.InitialPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.InitialPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.InitialPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        throwEDerived_ex_ = { 'Test.EDerived' }
    end
end
