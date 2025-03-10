
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef SmallStructSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                Test.SmallStruct.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = Test.SmallStruct.empty();
            if sz > 0
                r(1, sz) = Test.SmallStruct();
                for i = 1:sz
                    r(i).m = is.readByte();
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                Test.SmallStructSeq.write(os, seq);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                r = Test.SmallStructSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
