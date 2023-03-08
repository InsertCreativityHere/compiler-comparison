
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.7.9

classdef AdapterDescriptorSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceGrid.AdapterDescriptor.ice_write(os, seq(i));
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.AdapterDescriptorSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceGrid.AdapterDescriptor.empty();
            if sz > 0
                r(1, sz) = IceGrid.AdapterDescriptor();
                for i = 1:sz
                    r(i).name = is.readString();
                    r(i).description = is.readString();
                    r(i).id = is.readString();
                    r(i).replicaGroupId = is.readString();
                    r(i).priority = is.readString();
                    r(i).registerProcess = is.readBool();
                    r(i).serverLifetime = is.readBool();
                    r(i).objects = IceGrid.ObjectDescriptorSeq.read(is);
                    r(i).allocatables = IceGrid.ObjectDescriptorSeq.read(is);
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.AdapterDescriptorSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
