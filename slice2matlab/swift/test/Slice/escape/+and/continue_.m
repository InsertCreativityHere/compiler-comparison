% continue_   Summary of continue_
%
% continue_ Properties:
%   let
%   var

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef continue_ < uint8
    enumeration
        let (0)
        var (1)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(and.continue_.let), 1);
            else
                os.writeEnum(int32(v), 1);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(1);
            r = and.continue_.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                and.continue_.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = and.continue_.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = and.continue_.let;
                case 1
                    r = and.continue_.var;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
