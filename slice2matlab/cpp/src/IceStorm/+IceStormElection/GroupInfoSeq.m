
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Election.ice by slice2matlab version 3.7.10

classdef GroupInfoSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceStormElection.GroupInfo.ice_write(os, seq(i));
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                len = length(seq);
                if len > 254
                    os.writeSize(len * 20 + 5);
                else
                    os.writeSize(len * 20 + 1);
                end
                IceStormElection.GroupInfoSeq.write(os, seq);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceStormElection.GroupInfo.empty();
            if sz > 0
                r(1, sz) = IceStormElection.GroupInfo();
                for i = 1:sz
                    r(i).id = is.readInt();
                    r(i).llu = IceStormElection.LogUpdate.ice_read(is);
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = IceStormElection.GroupInfoSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
