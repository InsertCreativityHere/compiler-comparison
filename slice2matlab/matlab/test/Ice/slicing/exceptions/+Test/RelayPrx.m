classdef RelayPrx < Ice.ObjectPrx
    %RELAYPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.RelayPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   RelayPrx Methods:
    %     knownPreservedAsBase
    %     knownPreservedAsBaseAsync - An asynchronous knownPreservedAsBase.
    %     knownPreservedAsKnownPreserved
    %     knownPreservedAsKnownPreservedAsync - An asynchronous knownPreservedAsKnownPreserved.
    %     unknownPreservedAsBase
    %     unknownPreservedAsBaseAsync - An asynchronous unknownPreservedAsBase.
    %     unknownPreservedAsKnownPreserved
    %     unknownPreservedAsKnownPreservedAsync - An asynchronous unknownPreservedAsKnownPreserved.
    %
    %   RelayPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Relay.
    %     uncheckedCast - Creates a RelayPrx from another proxy without any validation.
    %
    %   Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

    methods
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
                obj (1, 1) Test.RelayPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('knownPreservedAsBase', 0, true, [], false, Test.RelayPrx.knownPreservedAsBase_ex_, context);
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
                obj (1, 1) Test.RelayPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('knownPreservedAsBase', 0, true, [], 0, [], Test.RelayPrx.knownPreservedAsBase_ex_, context);
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
                obj (1, 1) Test.RelayPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('knownPreservedAsKnownPreserved', 0, true, [], false, Test.RelayPrx.knownPreservedAsKnownPreserved_ex_, context);
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
                obj (1, 1) Test.RelayPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('knownPreservedAsKnownPreserved', 0, true, [], 0, [], Test.RelayPrx.knownPreservedAsKnownPreserved_ex_, context);
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
                obj (1, 1) Test.RelayPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('unknownPreservedAsBase', 0, true, [], false, Test.RelayPrx.unknownPreservedAsBase_ex_, context);
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
                obj (1, 1) Test.RelayPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('unknownPreservedAsBase', 0, true, [], 0, [], Test.RelayPrx.unknownPreservedAsBase_ex_, context);
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
                obj (1, 1) Test.RelayPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('unknownPreservedAsKnownPreserved', 0, true, [], false, Test.RelayPrx.unknownPreservedAsKnownPreserved_ex_, context);
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
                obj (1, 1) Test.RelayPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('unknownPreservedAsKnownPreserved', 0, true, [], 0, [], Test.RelayPrx.unknownPreservedAsKnownPreserved_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Relay';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.RelayPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Relay.
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
            %     r - A Test.RelayPrx scalar if the target object implements Slice interface 
            %       ::Test::Relay; otherwise, an empty array of Test.RelayPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.RelayPrx.ice_staticId(), 'Test.RelayPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.RelayPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.RelayPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.RelayPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        knownPreservedAsBase_ex_ = { 'Test.Base' }
        knownPreservedAsKnownPreserved_ex_ = { 'Test.KnownPreserved' }
        unknownPreservedAsBase_ex_ = { 'Test.Base' }
        unknownPreservedAsKnownPreserved_ex_ = { 'Test.KnownPreserved' }
    end
end
