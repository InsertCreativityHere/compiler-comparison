classdef RemoteCommunicatorFactoryPrx < Ice.ObjectPrx
    %REMOTECOMMUNICATORFACTORYPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.RemoteCommunicatorFactoryPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   RemoteCommunicatorFactoryPrx Methods:
    %     createCommunicator
    %     createCommunicatorAsync - An asynchronous createCommunicator.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   RemoteCommunicatorFactoryPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::RemoteCommunicatorFactory.
    %     uncheckedCast - Creates a RemoteCommunicatorFactoryPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = createCommunicator(obj, props, context)
            %CREATECOMMUNICATOR
            %
            %   Input Arguments
            %     props
            %       string, string) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.RemoteCommunicatorPrx scalar | empty array of Test.RemoteCommunicatorPrx
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorFactoryPrx
                props (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.PropertyDict.write(os_, props);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('createCommunicator', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.RemoteCommunicatorPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = createCommunicatorAsync(obj, props, context)
            %CREATECOMMUNICATORASYNC
            %
            %   Input Arguments
            %     props
            %       string, string) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also createCommunicator, Ice.Future.
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorFactoryPrx
                props (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.PropertyDict.write(os_, props);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.RemoteCommunicatorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('createCommunicator', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorFactoryPrx
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
                obj (1, 1) Test.RemoteCommunicatorFactoryPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::RemoteCommunicatorFactory';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.RemoteCommunicatorFactoryPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::RemoteCommunicatorFactory.
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
            %     r - A Test.RemoteCommunicatorFactoryPrx scalar if the target object implements Slice interface 
            %       ::Test::RemoteCommunicatorFactory; otherwise, an empty array of Test.RemoteCommunicatorFactoryPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.RemoteCommunicatorFactoryPrx.ice_staticId(), 'Test.RemoteCommunicatorFactoryPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.RemoteCommunicatorFactoryPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.RemoteCommunicatorFactoryPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.RemoteCommunicatorFactoryPrx', varargin{:});
        end
    end
end
