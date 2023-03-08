% StructNoDefaults   Summary of StructNoDefaults
%
% StructNoDefaults Properties:
%   bo
%   b
%   s
%   i
%   l
%   f
%   d
%   str
%   c1
%   bs
%   iseq
%   st
%   st2
%   dict

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef StructNoDefaults
    properties
        bo logical
        b uint8
        s int16
        i int32
        l int64
        f single
        d double
        str char
        c1 Test.Color
        bs
        iseq
        st Test.InnerStruct
        st2 Test.InnerStruct2
        dict containers.Map
    end
    methods
        function obj = StructNoDefaults(bo, b, s, i, l, f, d, str, c1, bs, iseq, st, st2, dict)
            if nargin == 0
                obj.bo = false;
                obj.b = 0;
                obj.s = 0;
                obj.i = 0;
                obj.l = 0;
                obj.f = 0;
                obj.d = 0;
                obj.str = '';
                obj.c1 = Test.Color.red;
                obj.bs = [];
                obj.iseq = [];
                obj.st = Test.InnerStruct();
                obj.st2 = Test.InnerStruct2();
                obj.dict = containers.Map('KeyType', 'int32', 'ValueType', 'char');
            elseif ne(bo, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = Test.StructNoDefaults(IceInternal.NoInit.Instance);
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
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.StructNoDefaults.ice_read(is);
            else
                r = Ice.Unset;
            end
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
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.StructNoDefaults.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
