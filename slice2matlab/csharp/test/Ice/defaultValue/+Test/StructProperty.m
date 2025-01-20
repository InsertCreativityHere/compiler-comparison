
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef StructProperty
    properties
        boolFalse logical
        boolTrue logical
        b uint8
        s int16
        i int32
        l int64
        f single
        d double
        str char
        noDefault char
        zeroI int32
        zeroL int64
        zeroF single
        zeroDotF single
        zeroD double
        zeroDotD double
    end
    methods
        function obj = StructProperty(boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD)
            if nargin == 0
                obj.boolFalse = false;
                obj.boolTrue = true;
                obj.b = 1;
                obj.s = 2;
                obj.i = 3;
                obj.l = 4;
                obj.f = 5.1;
                obj.d = 6.2;
                obj.str = sprintf('foo bar');
                obj.noDefault = '';
                obj.zeroI = 0;
                obj.zeroL = 0;
                obj.zeroF = 0;
                obj.zeroDotF = 0;
                obj.zeroD = 0;
                obj.zeroDotD = 0;
            elseif ne(boolFalse, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = Test.StructProperty(IceInternal.NoInit.Instance);
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
