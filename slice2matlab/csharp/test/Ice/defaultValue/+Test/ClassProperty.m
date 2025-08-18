classdef ClassProperty < Ice.Value
    %CLASSPROPERTY
    %
    %   Creation
    %     Syntax
    %       obj = Test.ClassProperty()
    %       obj = Test.ClassProperty(boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ClassProperty Properties:
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
        function obj = ClassProperty(boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD)
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
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::ClassProperty', -1, true);
            os.writeBool(obj.boolFalse);
            os.writeBool(obj.boolTrue);
            os.writeByte(obj.b);
            os.writeShort(obj.s);
            os.writeInt(obj.i);
            os.writeLong(obj.l);
            os.writeFloat(obj.f);
            os.writeDouble(obj.d);
            os.writeString(obj.str);
            os.writeString(obj.noDefault);
            os.writeInt(obj.zeroI);
            os.writeLong(obj.zeroL);
            os.writeFloat(obj.zeroF);
            os.writeFloat(obj.zeroDotF);
            os.writeDouble(obj.zeroD);
            os.writeDouble(obj.zeroDotD);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.boolFalse = is.readBool();
            obj.boolTrue = is.readBool();
            obj.b = is.readByte();
            obj.s = is.readShort();
            obj.i = is.readInt();
            obj.l = is.readLong();
            obj.f = is.readFloat();
            obj.d = is.readDouble();
            obj.str = is.readString();
            obj.noDefault = is.readString();
            obj.zeroI = is.readInt();
            obj.zeroL = is.readLong();
            obj.zeroF = is.readFloat();
            obj.zeroDotF = is.readFloat();
            obj.zeroD = is.readDouble();
            obj.zeroDotD = is.readDouble();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::ClassProperty';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::ClassProperty'
    end
end
