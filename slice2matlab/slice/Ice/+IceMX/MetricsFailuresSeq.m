
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Metrics.ice by slice2matlab version 3.7.9

classdef MetricsFailuresSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceMX.MetricsFailures.ice_write(os, seq(i));
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceMX.MetricsFailuresSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceMX.MetricsFailures.empty();
            if sz > 0
                r(1, sz) = IceMX.MetricsFailures();
                for i = 1:sz
                    r(i).id = is.readString();
                    r(i).failures = IceMX.StringIntDict.read(is);
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceMX.MetricsFailuresSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
