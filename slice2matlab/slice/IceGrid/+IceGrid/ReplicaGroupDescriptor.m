classdef (Sealed) ReplicaGroupDescriptor
    %REPLICAGROUPDESCRIPTOR Describes a replica group.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.ReplicaGroupDescriptor()
    %       obj = IceGrid.ReplicaGroupDescriptor(id, loadBalancing, proxyOptions, objects, description, filter)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ReplicaGroupDescriptor Properties:
    %     id - The replica group ID.
    %     loadBalancing - The load balancing policy.
    %     proxyOptions - Default options for proxies created for the replica group.
    %     objects - The descriptors for the well-known objects.
    %     description - The description of this replica group.
    %     filter - The filter to use for this replica group.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The replica group ID.
        %   character vector
        id (1, :) char
        
        % LOADBALANCING The load balancing policy.
        %   IceGrid.LoadBalancingPolicy scalar | empty array of IceGrid.LoadBalancingPolicy
        loadBalancing {mustBeScalarOrEmpty} = IceGrid.LoadBalancingPolicy.empty
        
        % PROXYOPTIONS Default options for proxies created for the replica group.
        %   character vector
        proxyOptions (1, :) char
        
        % OBJECTS The descriptors for the well-known objects.
        %   IceGrid.ObjectDescriptor vector
        objects (1, :) IceGrid.ObjectDescriptor
        
        % DESCRIPTION The description of this replica group.
        %   character vector
        description (1, :) char
        
        % FILTER The filter to use for this replica group.
        %   character vector
        filter (1, :) char
    end
    methods
        function obj = ReplicaGroupDescriptor(id, loadBalancing, proxyOptions, objects, description, filter)
            if nargin > 0
                assert(nargin == 6, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = IceGrid.ReplicaGroupDescriptor();
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
