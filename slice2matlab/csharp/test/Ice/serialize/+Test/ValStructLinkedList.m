
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef ValStructLinkedList
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                Test.ValStruct.ice_write(os, seq(i));
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.ValStructLinkedList.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = Test.ValStruct.empty();
            if sz > 0
                r(1, sz) = Test.ValStruct();
                for i = 1:sz
                    r(i).bo = is.readBool();
                    r(i).by = is.readByte();
                    r(i).sh = is.readShort();
                    r(i).i = is.readInt();
                    r(i).l = is.readLong();
                    r(i).e = Test.MyEnum.ice_read(is);
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.ValStructLinkedList.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
