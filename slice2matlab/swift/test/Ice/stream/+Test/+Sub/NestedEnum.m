
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef NestedEnum < uint8
    enumeration
        nestedEnum1 (0)
        nestedEnum2 (1)
        nestedEnum3 (2)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.Sub.NestedEnum.nestedEnum1), 2);
            else
                os.writeEnum(int32(v), 2);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(2);
            r = Test.Sub.NestedEnum.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.Sub.NestedEnum.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Test.Sub.NestedEnum.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = Test.Sub.NestedEnum.nestedEnum1;
                case 1
                    r = Test.Sub.NestedEnum.nestedEnum2;
                case 2
                    r = Test.Sub.NestedEnum.nestedEnum3;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
