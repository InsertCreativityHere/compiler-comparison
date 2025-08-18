classdef RandomLoadBalancingPolicy < IceGrid.LoadBalancingPolicy
    %RANDOMLOADBALANCINGPOLICY The load balancing policy that returns endpoints in a random order.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.RandomLoadBalancingPolicy()
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::RandomLoadBalancingPolicy', -1, false);
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
            id = '::IceGrid::RandomLoadBalancingPolicy';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::RandomLoadBalancingPolicy'
    end
end
