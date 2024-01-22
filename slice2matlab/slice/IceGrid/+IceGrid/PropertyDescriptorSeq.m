
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef PropertyDescriptorSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceGrid.PropertyDescriptor.ice_write(os, seq(i));
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.PropertyDescriptorSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceGrid.PropertyDescriptor.empty();
            if sz > 0
                r(1, sz) = IceGrid.PropertyDescriptor();
                for i = 1:sz
                    r(i).name = is.readString();
                    r(i).value = is.readString();
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.PropertyDescriptorSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
