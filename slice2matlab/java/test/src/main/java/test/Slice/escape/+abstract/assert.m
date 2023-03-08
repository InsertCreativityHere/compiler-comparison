% assert   Summary of assert
%
% assert Properties:
%   boolean

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.9

classdef assert < uint8
    enumeration
        boolean (0)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(abstract.assert.boolean), 0);
            else
                os.writeEnum(int32(v), 0);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                abstract.assert.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(0);
            r = abstract.assert.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = abstract.assert.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = abstract.assert.boolean;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
