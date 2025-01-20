
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef NestedEnum2 < uint8
    enumeration
        nestedEnum4 (0)
        nestedEnum5 (1)
        nestedEnum6 (2)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test2.Sub2.NestedEnum2.nestedEnum4), 2);
            else
                os.writeEnum(int32(v), 2);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(2);
            r = Test2.Sub2.NestedEnum2.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test2.Sub2.NestedEnum2.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Test2.Sub2.NestedEnum2.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = Test2.Sub2.NestedEnum2.nestedEnum4;
                case 1
                    r = Test2.Sub2.NestedEnum2.nestedEnum5;
                case 2
                    r = Test2.Sub2.NestedEnum2.nestedEnum6;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
