
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef ServerInstanceDescriptorSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceGrid.ServerInstanceDescriptor.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceGrid.ServerInstanceDescriptor.empty();
            if sz > 0
                r(1, sz) = IceGrid.ServerInstanceDescriptor();
                for i = 1:sz
                    r(i).template = is.readString();
                    r(i).parameterValues = IceGrid.StringStringDict.read(is);
                    r(i).propertySet = IceGrid.PropertySetDescriptor.ice_read(is);
                    r(i).servicePropertySets = IceGrid.PropertySetDescriptorDict.read(is);
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.ServerInstanceDescriptorSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.ServerInstanceDescriptorSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
