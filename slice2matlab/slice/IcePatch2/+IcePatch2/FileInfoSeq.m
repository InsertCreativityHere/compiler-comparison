
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from FileInfo.ice by slice2matlab version 3.8.0-alpha.0

classdef FileInfoSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IcePatch2.FileInfo.ice_write(os, seq(i));
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IcePatch2.FileInfoSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IcePatch2.FileInfo.empty();
            if sz > 0
                r(1, sz) = IcePatch2.FileInfo();
                for i = 1:sz
                    r(i).path = is.readString();
                    r(i).checksum = is.readByteSeq();
                    r(i).size = is.readInt();
                    r(i).executable = is.readBool();
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IcePatch2.FileInfoSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
