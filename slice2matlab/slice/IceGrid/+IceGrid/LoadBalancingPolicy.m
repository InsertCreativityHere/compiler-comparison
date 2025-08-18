classdef LoadBalancingPolicy < Ice.Value
    %LOADBALANCINGPOLICY The base class for load balancing policies.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.LoadBalancingPolicy()
    %       obj = IceGrid.LoadBalancingPolicy(nReplicas)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   LoadBalancingPolicy Properties:
    %     nReplicas - The number of replicas that will be used to gather the endpoints of a replica group.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NREPLICAS The number of replicas that will be used to gather the endpoints of a replica group.
        %   character vector
        nReplicas (1, :) char
    end
    methods
        function obj = LoadBalancingPolicy(nReplicas)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.nReplicas = nReplicas;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::LoadBalancingPolicy', -1, true);
            os.writeString(obj.nReplicas);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.nReplicas = is.readString();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::LoadBalancingPolicy';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::LoadBalancingPolicy'
    end
end
