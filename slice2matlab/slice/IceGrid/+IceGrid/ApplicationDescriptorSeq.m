
% Copyright (c) ZeroC, Inc.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef ApplicationDescriptorSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceGrid.ApplicationDescriptor.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceGrid.ApplicationDescriptor.empty();
            if sz > 0
                r(1, sz) = IceGrid.ApplicationDescriptor();
                for i = 1:sz
                    r(i).name = is.readString();
                    r(i).variables = IceGrid.StringStringDict.read(is);
                    r(i).replicaGroups = IceGrid.ReplicaGroupDescriptorSeq.read(is);
                    r(i).serverTemplates = IceGrid.TemplateDescriptorDict.read(is);
                    r(i).serviceTemplates = IceGrid.TemplateDescriptorDict.read(is);
                    r(i).nodes = IceGrid.NodeDescriptorDict.read(is);
                    r(i).distrib = IceGrid.DistributionDescriptor.ice_read(is);
                    r(i).description = is.readString();
                    r(i).propertySets = IceGrid.PropertySetDescriptorDict.read(is);
                end
            end
        end
        function r = convert(seq)
            r = seq;
            for i = 1:length(seq)
                r(i).replicaGroups = IceGrid.ReplicaGroupDescriptorSeq.convert(r(i).replicaGroups);
                r(i).serverTemplates = IceGrid.TemplateDescriptorDict.convert(r(i).serverTemplates);
                r(i).serviceTemplates = IceGrid.TemplateDescriptorDict.convert(r(i).serviceTemplates);
                r(i).nodes = IceGrid.NodeDescriptorDict.convert(r(i).nodes);
            end
        end
    end
end
