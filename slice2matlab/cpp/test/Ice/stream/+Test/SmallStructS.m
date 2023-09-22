
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef SmallStructS
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                Test.SmallStruct.ice_write(os, seq(i));
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.SmallStructS.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = Test.SmallStruct.empty();
            if sz > 0
                r(1, sz) = Test.SmallStruct();
                for i = 1:sz
                    r(i).bo = is.readBool();
                    r(i).by = is.readByte();
                    r(i).sh = is.readShort();
                    r(i).i = is.readInt();
                    r(i).l = is.readLong();
                    r(i).f = is.readFloat();
                    r(i).d = is.readDouble();
                    r(i).str = is.readString();
                    r(i).e = Test.MyEnum.ice_read(is);
                    r(i).p = Test.MyInterfacePrx.ice_read(is);
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.SmallStructS.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
