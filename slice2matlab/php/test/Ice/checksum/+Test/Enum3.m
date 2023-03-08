% Enum3   Summary of Enum3
%
% Enum3 Properties:
%   Enum31
%   Enum32
%   Enum33

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from CTypes.ice by slice2matlab version 3.7.9

classdef Enum3 < uint8
    enumeration
        Enum31 (0)
        Enum32 (1)
        Enum33 (2)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.Enum3.Enum31), 2);
            else
                os.writeEnum(int32(v), 2);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.Enum3.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(2);
            r = Test.Enum3.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Test.Enum3.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = Test.Enum3.Enum31;
                case 1
                    r = Test.Enum3.Enum32;
                case 2
                    r = Test.Enum3.Enum33;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
