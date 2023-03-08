% Enum3   Summary of Enum3
%
% Enum3 Properties:
%   Enum32
%   Enum33

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef Enum3 < uint8
    enumeration
        Enum32 (0)
        Enum33 (1)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.Enum3.Enum32), 1);
            else
                os.writeEnum(int32(v), 1);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.Enum3.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(1);
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
                    r = Test.Enum3.Enum32;
                case 1
                    r = Test.Enum3.Enum33;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
