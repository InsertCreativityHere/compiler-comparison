% RegistryObserverPrx   Summary of RegistryObserverPrx
%
% This interface allows applications to monitor changes the state of the registry.
%
% RegistryObserverPrx Methods:
%   registryInit - The registryInit operation is called after registration of an observer to indicate the state of the registries.
%   registryInitAsync - The registryInit operation is called after registration of an observer to indicate the state of the registries.
%   registryUp - The nodeUp operation is called to notify an observer that a node came up.
%   registryUpAsync - The nodeUp operation is called to notify an observer that a node came up.
%   registryDown - The nodeDown operation is called to notify an observer that a node went down.
%   registryDownAsync - The nodeDown operation is called to notify an observer that a node went down.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef RegistryObserverPrx < Ice.ObjectPrx
    methods
        function registryInit(obj, registries, varargin)
            % registryInit   The registryInit operation is called after registration of an observer to indicate the state of
            % the registries.
            %
            % Parameters:
            %   registries (IceGrid.RegistryInfoSeq) - The current state of the registries.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.RegistryInfoSeq.write(os_, registries);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('registryInit', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = registryInitAsync(obj, registries, varargin)
            % registryInitAsync   The registryInit operation is called after registration of an observer to indicate the state of
            % the registries.
            %
            % Parameters:
            %   registries (IceGrid.RegistryInfoSeq) - The current state of the registries.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.RegistryInfoSeq.write(os_, registries);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('registryInit', 0, false, os_, 0, [], {}, varargin{:});
        end
        function registryUp(obj, node, varargin)
            % registryUp   The nodeUp operation is called to notify an observer that a node came up.
            %
            % Parameters:
            %   node (IceGrid.RegistryInfo) - The node state.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.RegistryInfo.ice_write(os_, node);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('registryUp', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = registryUpAsync(obj, node, varargin)
            % registryUpAsync   The nodeUp operation is called to notify an observer that a node came up.
            %
            % Parameters:
            %   node (IceGrid.RegistryInfo) - The node state.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.RegistryInfo.ice_write(os_, node);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('registryUp', 0, false, os_, 0, [], {}, varargin{:});
        end
        function registryDown(obj, name, varargin)
            % registryDown   The nodeDown operation is called to notify an observer that a node went down.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('registryDown', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = registryDownAsync(obj, name, varargin)
            % registryDownAsync   The nodeDown operation is called to notify an observer that a node went down.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('registryDown', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::RegistryObserver';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.RegistryObserverPrx');
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
            % Returns (IceGrid.RegistryObserverPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.RegistryObserverPrx.ice_staticId(), 'IceGrid.RegistryObserverPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.RegistryObserverPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.RegistryObserverPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = RegistryObserverPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
