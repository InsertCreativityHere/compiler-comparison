classdef RemoteCommunicatorPrx < Ice.ObjectPrx
    %REMOTECOMMUNICATORPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.RemoteCommunicatorPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   RemoteCommunicatorPrx Methods:
    %     createObjectAdapter
    %     createObjectAdapterAsync - An asynchronous createObjectAdapter.
    %     deactivateObjectAdapter
    %     deactivateObjectAdapterAsync - An asynchronous deactivateObjectAdapter.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   RemoteCommunicatorPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::RemoteCommunicator.
    %     uncheckedCast - Creates a RemoteCommunicatorPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = createObjectAdapter(obj, name, endpoints, context)
            %CREATEOBJECTADAPTER
            %
            %   Input Arguments
            %     name
            %       character vector
            %     endpoints
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.RemoteObjectAdapterPrx scalar | empty array of Test.RemoteObjectAdapterPrx
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                name (1, :) char
                endpoints (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeString(endpoints);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('createObjectAdapter', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.RemoteObjectAdapterPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = createObjectAdapterAsync(obj, name, endpoints, context)
            %CREATEOBJECTADAPTERASYNC
            %
            %   Input Arguments
            %     name
            %       character vector
            %     endpoints
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also createObjectAdapter, Ice.Future.
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                name (1, :) char
                endpoints (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeString(endpoints);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.RemoteObjectAdapterPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('createObjectAdapter', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function deactivateObjectAdapter(obj, adapter, context)
            %DEACTIVATEOBJECTADAPTER
            %
            %   Input Arguments
            %     adapter
            %       Test.RemoteObjectAdapterPrx scalar | empty array of Test.RemoteObjectAdapterPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                adapter Test.RemoteObjectAdapterPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(adapter);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('deactivateObjectAdapter', 0, false, os_, false, {}, context);
        end

        function future = deactivateObjectAdapterAsync(obj, adapter, context)
            %DEACTIVATEOBJECTADAPTERASYNC
            %
            %   Input Arguments
            %     adapter
            %       Test.RemoteObjectAdapterPrx scalar | empty array of Test.RemoteObjectAdapterPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also deactivateObjectAdapter, Ice.Future.
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                adapter Test.RemoteObjectAdapterPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(adapter);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('deactivateObjectAdapter', 0, false, os_, 0, [], {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
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
                obj (1, 1) Test.RemoteCommunicatorPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::RemoteCommunicator';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.RemoteCommunicatorPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::RemoteCommunicator.
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
            %     r - A Test.RemoteCommunicatorPrx scalar if the target object implements Slice interface 
            %       ::Test::RemoteCommunicator; otherwise, an empty array of Test.RemoteCommunicatorPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.RemoteCommunicatorPrx.ice_staticId(), 'Test.RemoteCommunicatorPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.RemoteCommunicatorPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.RemoteCommunicatorPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.RemoteCommunicatorPrx', varargin{:});
        end
    end
end
