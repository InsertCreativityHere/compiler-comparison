% MyEnum   Summary of MyEnum
%
% MyEnum Properties:
%   MyEnumMember

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef MyEnum < uint8
    enumeration
        MyEnumMember (0)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.MyEnum.MyEnumMember), 0);
            else
                os.writeEnum(int32(v), 0);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.MyEnum.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(0);
            r = Test.MyEnum.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Test.MyEnum.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = Test.MyEnum.MyEnumMember;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
