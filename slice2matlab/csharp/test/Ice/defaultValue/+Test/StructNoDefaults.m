classdef (Sealed) StructNoDefaults
    %STRUCTNODEFAULTS
    %
    %   Creation
    %     Syntax
    %       obj = Test.StructNoDefaults()
    %       obj = Test.StructNoDefaults(bo, b, s, i, l, f, d, str, c1, bs, iseq, st, st2, dict)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   StructNoDefaults Properties:
    %     bo
    %     b
    %     s
    %     i
    %     l
    %     f
    %     d
    %     str
    %     c1
    %     bs
    %     iseq
    %     st
    %     st2
    %     dict
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % BO
        %   logical scalar
        bo (1, 1) logical
        
        % B
        %   uint8 scalar
        b (1, 1) uint8
        
        % S
        %   int16 scalar
        s (1, 1) int16
        
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
        
        % C1
        %   Test.Color scalar
        c1 (1, 1) Test.Color
        
        % BS
        %   uint8 vector
        bs (1, :) uint8
        
        % ISEQ
        %   int32 vector
        iseq (1, :) int32
        
        % ST
        %   Test.InnerStruct scalar
        st Test.InnerStruct {mustBeScalarOrEmpty} = Test.InnerStruct.empty
        
        % ST2
        %   Test.InnerStruct2 scalar
        st2 Test.InnerStruct2 {mustBeScalarOrEmpty} = Test.InnerStruct2.empty
        
        % DICT
        %   int32, string) scalar
        dict (1, 1) dictionary = configureDictionary('int32', 'char')
    end
    methods
        function obj = StructNoDefaults(bo, b, s, i, l, f, d, str, c1, bs, iseq, st, st2, dict)
            if nargin > 0
                assert(nargin == 14, 'Invalid number of arguments');
                obj.bo = bo;
                obj.b = b;
                obj.s = s;
                obj.i = i;
                obj.l = l;
                obj.f = f;
                obj.d = d;
                obj.str = str;
                obj.c1 = c1;
                obj.bs = bs;
                obj.iseq = iseq;
                obj.st = st;
                obj.st2 = st2;
                obj.dict = dict;
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
            r = Test.StructNoDefaults();
            r.bo = is.readBool();
            r.b = is.readByte();
            r.s = is.readShort();
            r.i = is.readInt();
            r.l = is.readLong();
            r.f = is.readFloat();
            r.d = is.readDouble();
            r.str = is.readString();
            r.c1 = Test.Color.ice_read(is);
            r.bs = is.readByteSeq();
            r.iseq = is.readIntSeq();
            r.st = Test.InnerStruct.ice_read(is);
            r.st2 = Test.InnerStruct2.ice_read(is);
            r.dict = Test.IntStringDict.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.StructNoDefaults();
            end
            os.writeBool(v.bo);
            os.writeByte(v.b);
            os.writeShort(v.s);
            os.writeInt(v.i);
            os.writeLong(v.l);
            os.writeFloat(v.f);
            os.writeDouble(v.d);
            os.writeString(v.str);
            Test.Color.ice_write(os, v.c1);
            os.writeByteSeq(v.bs);
            os.writeIntSeq(v.iseq);
            Test.InnerStruct.ice_write(os, v.st);
            Test.InnerStruct2.ice_write(os, v.st2);
            Test.IntStringDict.write(os, v.dict);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.StructNoDefaults.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.StructNoDefaults.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
