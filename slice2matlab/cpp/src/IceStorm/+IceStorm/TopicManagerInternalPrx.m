% TopicManagerInternalPrx   Summary of TopicManagerInternalPrx
%
% Internal operations for a topic manager.
%
% TopicManagerInternalPrx Methods:
%   getReplicaNode - Return the replica node proxy for this topic manager.
%   getReplicaNodeAsync - Return the replica node proxy for this topic manager.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also IceStorm.TopicManager

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceStormInternal.ice by slice2matlab version 3.8.0-alpha.0

classdef TopicManagerInternalPrx < IceStorm.TopicManagerPrx
    methods
        function result = getReplicaNode(obj, varargin)
            % getReplicaNode   Return the replica node proxy for this topic manager.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceStormElection.NodePrx) - The replica proxy, or null if this instance is not replicated.
            
            is_ = obj.iceInvoke('getReplicaNode', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceStormElection.NodePrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getReplicaNodeAsync(obj, varargin)
            % getReplicaNodeAsync   Return the replica node proxy for this topic manager.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceStormElection.NodePrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getReplicaNode', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceStorm::TopicManagerInternal';
        end
        function r = ice_read(is)
            r = is.readProxy('IceStorm.TopicManagerInternalPrx');
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
            % Returns (IceStorm.TopicManagerInternalPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStorm.TopicManagerInternalPrx.ice_staticId(), 'IceStorm.TopicManagerInternalPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceStorm.TopicManagerInternalPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStorm.TopicManagerInternalPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = TopicManagerInternalPrx(communicator, encoding, impl, bytes)
            obj = obj@IceStorm.TopicManagerPrx(communicator, encoding, impl, bytes);
        end
    end
end
