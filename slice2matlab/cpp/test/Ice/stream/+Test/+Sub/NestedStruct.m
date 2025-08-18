classdef (Sealed) NestedStruct
    %NESTEDSTRUCT
    %
    %   Creation
    %     Syntax
    %       obj = Test.Sub.NestedStruct()
    %       obj = Test.Sub.NestedStruct(bo, by, sh, i, l, f, d, str, e)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   NestedStruct Properties:
    %     bo
    %     by
    %     sh
    %     i
    %     l
    %     f
    %     d
    %     str
    %     e
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % BO
        %   logical scalar
        bo (1, 1) logical
        
        % BY
        %   uint8 scalar
        by (1, 1) uint8
        
        % SH
        %   int16 scalar
        sh (1, 1) int16
        
        % I
        %   int32 scalar
        i (1, 1) int32
        
        % L
        %   int64 scalar
        l (1, 1) int64
        
        % F
        %   single scalar
        f (1, 1) single
        
        % D
        %   double scalar
        d (1, 1) double
        
        % STR
        %   character vector
        str (1, :) char
        
        % E
        %   Test.Sub.NestedEnum scalar
        e (1, 1) Test.Sub.NestedEnum
    end
    methods
        function obj = NestedStruct(bo, by, sh, i, l, f, d, str, e)
            if nargin > 0
                assert(nargin == 9, 'Invalid number of arguments');
                obj.bo = bo;
                obj.by = by;
                obj.sh = sh;
                obj.i = i;
                obj.l = l;
                obj.f = f;
                obj.d = d;
                obj.str = str;
                obj.e = e;
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
            r = Test.Sub.NestedStruct();
            r.bo = is.readBool();
            r.by = is.readByte();
            r.sh = is.readShort();
            r.i = is.readInt();
            r.l = is.readLong();
            r.f = is.readFloat();
            r.d = is.readDouble();
            r.str = is.readString();
            r.e = Test.Sub.NestedEnum.ice_read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Sub.NestedStruct();
            end
            os.writeBool(v.bo);
            os.writeByte(v.by);
            os.writeShort(v.sh);
            os.writeInt(v.i);
            os.writeLong(v.l);
            os.writeFloat(v.f);
            os.writeDouble(v.d);
            os.writeString(v.str);
            Test.Sub.NestedEnum.ice_write(os, v.e);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.Sub.NestedStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.Sub.NestedStruct.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
