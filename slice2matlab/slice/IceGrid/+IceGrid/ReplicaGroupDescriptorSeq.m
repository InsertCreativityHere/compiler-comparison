
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.7.9

classdef ReplicaGroupDescriptorSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceGrid.ReplicaGroupDescriptor.ice_write(os, seq(i));
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.ReplicaGroupDescriptorSeq.write(os, seq);
                os.endSize(pos);
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
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.ReplicaGroupDescriptorSeq.read(is);
            else
                r = Ice.Unset;
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
