% END   Summary of END
%
% END Properties:
%   alias

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef END < uint8
    enumeration
        alias (0)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(BEGIN.END.alias), 0);
            else
                os.writeEnum(int32(v), 0);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                BEGIN.END.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(0);
            r = BEGIN.END.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = BEGIN.END.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = BEGIN.END.alias;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
