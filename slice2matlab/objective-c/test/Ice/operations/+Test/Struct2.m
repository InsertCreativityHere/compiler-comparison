% Struct2   Summary of Struct2
%
% Struct2 Properties:
%   b
%   i
%   f
%   d
%   by
%   sh
%   l
%   ss
%   dict
%   seq

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from OperationsTest.ice by slice2matlab version 3.7.10

classdef Struct2
    properties
        b logical
        i int32
        f single
        d double
        by uint8
        sh int16
        l int64
        ss
        dict containers.Map
        seq
    end
    methods
        function obj = Struct2(b, i, f, d, by, sh, l, ss, dict, seq)
            if nargin == 0
                obj.b = false;
                obj.i = 0;
                obj.f = 0;
                obj.d = 0;
                obj.by = 0;
                obj.sh = 0;
                obj.l = 0;
                obj.ss = [];
                obj.dict = containers.Map('KeyType', 'int32', 'ValueType', 'logical');
                obj.seq = [];
            elseif ne(b, IceInternal.NoInit.Instance)
                obj.b = b;
                obj.i = i;
                obj.f = f;
                obj.d = d;
                obj.by = by;
                obj.sh = sh;
                obj.l = l;
                obj.ss = ss;
                obj.dict = dict;
                obj.seq = seq;
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
            r.b = is.readBool();
            r.i = is.readInt();
            r.f = is.readFloat();
            r.d = is.readDouble();
            r.by = is.readByte();
            r.sh = is.readShort();
            r.l = is.readLong();
            r.ss = Test.StructS.read(is);
            r.dict = Test.ByteBoolD.read(is);
            r.seq = Test.MyEnumSS.read(is);
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
            os.writeBool(v.b);
            os.writeInt(v.i);
            os.writeFloat(v.f);
            os.writeDouble(v.d);
            os.writeByte(v.by);
            os.writeShort(v.sh);
            os.writeLong(v.l);
            Test.StructS.write(os, v.ss);
            Test.ByteBoolD.write(os, v.dict);
            Test.MyEnumSS.write(os, v.seq);
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
