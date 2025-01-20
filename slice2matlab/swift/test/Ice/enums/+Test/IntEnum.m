
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef IntEnum < int32
    enumeration
        ienum1 (0)
        ienum2 (1)
        ienum3 (10)
        ienum4 (11)
        ienum5 (20)
        ienum6 (21)
        ienum7 (30)
        ienum8 (31)
        ienum9 (40)
        ienum10 (41)
        ienum11 (2147483647)
        ienum12 (2147483646)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.IntEnum.ienum1), 2147483647);
            else
                os.writeEnum(int32(v), 2147483647);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(2147483647);
            r = Test.IntEnum.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.IntEnum.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Test.IntEnum.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = Test.IntEnum.ienum1;
                case 1
                    r = Test.IntEnum.ienum2;
                case 10
                    r = Test.IntEnum.ienum3;
                case 11
                    r = Test.IntEnum.ienum4;
                case 20
                    r = Test.IntEnum.ienum5;
                case 21
                    r = Test.IntEnum.ienum6;
                case 30
                    r = Test.IntEnum.ienum7;
                case 31
                    r = Test.IntEnum.ienum8;
                case 40
                    r = Test.IntEnum.ienum9;
                case 41
                    r = Test.IntEnum.ienum10;
                case 2147483647
                    r = Test.IntEnum.ienum11;
                case 2147483646
                    r = Test.IntEnum.ienum12;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
