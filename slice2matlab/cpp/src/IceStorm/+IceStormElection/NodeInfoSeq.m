
% Copyright (c) ZeroC, Inc.
% Generated from Election.ice by slice2matlab version 3.8.0-alpha.0

classdef NodeInfoSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceStormElection.NodeInfo.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceStormElection.NodeInfo.empty();
            if sz > 0
                r(1, sz) = IceStormElection.NodeInfo();
                for i = 1:sz
                    r(i).id = is.readInt();
                    r(i).n = IceStormElection.NodePrx.ice_read(is);
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceStormElection.NodeInfoSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStormElection.NodeInfoSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
