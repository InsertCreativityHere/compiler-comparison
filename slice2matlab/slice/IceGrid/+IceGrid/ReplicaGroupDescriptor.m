% ReplicaGroupDescriptor   Summary of ReplicaGroupDescriptor
%
% A replica group descriptor.
%
% ReplicaGroupDescriptor Properties:
%   id - The id of the replica group.
%   loadBalancing - The load balancing policy.
%   proxyOptions - Default options for proxies created for the replica group.
%   objects - The object descriptors associated with this object adapter.
%   description - The description of this replica group.
%   filter - The filter to use for this replica group.

% Copyright (c) ZeroC, Inc.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef ReplicaGroupDescriptor
    properties
        % id - The id of the replica group.
        id char
        % loadBalancing - The load balancing policy.
        loadBalancing
        % proxyOptions - Default options for proxies created for the replica group.
        proxyOptions char
        % objects - The object descriptors associated with this object adapter.
        objects
        % description - The description of this replica group.
        description char
        % filter - The filter to use for this replica group.
        filter char
    end
    methods
        function obj = ReplicaGroupDescriptor(id, loadBalancing, proxyOptions, objects, description, filter)
            if nargin == 0
                obj.id = '';
                obj.loadBalancing = [];
                obj.proxyOptions = '';
                obj.objects = [];
                obj.description = '';
                obj.filter = '';
            elseif ne(id, IceInternal.NoInit.Instance)
                obj.id = id;
                obj.loadBalancing = loadBalancing;
                obj.proxyOptions = proxyOptions;
                obj.objects = objects;
                obj.description = description;
                obj.filter = filter;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.loadBalancing = obj.loadBalancing.value;
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.ReplicaGroupDescriptor(IceInternal.NoInit.Instance);
            r.id = is.readString();
            loadBalancing_ = IceInternal.ValueHolder();
            r.loadBalancing = loadBalancing_;
            is.readValue(@(v_) loadBalancing_.set(v_), 'IceGrid.LoadBalancingPolicy');
            r.proxyOptions = is.readString();
            r.objects = IceGrid.ObjectDescriptorSeq.read(is);
            r.description = is.readString();
            r.filter = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.ReplicaGroupDescriptor();
            end
            os.writeString(v.id);
            os.writeValue(v.loadBalancing);
            os.writeString(v.proxyOptions);
            IceGrid.ObjectDescriptorSeq.write(os, v.objects);
            os.writeString(v.description);
            os.writeString(v.filter);
        end
    end
end
