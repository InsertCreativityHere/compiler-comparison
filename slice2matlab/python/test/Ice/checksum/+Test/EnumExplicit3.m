% EnumExplicit3   Summary of EnumExplicit3
%
% EnumExplicit3 Properties:
%   EnumExplicit31
%   EnumExplicit32
%   EnumExplicit33

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from CTypes.ice by slice2matlab version 3.7.9

classdef EnumExplicit3 < uint8
    enumeration
        EnumExplicit31 (1)
        EnumExplicit32 (2)
        EnumExplicit33 (3)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.EnumExplicit3.EnumExplicit31), 3);
            else
                os.writeEnum(int32(v), 3);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.EnumExplicit3.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(3);
            r = Test.EnumExplicit3.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Test.EnumExplicit3.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 1
                    r = Test.EnumExplicit3.EnumExplicit31;
                case 2
                    r = Test.EnumExplicit3.EnumExplicit32;
                case 3
                    r = Test.EnumExplicit3.EnumExplicit33;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
