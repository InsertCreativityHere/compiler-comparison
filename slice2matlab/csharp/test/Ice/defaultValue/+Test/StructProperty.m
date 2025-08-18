classdef (Sealed) StructProperty
    %STRUCTPROPERTY
    %
    %   Creation
    %     Syntax
    %       obj = Test.StructProperty()
    %       obj = Test.StructProperty(boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   StructProperty Properties:
    %     boolFalse
    %     boolTrue
    %     b
    %     s
    %     i
    %     l
    %     f
    %     d
    %     str
    %     noDefault
    %     zeroI
    %     zeroL
    %     zeroF
    %     zeroDotF
    %     zeroD
    %     zeroDotD
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % BOOLFALSE
        %   logical scalar
        boolFalse (1, 1) logical = false
        
        % BOOLTRUE
        %   logical scalar
        boolTrue (1, 1) logical = true
        
        % B
        %   uint8 scalar
        b (1, 1) uint8 = 1
        
        % S
        %   int16 scalar
        s (1, 1) int16 = 2
        
        % I
        %   int32 scalar
        i (1, 1) int32 = 3
        
        % L
        %   int64 scalar
        l (1, 1) int64 = 4
        
        % F
        %   single scalar
        f (1, 1) single = 5.1
        
        % D
        %   double scalar
        d (1, 1) double = 6.2
        
        % STR
        %   character vector
        str (1, :) char = sprintf('foo bar')
        
        % NODEFAULT
        %   character vector
        noDefault (1, :) char
        
        % ZEROI
        %   int32 scalar
        zeroI (1, 1) int32 = 0
        
        % ZEROL
        %   int64 scalar
        zeroL (1, 1) int64 = 0
        
        % ZEROF
        %   single scalar
        zeroF (1, 1) single = 0
        
        % ZERODOTF
        %   single scalar
        zeroDotF (1, 1) single = 0
        
        % ZEROD
        %   double scalar
        zeroD (1, 1) double = 0
        
        % ZERODOTD
        %   double scalar
        zeroDotD (1, 1) double = 0
    end
    methods
        function obj = StructProperty(boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD)
            if nargin > 0
                assert(nargin == 16, 'Invalid number of arguments');
                obj.boolFalse = boolFalse;
                obj.boolTrue = boolTrue;
                obj.b = b;
                obj.s = s;
                obj.i = i;
                obj.l = l;
                obj.f = f;
                obj.d = d;
                obj.str = str;
                obj.noDefault = noDefault;
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
            r = Test.StructProperty();
            r.boolFalse = is.readBool();
            r.boolTrue = is.readBool();
            r.b = is.readByte();
            r.s = is.readShort();
            r.i = is.readInt();
            r.l = is.readLong();
            r.f = is.readFloat();
            r.d = is.readDouble();
            r.str = is.readString();
            r.noDefault = is.readString();
            r.zeroI = is.readInt();
            r.zeroL = is.readLong();
            r.zeroF = is.readFloat();
            r.zeroDotF = is.readFloat();
            r.zeroD = is.readDouble();
            r.zeroDotD = is.readDouble();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.StructProperty();
            end
            os.writeBool(v.boolFalse);
            os.writeBool(v.boolTrue);
            os.writeByte(v.b);
            os.writeShort(v.s);
            os.writeInt(v.i);
            os.writeLong(v.l);
            os.writeFloat(v.f);
            os.writeDouble(v.d);
            os.writeString(v.str);
            os.writeString(v.noDefault);
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
                r = Test.StructProperty.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.StructProperty.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
