% E   Summary of E
%
% E Properties:
%   E1
%   E2
%   E3

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef E < uint8
    enumeration
        E1 (0)
        E2 (1)
        E3 (2)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.E.E1), 2);
            else
                os.writeEnum(int32(v), 2);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.E.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(2);
            r = Test.E.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Test.E.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = Test.E.E1;
                case 1
                    r = Test.E.E2;
                case 2
                    r = Test.E.E3;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
