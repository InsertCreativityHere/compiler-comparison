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
    %     destroy
    %     destroyAsync - An asynchronous destroy.
    %     getObject
    %     getObjectAsync - An asynchronous getObject.
    %     getThreadStartCount
    %     getThreadStartCountAsync - An asynchronous getThreadStartCount.
    %     getThreadStopCount
    %     getThreadStopCountAsync - An asynchronous getThreadStopCount.
    %
    %   RemoteCommunicatorPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::RemoteCommunicator.
    %     uncheckedCast - Creates a RemoteCommunicatorPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getObject(obj, context)
            %GETOBJECT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.TestIntfPrx scalar | empty array of Test.TestIntfPrx
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getObject', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.TestIntfPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getObjectAsync(obj, context)
            %GETOBJECTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getObject, Ice.Future.
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.TestIntfPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getObject', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getThreadStartCount(obj, context)
            %GETTHREADSTARTCOUNT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getThreadStartCount', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getThreadStartCountAsync(obj, context)
            %GETTHREADSTARTCOUNTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getThreadStartCount, Ice.Future.
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getThreadStartCount', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getThreadStopCount(obj, context)
            %GETTHREADSTOPCOUNT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getThreadStopCount', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getThreadStopCountAsync(obj, context)
            %GETTHREADSTOPCOUNTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getThreadStopCount, Ice.Future.
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getThreadStopCount', 0, true, [], 1, @unmarshal, {}, context);
        end

        function destroy(obj, context)
            %DESTROY
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('destroy', 0, false, [], false, {}, context);
        end

        function future = destroyAsync(obj, context)
            %DESTROYASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also destroy, Ice.Future.
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('destroy', 0, false, [], 0, [], {}, context);
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
