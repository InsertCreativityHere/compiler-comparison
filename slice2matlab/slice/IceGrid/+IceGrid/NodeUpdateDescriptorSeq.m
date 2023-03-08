
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.7.9

classdef NodeUpdateDescriptorSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceGrid.NodeUpdateDescriptor.ice_write(os, seq(i));
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.NodeUpdateDescriptorSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceGrid.NodeUpdateDescriptor.empty();
            if sz > 0
                r(1, sz) = IceGrid.NodeUpdateDescriptor();
                for i = 1:sz
                    r(i).name = is.readString();
                    description_ = IceInternal.ValueHolder();
                    r(i).description = description_;
                    is.readValue(@(v_) description_.set(v_), 'IceGrid.BoxedString');
                    r(i).variables = IceGrid.StringStringDict.read(is);
                    r(i).removeVariables = is.readStringSeq();
                    r(i).propertySets = IceGrid.PropertySetDescriptorDict.read(is);
                    r(i).removePropertySets = is.readStringSeq();
                    r(i).serverInstances = IceGrid.ServerInstanceDescriptorSeq.read(is);
                    r(i).servers = IceGrid.ServerDescriptorSeq.read(is);
                    r(i).removeServers = is.readStringSeq();
                    loadFactor_ = IceInternal.ValueHolder();
                    r(i).loadFactor = loadFactor_;
                    is.readValue(@(v_) loadFactor_.set(v_), 'IceGrid.BoxedString');
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.NodeUpdateDescriptorSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = convert(seq)
            r = seq;
            for i = 1:length(seq)
                r(i).description = r(i).description.value;
                r(i).servers = IceGrid.ServerDescriptorSeq.convert(r(i).servers);
                r(i).loadFactor = r(i).loadFactor.value;
            end
        end
    end
end
