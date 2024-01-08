
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from OptionalTest.ice by slice2matlab version 3.7.10

classdef VarStructSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                Test.VarStruct.ice_write(os, seq(i));
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.VarStructSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = Test.VarStruct.empty();
            if sz > 0
                r(1, sz) = Test.VarStruct();
                for i = 1:sz
                    r(i).m = is.readString();
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.VarStructSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
