% Struct1   Summary of Struct1
%
% Struct1 Properties:
%   bo
%   by
%   sh
%   i
%   l
%   f
%   d
%   str
%   e
%   p

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Struct1
    properties
        bo logical
        by uint8
        sh int16
        i int32
        l int64
        f single
        d double
        str char
        e Test.MyEnum
        p
    end
    methods
        function obj = Struct1(bo, by, sh, i, l, f, d, str, e, p)
            if nargin == 0
                obj.bo = false;
                obj.by = 0;
                obj.sh = 0;
                obj.i = 0;
                obj.l = 0;
                obj.f = 0;
                obj.d = 0;
                obj.str = '';
                obj.e = Test.MyEnum.enum1;
                obj.p = [];
            elseif ne(bo, IceInternal.NoInit.Instance)
                obj.bo = bo;
                obj.by = by;
                obj.sh = sh;
                obj.i = i;
                obj.l = l;
                obj.f = f;
                obj.d = d;
                obj.str = str;
                obj.e = e;
                obj.p = p;
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
            r = Test.Struct1(IceInternal.NoInit.Instance);
            r.bo = is.readBool();
            r.by = is.readByte();
            r.sh = is.readShort();
            r.i = is.readInt();
            r.l = is.readLong();
            r.f = is.readFloat();
            r.d = is.readDouble();
            r.str = is.readString();
            r.e = Test.MyEnum.ice_read(is);
            r.p = Test.InitialPrx.ice_read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.Struct1.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Struct1();
            end
            os.writeBool(v.bo);
            os.writeByte(v.by);
            os.writeShort(v.sh);
            os.writeInt(v.i);
            os.writeLong(v.l);
            os.writeFloat(v.f);
            os.writeDouble(v.d);
            os.writeString(v.str);
            Test.MyEnum.ice_write(os, v.e);
            os.writeProxy(v.p);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.Struct1.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
