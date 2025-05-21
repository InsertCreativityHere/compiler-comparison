
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef array < uint8
    enumeration
        clone (1)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(and.array.clone), 1);
            else
                os.writeEnum(int32(v), 1);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(1);
            r = and.array.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                and.array.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = and.array.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 1
                    r = and.array.clone;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
