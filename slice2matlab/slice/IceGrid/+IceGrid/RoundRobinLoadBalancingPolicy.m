classdef RoundRobinLoadBalancingPolicy < IceGrid.LoadBalancingPolicy
    %ROUNDROBINLOADBALANCINGPOLICY The load balancing policy that returns endpoints using round-robin.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.RoundRobinLoadBalancingPolicy()
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::RoundRobinLoadBalancingPolicy', -1, false);
            os.endSlice();
            iceWriteImpl@IceGrid.LoadBalancingPolicy(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            iceReadImpl@IceGrid.LoadBalancingPolicy(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::RoundRobinLoadBalancingPolicy';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::RoundRobinLoadBalancingPolicy'
    end
end
