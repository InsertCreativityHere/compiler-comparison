
% Copyright (c) ZeroC, Inc.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef DataSampleSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                DataStormContract.DataSample.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = DataStormContract.DataSample.empty();
            if sz > 0
                r(1, sz) = DataStormContract.DataSample();
                for i = 1:sz
                    r(i).id = is.readLong();
                    r(i).keyId = is.readLong();
                    r(i).keyValue = is.readByteSeq();
                    r(i).timestamp = is.readLong();
                    r(i).tag = is.readLong();
                    r(i).event = DataStorm.SampleEvent.ice_read(is);
                    r(i).value = is.readByteSeq();
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                DataStormContract.DataSampleSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = DataStormContract.DataSampleSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
