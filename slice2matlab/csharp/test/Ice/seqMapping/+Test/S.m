classdef (Sealed) S
    %S
    %
    %   Creation
    %     Syntax
    %       obj = Test.S()
    %       obj = Test.S(i)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   S Properties:
    %     i
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % I
        %   int32 scalar
        i (1, 1) int32
    end
    methods
        function obj = S(i)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.i = i;
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
            r = Test.S();
            r.i = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.S();
            end
            os.writeInt(v.i);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.S.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                Test.S.ice_write(os, v);
            end
        end
    end
end
