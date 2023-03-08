
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from SubscriberRecord.ice by slice2matlab version 3.7.9

classdef SubscriberRecordSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceStorm.SubscriberRecord.ice_write(os, seq(i));
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceStorm.SubscriberRecordSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceStorm.SubscriberRecord.empty();
            if sz > 0
                r(1, sz) = IceStorm.SubscriberRecord();
                for i = 1:sz
                    r(i).topicName = is.readString();
                    r(i).id = Ice.Identity.ice_read(is);
                    r(i).link = is.readBool();
                    r(i).obj = is.readProxy();
                    r(i).theQoS = IceStorm.QoS.read(is);
                    r(i).cost = is.readInt();
                    r(i).theTopic = IceStorm.TopicPrx.ice_read(is);
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStorm.SubscriberRecordSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
