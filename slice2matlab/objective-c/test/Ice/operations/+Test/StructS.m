
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from OperationsTest.ice by slice2matlab version 3.7.9

classdef StructS
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                Test.Structure.ice_write(os, seq(i));
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.StructS.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = Test.Structure.empty();
            if sz > 0
                r(1, sz) = Test.Structure();
                for i = 1:sz
                    r(i).p = Test.MyClassPrx.ice_read(is);
                    r(i).e = Test.MyEnum.ice_read(is);
                    r(i).s = Test.AnotherStruct.ice_read(is);
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.StructS.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
