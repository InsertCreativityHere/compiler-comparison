% RoundRobinLoadBalancingPolicy   Summary of RoundRobinLoadBalancingPolicy
%
% Round robin load balancing policy.

% Copyright (c) ZeroC, Inc.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef RoundRobinLoadBalancingPolicy < IceGrid.LoadBalancingPolicy
    methods
        function obj = RoundRobinLoadBalancingPolicy(nReplicas)
            if nargin == 0
                nReplicas = '';
                v = { nReplicas };
            elseif eq(nReplicas, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { nReplicas };
            end
            obj = obj@IceGrid.LoadBalancingPolicy(v{:});
            if ne(nReplicas, IceInternal.NoInit.Instance)
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
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
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::RoundRobinLoadBalancingPolicy';
        end
    end
end
