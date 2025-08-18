classdef TestIntfPrx < Ice.ObjectPrx
    %TESTINTFPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.TestIntfPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   TestIntfPrx Methods:
    %     baseAsBase
    %     baseAsBaseAsync - An asynchronous baseAsBase.
    %     knownDerivedAsBase
    %     knownDerivedAsBaseAsync - An asynchronous knownDerivedAsBase.
    %     knownDerivedAsKnownDerived
    %     knownDerivedAsKnownDerivedAsync - An asynchronous knownDerivedAsKnownDerived.
    %     knownIntermediateAsBase
    %     knownIntermediateAsBaseAsync - An asynchronous knownIntermediateAsBase.
    %     knownIntermediateAsKnownIntermediate
    %     knownIntermediateAsKnownIntermediateAsync - An asynchronous knownIntermediateAsKnownIntermediate.
    %     knownMostDerivedAsBase
    %     knownMostDerivedAsBaseAsync - An asynchronous knownMostDerivedAsBase.
    %     knownMostDerivedAsKnownIntermediate
    %     knownMostDerivedAsKnownIntermediateAsync - An asynchronous knownMostDerivedAsKnownIntermediate.
    %     knownMostDerivedAsKnownMostDerived
    %     knownMostDerivedAsKnownMostDerivedAsync - An asynchronous knownMostDerivedAsKnownMostDerived.
    %     knownPreservedAsBase
    %     knownPreservedAsBaseAsync - An asynchronous knownPreservedAsBase.
    %     knownPreservedAsKnownPreserved
    %     knownPreservedAsKnownPreservedAsync - An asynchronous knownPreservedAsKnownPreserved.
    %     relayKnownPreservedAsBase
    %     relayKnownPreservedAsBaseAsync - An asynchronous relayKnownPreservedAsBase.
    %     relayKnownPreservedAsKnownPreserved
    %     relayKnownPreservedAsKnownPreservedAsync - An asynchronous relayKnownPreservedAsKnownPreserved.
    %     relayUnknownPreservedAsBase
    %     relayUnknownPreservedAsBaseAsync - An asynchronous relayUnknownPreservedAsBase.
    %     relayUnknownPreservedAsKnownPreserved
    %     relayUnknownPreservedAsKnownPreservedAsync - An asynchronous relayUnknownPreservedAsKnownPreserved.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     unknownDerivedAsBase
    %     unknownDerivedAsBaseAsync - An asynchronous unknownDerivedAsBase.
    %     unknownIntermediateAsBase
    %     unknownIntermediateAsBaseAsync - An asynchronous unknownIntermediateAsBase.
    %     unknownMostDerived1AsBase
    %     unknownMostDerived1AsBaseAsync - An asynchronous unknownMostDerived1AsBase.
    %     unknownMostDerived1AsKnownIntermediate
    %     unknownMostDerived1AsKnownIntermediateAsync - An asynchronous unknownMostDerived1AsKnownIntermediate.
    %     unknownMostDerived2AsBase
    %     unknownMostDerived2AsBaseAsync - An asynchronous unknownMostDerived2AsBase.
    %     unknownMostDerived2AsBaseCompact
    %     unknownMostDerived2AsBaseCompactAsync - An asynchronous unknownMostDerived2AsBaseCompact.
    %     unknownPreservedAsBase
    %     unknownPreservedAsBaseAsync - An asynchronous unknownPreservedAsBase.
    %     unknownPreservedAsKnownPreserved
    %     unknownPreservedAsKnownPreservedAsync - An asynchronous unknownPreservedAsKnownPreserved.
    %
    %   TestIntfPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntf.
    %     uncheckedCast - Creates a TestIntfPrx from another proxy without any validation.
    %
    %   Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function baseAsBase(obj, context)
            %BASEASBASE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.Base
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('baseAsBase', 0, true, [], false, Test.TestIntfPrx.baseAsBase_ex_, context);
        end

        function future = baseAsBaseAsync(obj, context)
            %BASEASBASEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also baseAsBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('baseAsBase', 0, true, [], 0, [], Test.TestIntfPrx.baseAsBase_ex_, context);
        end

        function unknownDerivedAsBase(obj, context)
            %UNKNOWNDERIVEDASBASE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.Base
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('unknownDerivedAsBase', 0, true, [], false, Test.TestIntfPrx.unknownDerivedAsBase_ex_, context);
        end

        function future = unknownDerivedAsBaseAsync(obj, context)
            %UNKNOWNDERIVEDASBASEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also unknownDerivedAsBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('unknownDerivedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.unknownDerivedAsBase_ex_, context);
        end

        function knownDerivedAsBase(obj, context)
            %KNOWNDERIVEDASBASE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.Base
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('knownDerivedAsBase', 0, true, [], false, Test.TestIntfPrx.knownDerivedAsBase_ex_, context);
        end

        function future = knownDerivedAsBaseAsync(obj, context)
            %KNOWNDERIVEDASBASEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also knownDerivedAsBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('knownDerivedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.knownDerivedAsBase_ex_, context);
        end

        function knownDerivedAsKnownDerived(obj, context)
            %KNOWNDERIVEDASKNOWNDERIVED
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.KnownDerived
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('knownDerivedAsKnownDerived', 0, true, [], false, Test.TestIntfPrx.knownDerivedAsKnownDerived_ex_, context);
        end

        function future = knownDerivedAsKnownDerivedAsync(obj, context)
            %KNOWNDERIVEDASKNOWNDERIVEDASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also knownDerivedAsKnownDerived, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('knownDerivedAsKnownDerived', 0, true, [], 0, [], Test.TestIntfPrx.knownDerivedAsKnownDerived_ex_, context);
        end

        function unknownIntermediateAsBase(obj, context)
            %UNKNOWNINTERMEDIATEASBASE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.Base
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('unknownIntermediateAsBase', 0, true, [], false, Test.TestIntfPrx.unknownIntermediateAsBase_ex_, context);
        end

        function future = unknownIntermediateAsBaseAsync(obj, context)
            %UNKNOWNINTERMEDIATEASBASEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also unknownIntermediateAsBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('unknownIntermediateAsBase', 0, true, [], 0, [], Test.TestIntfPrx.unknownIntermediateAsBase_ex_, context);
        end

        function knownIntermediateAsBase(obj, context)
            %KNOWNINTERMEDIATEASBASE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.Base
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('knownIntermediateAsBase', 0, true, [], false, Test.TestIntfPrx.knownIntermediateAsBase_ex_, context);
        end

        function future = knownIntermediateAsBaseAsync(obj, context)
            %KNOWNINTERMEDIATEASBASEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also knownIntermediateAsBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('knownIntermediateAsBase', 0, true, [], 0, [], Test.TestIntfPrx.knownIntermediateAsBase_ex_, context);
        end

        function knownMostDerivedAsBase(obj, context)
            %KNOWNMOSTDERIVEDASBASE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.Base
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('knownMostDerivedAsBase', 0, true, [], false, Test.TestIntfPrx.knownMostDerivedAsBase_ex_, context);
        end

        function future = knownMostDerivedAsBaseAsync(obj, context)
            %KNOWNMOSTDERIVEDASBASEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also knownMostDerivedAsBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('knownMostDerivedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.knownMostDerivedAsBase_ex_, context);
        end

        function knownIntermediateAsKnownIntermediate(obj, context)
            %KNOWNINTERMEDIATEASKNOWNINTERMEDIATE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.KnownIntermediate
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('knownIntermediateAsKnownIntermediate', 0, true, [], false, Test.TestIntfPrx.knownIntermediateAsKnownIntermediate_ex_, context);
        end

        function future = knownIntermediateAsKnownIntermediateAsync(obj, context)
            %KNOWNINTERMEDIATEASKNOWNINTERMEDIATEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also knownIntermediateAsKnownIntermediate, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('knownIntermediateAsKnownIntermediate', 0, true, [], 0, [], Test.TestIntfPrx.knownIntermediateAsKnownIntermediate_ex_, context);
        end

        function knownMostDerivedAsKnownIntermediate(obj, context)
            %KNOWNMOSTDERIVEDASKNOWNINTERMEDIATE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.KnownIntermediate
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('knownMostDerivedAsKnownIntermediate', 0, true, [], false, Test.TestIntfPrx.knownMostDerivedAsKnownIntermediate_ex_, context);
        end

        function future = knownMostDerivedAsKnownIntermediateAsync(obj, context)
            %KNOWNMOSTDERIVEDASKNOWNINTERMEDIATEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also knownMostDerivedAsKnownIntermediate, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('knownMostDerivedAsKnownIntermediate', 0, true, [], 0, [], Test.TestIntfPrx.knownMostDerivedAsKnownIntermediate_ex_, context);
        end

        function knownMostDerivedAsKnownMostDerived(obj, context)
            %KNOWNMOSTDERIVEDASKNOWNMOSTDERIVED
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.KnownMostDerived
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('knownMostDerivedAsKnownMostDerived', 0, true, [], false, Test.TestIntfPrx.knownMostDerivedAsKnownMostDerived_ex_, context);
        end

        function future = knownMostDerivedAsKnownMostDerivedAsync(obj, context)
            %KNOWNMOSTDERIVEDASKNOWNMOSTDERIVEDASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also knownMostDerivedAsKnownMostDerived, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('knownMostDerivedAsKnownMostDerived', 0, true, [], 0, [], Test.TestIntfPrx.knownMostDerivedAsKnownMostDerived_ex_, context);
        end

        function unknownMostDerived1AsBase(obj, context)
            %UNKNOWNMOSTDERIVED1ASBASE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.Base
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('unknownMostDerived1AsBase', 0, true, [], false, Test.TestIntfPrx.unknownMostDerived1AsBase_ex_, context);
        end

        function future = unknownMostDerived1AsBaseAsync(obj, context)
            %UNKNOWNMOSTDERIVED1ASBASEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also unknownMostDerived1AsBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('unknownMostDerived1AsBase', 0, true, [], 0, [], Test.TestIntfPrx.unknownMostDerived1AsBase_ex_, context);
        end

        function unknownMostDerived1AsKnownIntermediate(obj, context)
            %UNKNOWNMOSTDERIVED1ASKNOWNINTERMEDIATE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.KnownIntermediate
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('unknownMostDerived1AsKnownIntermediate', 0, true, [], false, Test.TestIntfPrx.unknownMostDerived1AsKnownIntermediate_ex_, context);
        end

        function future = unknownMostDerived1AsKnownIntermediateAsync(obj, context)
            %UNKNOWNMOSTDERIVED1ASKNOWNINTERMEDIATEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also unknownMostDerived1AsKnownIntermediate, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('unknownMostDerived1AsKnownIntermediate', 0, true, [], 0, [], Test.TestIntfPrx.unknownMostDerived1AsKnownIntermediate_ex_, context);
        end

        function unknownMostDerived2AsBase(obj, context)
            %UNKNOWNMOSTDERIVED2ASBASE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.Base
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('unknownMostDerived2AsBase', 0, true, [], false, Test.TestIntfPrx.unknownMostDerived2AsBase_ex_, context);
        end

        function future = unknownMostDerived2AsBaseAsync(obj, context)
            %UNKNOWNMOSTDERIVED2ASBASEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also unknownMostDerived2AsBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('unknownMostDerived2AsBase', 0, true, [], 0, [], Test.TestIntfPrx.unknownMostDerived2AsBase_ex_, context);
        end

        function unknownMostDerived2AsBaseCompact(obj, context)
            %UNKNOWNMOSTDERIVED2ASBASECOMPACT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.Base
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('unknownMostDerived2AsBaseCompact', 0, true, [], false, Test.TestIntfPrx.unknownMostDerived2AsBaseCompact_ex_, context);
        end

        function future = unknownMostDerived2AsBaseCompactAsync(obj, context)
            %UNKNOWNMOSTDERIVED2ASBASECOMPACTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also unknownMostDerived2AsBaseCompact, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('unknownMostDerived2AsBaseCompact', 0, true, [], 0, [], Test.TestIntfPrx.unknownMostDerived2AsBaseCompact_ex_, context);
        end

        function knownPreservedAsBase(obj, context)
            %KNOWNPRESERVEDASBASE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.Base
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('knownPreservedAsBase', 0, true, [], false, Test.TestIntfPrx.knownPreservedAsBase_ex_, context);
        end

        function future = knownPreservedAsBaseAsync(obj, context)
            %KNOWNPRESERVEDASBASEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also knownPreservedAsBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('knownPreservedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.knownPreservedAsBase_ex_, context);
        end

        function knownPreservedAsKnownPreserved(obj, context)
            %KNOWNPRESERVEDASKNOWNPRESERVED
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.KnownPreserved
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('knownPreservedAsKnownPreserved', 0, true, [], false, Test.TestIntfPrx.knownPreservedAsKnownPreserved_ex_, context);
        end

        function future = knownPreservedAsKnownPreservedAsync(obj, context)
            %KNOWNPRESERVEDASKNOWNPRESERVEDASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also knownPreservedAsKnownPreserved, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('knownPreservedAsKnownPreserved', 0, true, [], 0, [], Test.TestIntfPrx.knownPreservedAsKnownPreserved_ex_, context);
        end

        function relayKnownPreservedAsBase(obj, r, context)
            %RELAYKNOWNPRESERVEDASBASE
            %
            %   Input Arguments
            %     r
            %       Test.RelayPrx scalar | empty array of Test.RelayPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.Base
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                r Test.RelayPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(r);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('relayKnownPreservedAsBase', 0, true, os_, false, Test.TestIntfPrx.relayKnownPreservedAsBase_ex_, context);
        end

        function future = relayKnownPreservedAsBaseAsync(obj, r, context)
            %RELAYKNOWNPRESERVEDASBASEASYNC
            %
            %   Input Arguments
            %     r
            %       Test.RelayPrx scalar | empty array of Test.RelayPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also relayKnownPreservedAsBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                r Test.RelayPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(r);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('relayKnownPreservedAsBase', 0, true, os_, 0, [], Test.TestIntfPrx.relayKnownPreservedAsBase_ex_, context);
        end

        function relayKnownPreservedAsKnownPreserved(obj, r, context)
            %RELAYKNOWNPRESERVEDASKNOWNPRESERVED
            %
            %   Input Arguments
            %     r
            %       Test.RelayPrx scalar | empty array of Test.RelayPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.KnownPreserved
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                r Test.RelayPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(r);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('relayKnownPreservedAsKnownPreserved', 0, true, os_, false, Test.TestIntfPrx.relayKnownPreservedAsKnownPreserved_ex_, context);
        end

        function future = relayKnownPreservedAsKnownPreservedAsync(obj, r, context)
            %RELAYKNOWNPRESERVEDASKNOWNPRESERVEDASYNC
            %
            %   Input Arguments
            %     r
            %       Test.RelayPrx scalar | empty array of Test.RelayPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also relayKnownPreservedAsKnownPreserved, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                r Test.RelayPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(r);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('relayKnownPreservedAsKnownPreserved', 0, true, os_, 0, [], Test.TestIntfPrx.relayKnownPreservedAsKnownPreserved_ex_, context);
        end

        function unknownPreservedAsBase(obj, context)
            %UNKNOWNPRESERVEDASBASE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.Base
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('unknownPreservedAsBase', 0, true, [], false, Test.TestIntfPrx.unknownPreservedAsBase_ex_, context);
        end

        function future = unknownPreservedAsBaseAsync(obj, context)
            %UNKNOWNPRESERVEDASBASEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also unknownPreservedAsBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('unknownPreservedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.unknownPreservedAsBase_ex_, context);
        end

        function unknownPreservedAsKnownPreserved(obj, context)
            %UNKNOWNPRESERVEDASKNOWNPRESERVED
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.KnownPreserved
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('unknownPreservedAsKnownPreserved', 0, true, [], false, Test.TestIntfPrx.unknownPreservedAsKnownPreserved_ex_, context);
        end

        function future = unknownPreservedAsKnownPreservedAsync(obj, context)
            %UNKNOWNPRESERVEDASKNOWNPRESERVEDASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also unknownPreservedAsKnownPreserved, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('unknownPreservedAsKnownPreserved', 0, true, [], 0, [], Test.TestIntfPrx.unknownPreservedAsKnownPreserved_ex_, context);
        end

        function relayUnknownPreservedAsBase(obj, r, context)
            %RELAYUNKNOWNPRESERVEDASBASE
            %
            %   Input Arguments
            %     r
            %       Test.RelayPrx scalar | empty array of Test.RelayPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.Base
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                r Test.RelayPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(r);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('relayUnknownPreservedAsBase', 0, true, os_, false, Test.TestIntfPrx.relayUnknownPreservedAsBase_ex_, context);
        end

        function future = relayUnknownPreservedAsBaseAsync(obj, r, context)
            %RELAYUNKNOWNPRESERVEDASBASEASYNC
            %
            %   Input Arguments
            %     r
            %       Test.RelayPrx scalar | empty array of Test.RelayPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also relayUnknownPreservedAsBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                r Test.RelayPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(r);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('relayUnknownPreservedAsBase', 0, true, os_, 0, [], Test.TestIntfPrx.relayUnknownPreservedAsBase_ex_, context);
        end

        function relayUnknownPreservedAsKnownPreserved(obj, r, context)
            %RELAYUNKNOWNPRESERVEDASKNOWNPRESERVED
            %
            %   Input Arguments
            %     r
            %       Test.RelayPrx scalar | empty array of Test.RelayPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.KnownPreserved
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                r Test.RelayPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(r);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('relayUnknownPreservedAsKnownPreserved', 0, true, os_, false, Test.TestIntfPrx.relayUnknownPreservedAsKnownPreserved_ex_, context);
        end

        function future = relayUnknownPreservedAsKnownPreservedAsync(obj, r, context)
            %RELAYUNKNOWNPRESERVEDASKNOWNPRESERVEDASYNC
            %
            %   Input Arguments
            %     r
            %       Test.RelayPrx scalar | empty array of Test.RelayPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also relayUnknownPreservedAsKnownPreserved, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                r Test.RelayPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(r);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('relayUnknownPreservedAsKnownPreserved', 0, true, os_, 0, [], Test.TestIntfPrx.relayUnknownPreservedAsKnownPreserved_ex_, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
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
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::TestIntf';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.TestIntfPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntf.
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
            %     r - A Test.TestIntfPrx scalar if the target object implements Slice interface 
            %       ::Test::TestIntf; otherwise, an empty array of Test.TestIntfPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestIntfPrx.ice_staticId(), 'Test.TestIntfPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.TestIntfPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.TestIntfPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestIntfPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        baseAsBase_ex_ = { 'Test.Base' }
        unknownDerivedAsBase_ex_ = { 'Test.Base' }
        knownDerivedAsBase_ex_ = { 'Test.Base' }
        knownDerivedAsKnownDerived_ex_ = { 'Test.KnownDerived' }
        unknownIntermediateAsBase_ex_ = { 'Test.Base' }
        knownIntermediateAsBase_ex_ = { 'Test.Base' }
        knownMostDerivedAsBase_ex_ = { 'Test.Base' }
        knownIntermediateAsKnownIntermediate_ex_ = { 'Test.KnownIntermediate' }
        knownMostDerivedAsKnownIntermediate_ex_ = { 'Test.KnownIntermediate' }
        knownMostDerivedAsKnownMostDerived_ex_ = { 'Test.KnownMostDerived' }
        unknownMostDerived1AsBase_ex_ = { 'Test.Base' }
        unknownMostDerived1AsKnownIntermediate_ex_ = { 'Test.KnownIntermediate' }
        unknownMostDerived2AsBase_ex_ = { 'Test.Base' }
        unknownMostDerived2AsBaseCompact_ex_ = { 'Test.Base' }
        knownPreservedAsBase_ex_ = { 'Test.Base' }
        knownPreservedAsKnownPreserved_ex_ = { 'Test.KnownPreserved' }
        relayKnownPreservedAsBase_ex_ = { 'Test.Base' }
        relayKnownPreservedAsKnownPreserved_ex_ = { 'Test.KnownPreserved' }
        unknownPreservedAsBase_ex_ = { 'Test.Base' }
        unknownPreservedAsKnownPreserved_ex_ = { 'Test.KnownPreserved' }
        relayUnknownPreservedAsBase_ex_ = { 'Test.Base' }
        relayUnknownPreservedAsKnownPreserved_ex_ = { 'Test.KnownPreserved' }
    end
end
