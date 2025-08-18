classdef AdapterPrx < Ice.ObjectPrx
    %ADAPTERPRX
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.AdapterPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   AdapterPrx Methods:
    %     activate - Activate this adapter.
    %     activateAsync - An asynchronous activate.
    %     getDirectProxy - Get the adapter direct proxy.
    %     getDirectProxyAsync - An asynchronous getDirectProxy.
    %     setDirectProxy - Set the direct proxy for this adapter.
    %     setDirectProxyAsync - An asynchronous setDirectProxy.
    %
    %   AdapterPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::Adapter.
    %     uncheckedCast - Creates a AdapterPrx from another proxy without any validation.
    %
    %   Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = activate(obj, context)
            %ACTIVATE Activate this adapter. If this adapter can be activated, this will activate the adapter and return the direct
            %   proxy of the adapter once it's active. If this adapter can be activated on demand, this will return 0 if the
            %   adapter is inactive or the adapter direct proxy it's active.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            
            arguments
                obj (1, 1) IceGrid.AdapterPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('activate', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = activateAsync(obj, context)
            %ACTIVATEASYNC Activate this adapter. If this adapter can be activated, this will activate the adapter and return the direct
            %   proxy of the adapter once it's active. If this adapter can be activated on demand, this will return 0 if the
            %   adapter is inactive or the adapter direct proxy it's active.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also activate, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdapterPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('activate', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getDirectProxy(obj, context)
            %GETDIRECTPROXY Get the adapter direct proxy. The adapter direct proxy is a proxy created with the object adapter. The proxy
            %   contains the last known adapter endpoints.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A direct proxy containing the last known adapter endpoints if the adapter is already active.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %
            %   Exceptions
            %     IceGrid.AdapterNotActiveException
            
            arguments
                obj (1, 1) IceGrid.AdapterPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getDirectProxy', 2, true, [], true, IceGrid.AdapterPrx.getDirectProxy_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = getDirectProxyAsync(obj, context)
            %GETDIRECTPROXYASYNC Get the adapter direct proxy. The adapter direct proxy is a proxy created with the object adapter. The proxy
            %   contains the last known adapter endpoints.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getDirectProxy, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdapterPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getDirectProxy', 2, true, [], 1, @unmarshal, IceGrid.AdapterPrx.getDirectProxy_ex_, context);
        end

        function setDirectProxy(obj, proxy, context)
            %SETDIRECTPROXY Set the direct proxy for this adapter.
            %
            %   Input Arguments
            %     proxy - The direct proxy. The direct proxy should be created with the object adapter and should contain the
            %       object adapter endpoints.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.AdapterActiveException - The adapter is already active. It's not possible to override the direct proxy of
            %       an active adapter.
            
            arguments
                obj (1, 1) IceGrid.AdapterPrx
                proxy Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setDirectProxy', 0, true, os_, false, IceGrid.AdapterPrx.setDirectProxy_ex_, context);
        end

        function future = setDirectProxyAsync(obj, proxy, context)
            %SETDIRECTPROXYASYNC Set the direct proxy for this adapter.
            %
            %   Input Arguments
            %     proxy - The direct proxy. The direct proxy should be created with the object adapter and should contain the
            %       object adapter endpoints.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setDirectProxy, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdapterPrx
                proxy Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setDirectProxy', 0, true, os_, 0, [], IceGrid.AdapterPrx.setDirectProxy_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::Adapter';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.AdapterPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::Adapter.
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
            %     r - A IceGrid.AdapterPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::Adapter; otherwise, an empty array of IceGrid.AdapterPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.AdapterPrx.ice_staticId(), 'IceGrid.AdapterPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.AdapterPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.AdapterPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.AdapterPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        getDirectProxy_ex_ = { 'IceGrid.AdapterNotActiveException' }
        setDirectProxy_ex_ = { 'IceGrid.AdapterActiveException' }
    end
end
