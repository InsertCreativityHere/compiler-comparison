
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef ByteEnum < uint8
    enumeration
        benum1 (0)
        benum2 (1)
        benum3 (10)
        benum4 (11)
        benum5 (20)
        benum6 (21)
        benum7 (30)
        benum8 (31)
        benum9 (40)
        benum10 (41)
        benum11 (126)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.ByteEnum.benum1), 126);
            else
                os.writeEnum(int32(v), 126);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(126);
            r = Test.ByteEnum.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.ByteEnum.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Test.ByteEnum.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = Test.ByteEnum.benum1;
                case 1
                    r = Test.ByteEnum.benum2;
                case 10
                    r = Test.ByteEnum.benum3;
                case 11
                    r = Test.ByteEnum.benum4;
                case 20
                    r = Test.ByteEnum.benum5;
                case 21
                    r = Test.ByteEnum.benum6;
                case 30
                    r = Test.ByteEnum.benum7;
                case 31
                    r = Test.ByteEnum.benum8;
                case 40
                    r = Test.ByteEnum.benum9;
                case 41
                    r = Test.ByteEnum.benum10;
                case 126
                    r = Test.ByteEnum.benum11;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
