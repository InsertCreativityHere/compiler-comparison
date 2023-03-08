
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef S2Seq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                Test.S2.ice_write(os, seq(i));
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.S2Seq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = Test.S2.empty();
            if sz > 0
                r(1, sz) = Test.S2();
                for i = 1:sz
                    r(i).theC2Dict = Test.C2Dict.read(is);
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.S2Seq.read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = convert(seq)
            r = seq;
            for i = 1:length(seq)
                r(i).theC2Dict = Test.C2Dict.convert(r(i).theC2Dict);
            end
        end
    end
end
