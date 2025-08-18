classdef (Sealed) StructKey
    %STRUCTKEY
    %
    %   Creation
    %     Syntax
    %       obj = Test.StructKey()
    %       obj = Test.StructKey(i, s)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   StructKey Properties:
    %     i
    %     s
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % I
        %   int32 scalar
        i (1, 1) int32
        
        % S
        %   character vector
        s (1, :) char
    end
    methods
        function obj = StructKey(i, s)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.i = i;
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
            r = Test.StructKey();
            r.i = is.readInt();
            r.s = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.StructKey();
            end
            os.writeInt(v.i);
            os.writeString(v.s);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.StructKey.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.StructKey.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
