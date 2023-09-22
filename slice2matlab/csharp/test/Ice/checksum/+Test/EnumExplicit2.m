% EnumExplicit2   Summary of EnumExplicit2
%
% EnumExplicit2 Properties:
%   EnumExplicit21
%   EnumExplicit22
%   EnumExplicit23

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.10

classdef EnumExplicit2 < uint8
    enumeration
        EnumExplicit21 (1)
        EnumExplicit22 (3)
        EnumExplicit23 (4)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.EnumExplicit2.EnumExplicit21), 4);
            else
                os.writeEnum(int32(v), 4);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.EnumExplicit2.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(4);
            r = Test.EnumExplicit2.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Test.EnumExplicit2.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 1
                    r = Test.EnumExplicit2.EnumExplicit21;
                case 3
                    r = Test.EnumExplicit2.EnumExplicit22;
                case 4
                    r = Test.EnumExplicit2.EnumExplicit23;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
