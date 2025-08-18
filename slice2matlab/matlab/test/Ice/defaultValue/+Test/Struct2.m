classdef (Sealed) Struct2
    %STRUCT2
    %
    %   Creation
    %     Syntax
    %       obj = Test.Struct2()
    %       obj = Test.Struct2(boolTrue, b, s, i, l, f, d, str, c1, c2, c3, nc1, nc2, nc3, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Struct2 Properties:
    %     boolTrue
    %     b
    %     s
    %     i
    %     l
    %     f
    %     d
    %     str
    %     c1
    %     c2
    %     c3
    %     nc1
    %     nc2
    %     nc3
    %     zeroI
    %     zeroL
    %     zeroF
    %     zeroDotF
    %     zeroD
    %     zeroDotD
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % BOOLTRUE
        %   logical scalar
        boolTrue (1, 1) logical = Test.ConstBool.value
        
        % B
        %   uint8 scalar
        b (1, 1) uint8 = Test.ConstByte.value
        
        % S
        %   int16 scalar
        s (1, 1) int16 = Test.ConstShort.value
        
        % I
        %   int32 scalar
        i (1, 1) int32 = Test.ConstInt.value
        
        % L
        %   int64 scalar
        l (1, 1) int64 = Test.ConstLong.value
        
        % F
        %   single scalar
        f (1, 1) single = Test.ConstFloat.value
        
        % D
        %   double scalar
        d (1, 1) double = Test.ConstDouble.value
        
        % STR
        %   character vector
        str (1, :) char = Test.ConstString.value
        
        % C1
        %   Test.Color scalar
        c1 (1, 1) Test.Color = Test.ConstColor1.value
        
        % C2
        %   Test.Color scalar
        c2 (1, 1) Test.Color = Test.ConstColor2.value
        
        % C3
        %   Test.Color scalar
        c3 (1, 1) Test.Color = Test.ConstColor3.value
        
        % NC1
        %   Test.Nested.Color scalar
        nc1 (1, 1) Test.Nested.Color = Test.ConstNestedColor1.value
        
        % NC2
        %   Test.Nested.Color scalar
        nc2 (1, 1) Test.Nested.Color = Test.ConstNestedColor2.value
        
        % NC3
        %   Test.Nested.Color scalar
        nc3 (1, 1) Test.Nested.Color = Test.ConstNestedColor3.value
        
        % ZEROI
        %   int32 scalar
        zeroI (1, 1) int32 = Test.ConstZeroI.value
        
        % ZEROL
        %   int64 scalar
        zeroL (1, 1) int64 = Test.ConstZeroL.value
        
        % ZEROF
        %   single scalar
        zeroF (1, 1) single = Test.ConstZeroF.value
        
        % ZERODOTF
        %   single scalar
        zeroDotF (1, 1) single = Test.ConstZeroDotF.value
        
        % ZEROD
        %   double scalar
        zeroD (1, 1) double = Test.ConstZeroD.value
        
        % ZERODOTD
        %   double scalar
        zeroDotD (1, 1) double = Test.ConstZeroDotD.value
    end
    methods
        function obj = Struct2(boolTrue, b, s, i, l, f, d, str, c1, c2, c3, nc1, nc2, nc3, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD)
            if nargin > 0
                assert(nargin == 20, 'Invalid number of arguments');
                obj.boolTrue = boolTrue;
                obj.b = b;
                obj.s = s;
                obj.i = i;
                obj.l = l;
                obj.f = f;
                obj.d = d;
                obj.str = str;
                obj.c1 = c1;
                obj.c2 = c2;
                obj.c3 = c3;
                obj.nc1 = nc1;
                obj.nc2 = nc2;
                obj.nc3 = nc3;
                obj.zeroI = zeroI;
                obj.zeroL = zeroL;
                obj.zeroF = zeroF;
                obj.zeroDotF = zeroDotF;
                obj.zeroD = zeroD;
                obj.zeroDotD = zeroDotD;
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
            r = Test.Struct2();
            r.boolTrue = is.readBool();
            r.b = is.readByte();
            r.s = is.readShort();
            r.i = is.readInt();
            r.l = is.readLong();
            r.f = is.readFloat();
            r.d = is.readDouble();
            r.str = is.readString();
            r.c1 = Test.Color.ice_read(is);
            r.c2 = Test.Color.ice_read(is);
            r.c3 = Test.Color.ice_read(is);
            r.nc1 = Test.Nested.Color.ice_read(is);
            r.nc2 = Test.Nested.Color.ice_read(is);
            r.nc3 = Test.Nested.Color.ice_read(is);
            r.zeroI = is.readInt();
            r.zeroL = is.readLong();
            r.zeroF = is.readFloat();
            r.zeroDotF = is.readFloat();
            r.zeroD = is.readDouble();
            r.zeroDotD = is.readDouble();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Struct2();
            end
            os.writeBool(v.boolTrue);
            os.writeByte(v.b);
            os.writeShort(v.s);
            os.writeInt(v.i);
            os.writeLong(v.l);
            os.writeFloat(v.f);
            os.writeDouble(v.d);
            os.writeString(v.str);
            Test.Color.ice_write(os, v.c1);
            Test.Color.ice_write(os, v.c2);
            Test.Color.ice_write(os, v.c3);
            Test.Nested.Color.ice_write(os, v.nc1);
            Test.Nested.Color.ice_write(os, v.nc2);
            Test.Nested.Color.ice_write(os, v.nc3);
            os.writeInt(v.zeroI);
            os.writeLong(v.zeroL);
            os.writeFloat(v.zeroF);
            os.writeFloat(v.zeroDotF);
            os.writeDouble(v.zeroD);
            os.writeDouble(v.zeroDotD);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.Struct2.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.Struct2.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
