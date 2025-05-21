
% Copyright (c) ZeroC, Inc.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef ObjectDescriptorSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceGrid.ObjectDescriptor.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceGrid.ObjectDescriptor.empty();
            if sz > 0
                r(1, sz) = IceGrid.ObjectDescriptor();
                for i = 1:sz
                    r(i).id = Ice.Identity.ice_read(is);
                    r(i).type = is.readString();
                    r(i).proxyOptions = is.readString();
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.ObjectDescriptorSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.ObjectDescriptorSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
