
% Copyright (c) ZeroC, Inc.
% Generated from Election.ice by slice2matlab version 3.8.0-alpha.0

classdef TopicContentSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceStormElection.TopicContent.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceStormElection.TopicContent.empty();
            if sz > 0
                r(1, sz) = IceStormElection.TopicContent();
                for i = 1:sz
                    r(i).id = Ice.Identity.ice_read(is);
                    r(i).records = IceStorm.SubscriberRecordSeq.read(is);
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceStormElection.TopicContentSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStormElection.TopicContentSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
