% EnumExplicit1   Summary of EnumExplicit1
%
% EnumExplicit1 Properties:
%   EnumExplicit11
%   EnumExplicit13
%   EnumExplicit12

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef EnumExplicit1 < uint8
    enumeration
        EnumExplicit11 (1)
        EnumExplicit13 (3)
        EnumExplicit12 (2)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.EnumExplicit1.EnumExplicit11), 3);
            else
                os.writeEnum(int32(v), 3);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.EnumExplicit1.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(3);
            r = Test.EnumExplicit1.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Test.EnumExplicit1.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 1
                    r = Test.EnumExplicit1.EnumExplicit11;
                case 3
                    r = Test.EnumExplicit1.EnumExplicit13;
                case 2
                    r = Test.EnumExplicit1.EnumExplicit12;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
