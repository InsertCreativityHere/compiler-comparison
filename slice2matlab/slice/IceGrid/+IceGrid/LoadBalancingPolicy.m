% LoadBalancingPolicy   Summary of LoadBalancingPolicy
%
% A base class for load balancing policies.
%
% LoadBalancingPolicy Properties:
%   nReplicas - The number of replicas that will be used to gather the endpoints of a replica group.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.7.9

classdef LoadBalancingPolicy < Ice.Value
    properties
        % nReplicas - The number of replicas that will be used to gather the
        % endpoints of a replica group.
        nReplicas char
    end
    methods
        function obj = LoadBalancingPolicy(nReplicas)
            if nargin == 0
                obj.nReplicas = '';
            elseif ne(nReplicas, IceInternal.NoInit.Instance)
                obj.nReplicas = nReplicas;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
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
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::LoadBalancingPolicy';
        end
    end
end
