classdef RemoteObjectAdapterPrx < Ice.ObjectPrx
    %REMOTEOBJECTADAPTERPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.RemoteObjectAdapterPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   RemoteObjectAdapterPrx Methods:
    %     deactivate
    %     deactivateAsync - An asynchronous deactivate.
    %     getTestIntf
    %     getTestIntfAsync - An asynchronous getTestIntf.
    %
    %   RemoteObjectAdapterPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::RemoteObjectAdapter.
    %     uncheckedCast - Creates a RemoteObjectAdapterPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getTestIntf(obj, context)
            %GETTESTINTF
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.TestIntfPrx scalar | empty array of Test.TestIntfPrx
            
            arguments
                obj (1, 1) Test.RemoteObjectAdapterPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getTestIntf', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.TestIntfPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getTestIntfAsync(obj, context)
            %GETTESTINTFASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getTestIntf, Ice.Future.
            
            arguments
                obj (1, 1) Test.RemoteObjectAdapterPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.TestIntfPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getTestIntf', 0, true, [], 1, @unmarshal, {}, context);
        end

        function deactivate(obj, context)
            %DEACTIVATE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.RemoteObjectAdapterPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('deactivate', 0, false, [], false, {}, context);
        end

        function future = deactivateAsync(obj, context)
            %DEACTIVATEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also deactivate, Ice.Future.
            
            arguments
                obj (1, 1) Test.RemoteObjectAdapterPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('deactivate', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::RemoteObjectAdapter';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.RemoteObjectAdapterPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::RemoteObjectAdapter.
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
            %     r - A Test.RemoteObjectAdapterPrx scalar if the target object implements Slice interface 
            %       ::Test::RemoteObjectAdapter; otherwise, an empty array of Test.RemoteObjectAdapterPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.RemoteObjectAdapterPrx.ice_staticId(), 'Test.RemoteObjectAdapterPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.RemoteObjectAdapterPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.RemoteObjectAdapterPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.RemoteObjectAdapterPrx', varargin{:});
        end
    end
end
