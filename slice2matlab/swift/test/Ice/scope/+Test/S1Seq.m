
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef S1Seq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                Test.S1.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = Test.S1.empty();
            if sz > 0
                r(1, sz) = Test.S1();
                for i = 1:sz
                    r(i).s = is.readString();
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.S1Seq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.S1Seq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
