% AdapterPrx   Summary of AdapterPrx
%
% AdapterPrx Methods:
%   activate - Activate this adapter.
%   activateAsync - Activate this adapter.
%   getDirectProxy - Get the adapter direct proxy.
%   getDirectProxyAsync - Get the adapter direct proxy.
%   setDirectProxy - Set the direct proxy for this adapter.
%   setDirectProxyAsync - Set the direct proxy for this adapter.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.7.9

classdef AdapterPrx < Ice.ObjectPrx
    methods
        function result = activate(obj, varargin)
            % activate   Activate this adapter. If this adapter can be activated, this
            % will activate the adapter and return the direct proxy of the
            % adapter once it's active. If this adapter can be activated on
            % demand, this will return 0 if the adapter is inactive or the
            % adapter direct proxy it's active.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx)
            
            is_ = obj.iceInvoke('activate', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = activateAsync(obj, varargin)
            % activateAsync   Activate this adapter. If this adapter can be activated, this
            % will activate the adapter and return the direct proxy of the
            % adapter once it's active. If this adapter can be activated on
            % demand, this will return 0 if the adapter is inactive or the
            % adapter direct proxy it's active.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('activate', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getDirectProxy(obj, varargin)
            % getDirectProxy   Get the adapter direct proxy. The adapter direct proxy is a
            % proxy created with the object adapter. The proxy contains the
            % last known adapter endpoints.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - A direct proxy containing the last known adapter
            % endpoints if the adapter is already active.
            
            is_ = obj.iceInvoke('getDirectProxy', 1, true, [], true, IceGrid.AdapterPrx.getDirectProxy_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = getDirectProxyAsync(obj, varargin)
            % getDirectProxyAsync   Get the adapter direct proxy. The adapter direct proxy is a
            % proxy created with the object adapter. The proxy contains the
            % last known adapter endpoints.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getDirectProxy', 1, true, [], 1, @unmarshal, IceGrid.AdapterPrx.getDirectProxy_ex_, varargin{:});
        end
        function setDirectProxy(obj, proxy, varargin)
            % setDirectProxy   Set the direct proxy for this adapter.
            %
            % Parameters:
            %   proxy (Ice.ObjectPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AdapterActiveException - The adapter is already
            %     active. It's not possible to override the direct proxy of an
            %     active adapter.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setDirectProxy', 0, true, os_, false, IceGrid.AdapterPrx.setDirectProxy_ex_, varargin{:});
        end
        function r_ = setDirectProxyAsync(obj, proxy, varargin)
            % setDirectProxyAsync   Set the direct proxy for this adapter.
            %
            % Parameters:
            %   proxy (Ice.ObjectPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AdapterActiveException - The adapter is already
            %     active. It's not possible to override the direct proxy of an
            %     active adapter.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setDirectProxy', 0, true, os_, 0, [], IceGrid.AdapterPrx.setDirectProxy_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::Adapter';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.AdapterPrx');
        end
        function r = checkedCast(p, varargin)
            % checkedCast   Contacts the remote server to verify that the object implements this type.
            %   Raises a local exception if a communication error occurs. You can optionally supply a
            %   facet name and a context map.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %   context - The optional context map to send with the invocation.
            %
            % Returns (IceGrid.AdapterPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.AdapterPrx.ice_staticId(), 'IceGrid.AdapterPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.AdapterPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.AdapterPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = AdapterPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        getDirectProxy_ex_ = { 'IceGrid.AdapterNotActiveException' }
        setDirectProxy_ex_ = { 'IceGrid.AdapterActiveException' }
    end
end
