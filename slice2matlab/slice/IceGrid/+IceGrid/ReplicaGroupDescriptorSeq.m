
% Copyright (c) ZeroC, Inc.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef ReplicaGroupDescriptorSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceGrid.ReplicaGroupDescriptor.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceGrid.ReplicaGroupDescriptor.empty();
            if sz > 0
                r(1, sz) = IceGrid.ReplicaGroupDescriptor();
                for i = 1:sz
                    r(i).id = is.readString();
                    loadBalancing_ = IceInternal.ValueHolder();
                    r(i).loadBalancing = loadBalancing_;
                    is.readValue(@(v_) loadBalancing_.set(v_), 'IceGrid.LoadBalancingPolicy');
                    r(i).proxyOptions = is.readString();
                    r(i).objects = IceGrid.ObjectDescriptorSeq.read(is);
                    r(i).description = is.readString();
                    r(i).filter = is.readString();
                end
            end
        end
        function r = convert(seq)
            r = seq;
            for i = 1:length(seq)
                r(i).loadBalancing = r(i).loadBalancing.value;
            end
        end
    end
end
