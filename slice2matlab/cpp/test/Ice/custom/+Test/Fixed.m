classdef (Sealed) Fixed
    %FIXED
    %
    %   Creation
    %     Syntax
    %       obj = Test.Fixed()
    %       obj = Test.Fixed(s)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Fixed Properties:
    %     s
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S
        %   int16 scalar
        s (1, 1) int16
    end
    methods
        function obj = Fixed(s)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.s = s;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = Test.Fixed();
            r.s = is.readShort();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Fixed();
            end
            os.writeShort(v.s);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.Fixed.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(2);
                Test.Fixed.ice_write(os, v);
            end
        end
    end
end
