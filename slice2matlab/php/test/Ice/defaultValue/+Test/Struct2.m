% Struct2   Summary of Struct2
%
% Struct2 Properties:
%   boolTrue
%   b
%   s
%   i
%   l
%   f
%   d
%   str
%   c1
%   c2
%   c3
%   nc1
%   nc2
%   nc3
%   zeroI
%   zeroL
%   zeroF
%   zeroDotF
%   zeroD
%   zeroDotD

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef Struct2
    properties
        boolTrue logical
        b uint8
        s int16
        i int32
        l int64
        f single
        d double
        str char
        c1 Test.Color
        c2 Test.Color
        c3 Test.Color
        nc1 Test.Nested.Color
        nc2 Test.Nested.Color
        nc3 Test.Nested.Color
        zeroI int32
        zeroL int64
        zeroF single
        zeroDotF single
        zeroD double
        zeroDotD double
    end
    methods
        function obj = Struct2(boolTrue, b, s, i, l, f, d, str, c1, c2, c3, nc1, nc2, nc3, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD)
            if nargin == 0
                obj.boolTrue = Test.ConstBool.value;
                obj.b = Test.ConstByte.value;
                obj.s = Test.ConstShort.value;
                obj.i = Test.ConstInt.value;
                obj.l = Test.ConstLong.value;
                obj.f = Test.ConstFloat.value;
                obj.d = Test.ConstDouble.value;
                obj.str = Test.ConstString.value;
                obj.c1 = Test.ConstColor1.value;
                obj.c2 = Test.ConstColor2.value;
                obj.c3 = Test.ConstColor3.value;
                obj.nc1 = Test.ConstNestedColor1.value;
                obj.nc2 = Test.ConstNestedColor2.value;
                obj.nc3 = Test.ConstNestedColor3.value;
                obj.zeroI = Test.ConstZeroI.value;
                obj.zeroL = Test.ConstZeroL.value;
                obj.zeroF = Test.ConstZeroF.value;
                obj.zeroDotF = Test.ConstZeroDotF.value;
                obj.zeroD = Test.ConstZeroD.value;
                obj.zeroDotD = Test.ConstZeroDotD.value;
            elseif ne(boolTrue, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = Test.Struct2(IceInternal.NoInit.Instance);
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
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.Struct2.ice_read(is);
            else
                r = Ice.Unset;
            end
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
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.Struct2.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
