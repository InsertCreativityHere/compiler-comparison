classdef AdaptiveLoadBalancingPolicy < IceGrid.LoadBalancingPolicy
    %ADAPTIVELOADBALANCINGPOLICY The load balancing policy that returns the endpoints of the server(s) with the lowest load average.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.AdaptiveLoadBalancingPolicy()
    %       obj = IceGrid.AdaptiveLoadBalancingPolicy(loadSample)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   AdaptiveLoadBalancingPolicy Properties:
    %     loadSample - The load sample to use for the load balancing.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % LOADSAMPLE The load sample to use for the load balancing. The allowed values for this attribute are "1", "5" and "15",
        %   representing respectively the load average over the past minute, the past 5 minutes and the past 15 minutes.
        %   character vector
        loadSample (1, :) char
    end
    methods
        function obj = AdaptiveLoadBalancingPolicy(nReplicas, loadSample)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 2, 'Invalid number of arguments');
                superArgs = {nReplicas};
            end
            obj = obj@IceGrid.LoadBalancingPolicy(superArgs{:});
            if nargin > 0
                obj.loadSample = loadSample;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
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
    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::AdaptiveLoadBalancingPolicy';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::AdaptiveLoadBalancingPolicy'
    end
end
