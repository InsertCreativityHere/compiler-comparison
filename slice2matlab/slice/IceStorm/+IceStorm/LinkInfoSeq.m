
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

classdef LinkInfoSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceStorm.LinkInfo.ice_write(os, seq(i));
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceStorm.LinkInfoSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceStorm.LinkInfo.empty();
            if sz > 0
                r(1, sz) = IceStorm.LinkInfo();
                for i = 1:sz
                    r(i).theTopic = IceStorm.TopicPrx.ice_read(is);
                    r(i).name = is.readString();
                    r(i).cost = is.readInt();
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStorm.LinkInfoSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
