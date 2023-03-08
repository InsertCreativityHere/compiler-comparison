% Enum2   Summary of Enum2
%
% Enum2 Properties:
%   Enum21
%   Enum22
%   Enum23
%   Enum24

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef Enum2 < uint8
    enumeration
        Enum21 (0)
        Enum22 (1)
        Enum23 (2)
        Enum24 (3)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.Enum2.Enum21), 3);
            else
                os.writeEnum(int32(v), 3);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.Enum2.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(3);
            r = Test.Enum2.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Test.Enum2.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = Test.Enum2.Enum21;
                case 1
                    r = Test.Enum2.Enum22;
                case 2
                    r = Test.Enum2.Enum23;
                case 3
                    r = Test.Enum2.Enum24;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
