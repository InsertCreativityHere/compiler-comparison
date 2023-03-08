% EnumExplicit2   Summary of EnumExplicit2
%
% EnumExplicit2 Properties:
%   EnumExplicit21
%   EnumExplicit22
%   EnumExplicit23

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from CTypes.ice by slice2matlab version 3.7.9

classdef EnumExplicit2 < uint8
    enumeration
        EnumExplicit21 (1)
        EnumExplicit22 (2)
        EnumExplicit23 (3)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.EnumExplicit2.EnumExplicit21), 3);
            else
                os.writeEnum(int32(v), 3);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.EnumExplicit2.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(3);
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
                case 2
                    r = Test.EnumExplicit2.EnumExplicit22;
                case 3
                    r = Test.EnumExplicit2.EnumExplicit23;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
