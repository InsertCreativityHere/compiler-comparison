% AdaptiveLoadBalancingPolicy   Summary of AdaptiveLoadBalancingPolicy
%
% Adaptive load balancing policy.
%
% AdaptiveLoadBalancingPolicy Properties:
%   loadSample - The load sample to use for the load balancing.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef AdaptiveLoadBalancingPolicy < IceGrid.LoadBalancingPolicy
    properties
        % loadSample - The load sample to use for the load balancing. The allowed values for this attribute are "1", "5" and "15",
        % representing respectively the load average over the past minute, the past 5 minutes and the past 15 minutes.
        loadSample char
    end
    methods
        function obj = AdaptiveLoadBalancingPolicy(nReplicas, loadSample)
            if nargin == 0
                nReplicas = '';
                loadSample = '';
                v = { nReplicas };
            elseif eq(nReplicas, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { nReplicas };
            end
            obj = obj@IceGrid.LoadBalancingPolicy(v{:});
            if ne(nReplicas, IceInternal.NoInit.Instance)
                obj.loadSample = loadSample;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::AdaptiveLoadBalancingPolicy', -1, false);
            os.writeString(obj.loadSample);
            os.endSlice();
            iceWriteImpl@IceGrid.LoadBalancingPolicy(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.loadSample = is.readString();
            is.endSlice();
            iceReadImpl@IceGrid.LoadBalancingPolicy(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::AdaptiveLoadBalancingPolicy';
        end
    end
end
