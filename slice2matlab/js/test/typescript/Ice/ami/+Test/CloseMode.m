% CloseMode   Summary of CloseMode
%
% CloseMode Properties:
%   Forcefully
%   Gracefully
%   GracefullyWithWait

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef CloseMode < uint8
    enumeration
        Forcefully (0)
        Gracefully (1)
        GracefullyWithWait (2)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.CloseMode.Forcefully), 2);
            else
                os.writeEnum(int32(v), 2);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.CloseMode.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(2);
            r = Test.CloseMode.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Test.CloseMode.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = Test.CloseMode.Forcefully;
                case 1
                    r = Test.CloseMode.Gracefully;
                case 2
                    r = Test.CloseMode.GracefullyWithWait;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
