% Struct2   Summary of Struct2
%
% Struct2 Properties:
%   boolFalse
%   boolTrue
%   b
%   s
%   i
%   l
%   f
%   d
%   str
%   c
%   noDefault

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from DefaultValueTest.ice by slice2matlab version 3.7.9

classdef Struct2
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
        c Test.Color
        noDefault char
    end
    methods
        function obj = Struct2(boolFalse, boolTrue, b, s, i, l, f, d, str, c, noDefault)
            if nargin == 0
                obj.boolFalse = false;
                obj.boolTrue = true;
                obj.b = 1;
                obj.s = 2;
                obj.i = 3;
                obj.l = 4;
                obj.f = 5;
                obj.d = 6;
                obj.str = sprintf('foo bar');
                obj.c = Test.Color.blue;
                obj.noDefault = '';
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
                obj.c = c;
                obj.noDefault = noDefault;
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
            r.boolFalse = is.readBool();
            r.boolTrue = is.readBool();
            r.b = is.readByte();
            r.s = is.readShort();
            r.i = is.readInt();
            r.l = is.readLong();
            r.f = is.readFloat();
            r.d = is.readDouble();
            r.str = is.readString();
            r.c = Test.Color.ice_read(is);
            r.noDefault = is.readString();
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
            os.writeBool(v.boolFalse);
            os.writeBool(v.boolTrue);
            os.writeByte(v.b);
            os.writeShort(v.s);
            os.writeInt(v.i);
            os.writeLong(v.l);
            os.writeFloat(v.f);
            os.writeDouble(v.d);
            os.writeString(v.str);
            Test.Color.ice_write(os, v.c);
            os.writeString(v.noDefault);
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
