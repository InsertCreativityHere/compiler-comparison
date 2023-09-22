
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.7.10

classdef ServerDescriptorSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                os.writeValue(seq{i});
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.ServerDescriptorSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            if sz == 0
                r = {};
            else
                r = IceInternal.CellArrayHandle();
                r.array = cell(1, sz);
                for i = 1:sz
                    is.readValue(@(v) r.set(i, v), 'IceGrid.ServerDescriptor');
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.ServerDescriptorSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = convert(seq)
            if isempty(seq)
                r = seq;
            else
                r = seq.array;
            end
        end
    end
end
