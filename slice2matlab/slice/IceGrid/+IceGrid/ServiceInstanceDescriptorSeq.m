
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.7.10

classdef ServiceInstanceDescriptorSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceGrid.ServiceInstanceDescriptor.ice_write(os, seq(i));
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.ServiceInstanceDescriptorSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceGrid.ServiceInstanceDescriptor.empty();
            if sz > 0
                r(1, sz) = IceGrid.ServiceInstanceDescriptor();
                for i = 1:sz
                    r(i).template = is.readString();
                    r(i).parameterValues = IceGrid.StringStringDict.read(is);
                    descriptor_ = IceInternal.ValueHolder();
                    r(i).descriptor = descriptor_;
                    is.readValue(@(v_) descriptor_.set(v_), 'IceGrid.ServiceDescriptor');
                    r(i).propertySet = IceGrid.PropertySetDescriptor.ice_read(is);
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.ServiceInstanceDescriptorSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = convert(seq)
            r = seq;
            for i = 1:length(seq)
                r(i).descriptor = r(i).descriptor.value;
            end
        end
    end
end
