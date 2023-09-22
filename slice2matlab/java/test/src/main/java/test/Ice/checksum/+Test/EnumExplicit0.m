% EnumExplicit0   Summary of EnumExplicit0
%
% EnumExplicit0 Properties:
%   EnumExplicit01
%   EnumExplicit02
%   EnumExplicit03

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Types.ice by slice2matlab version 3.7.10

classdef EnumExplicit0 < uint8
    enumeration
        EnumExplicit01 (1)
        EnumExplicit02 (2)
        EnumExplicit03 (3)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.EnumExplicit0.EnumExplicit01), 3);
            else
                os.writeEnum(int32(v), 3);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.EnumExplicit0.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(3);
            r = Test.EnumExplicit0.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Test.EnumExplicit0.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 1
                    r = Test.EnumExplicit0.EnumExplicit01;
                case 2
                    r = Test.EnumExplicit0.EnumExplicit02;
                case 3
                    r = Test.EnumExplicit0.EnumExplicit03;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
