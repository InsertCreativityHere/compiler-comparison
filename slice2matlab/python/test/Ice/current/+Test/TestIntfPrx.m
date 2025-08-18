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
    %     getAdapterName
    %     getAdapterNameAsync - An asynchronous getAdapterName.
    %     getConnection
    %     getConnectionAsync - An asynchronous getConnection.
    %     getContext
    %     getContextAsync - An asynchronous getContext.
    %     getEncoding
    %     getEncodingAsync - An asynchronous getEncoding.
    %     getFacet
    %     getFacetAsync - An asynchronous getFacet.
    %     getIdentity
    %     getIdentityAsync - An asynchronous getIdentity.
    %     getMode
    %     getModeAsync - An asynchronous getMode.
    %     getOperation
    %     getOperationAsync - An asynchronous getOperation.
    %     getRequestId
    %     getRequestIdAsync - An asynchronous getRequestId.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   TestIntfPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntf.
    %     uncheckedCast - Creates a TestIntfPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getAdapterName(obj, context)
            %GETADAPTERNAME
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getAdapterName', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getAdapterNameAsync(obj, context)
            %GETADAPTERNAMEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getAdapterName, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getAdapterName', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getConnection(obj, context)
            %GETCONNECTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getConnection', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getConnectionAsync(obj, context)
            %GETCONNECTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getConnection, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getConnection', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getIdentity(obj, context)
            %GETIDENTITY
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Ice.Identity scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getIdentity', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Ice.Identity.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getIdentityAsync(obj, context)
            %GETIDENTITYASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getIdentity, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Ice.Identity.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getIdentity', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getFacet(obj, context)
            %GETFACET
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getFacet', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getFacetAsync(obj, context)
            %GETFACETASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getFacet, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getFacet', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getOperation(obj, context)
            %GETOPERATION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getOperation', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getOperationAsync(obj, context)
            %GETOPERATIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getOperation, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getOperation', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getMode(obj, context)
            %GETMODE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getMode', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getModeAsync(obj, context)
            %GETMODEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getMode, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getMode', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getContext(obj, context)
            %GETCONTEXT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getContext', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Ice.Context.read(is_);
            is_.endEncapsulation();
        end

        function future = getContextAsync(obj, context)
            %GETCONTEXTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getContext, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Ice.Context.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getContext', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getRequestId(obj, context)
            %GETREQUESTID
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getRequestId', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getRequestIdAsync(obj, context)
            %GETREQUESTIDASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getRequestId, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getRequestId', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getEncoding(obj, context)
            %GETENCODING
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getEncoding', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getEncodingAsync(obj, context)
            %GETENCODINGASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getEncoding, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getEncoding', 0, true, [], 1, @unmarshal, {}, context);
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
end
