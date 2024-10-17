
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef DataSamplesSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                DataStormContract.DataSamples.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = DataStormContract.DataSamples.empty();
            if sz > 0
                r(1, sz) = DataStormContract.DataSamples();
                for i = 1:sz
                    r(i).id = is.readLong();
                    r(i).samples = DataStormContract.DataSampleSeq.read(is);
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                DataStormContract.DataSamplesSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = DataStormContract.DataSamplesSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
