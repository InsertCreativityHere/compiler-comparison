% S2   Summary of S2
%
% S2 Properties:
%   bo
%   by
%   sh
%   i
%   l
%   f
%   d
%   str
%   ss
%   il
%   sd
%   s
%   cls
%   prx

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef S2
    properties
        bo logical
        by uint8
        sh int16
        i int32
        l int64
        f single
        d double
        str char
        ss
        il
        sd containers.Map
        s Test.S1
        cls
        prx
    end
    methods
        function obj = S2(bo, by, sh, i, l, f, d, str, ss, il, sd, s, cls, prx)
            if nargin == 0
                obj.bo = false;
                obj.by = 0;
                obj.sh = 0;
                obj.i = 0;
                obj.l = 0;
                obj.f = 0;
                obj.d = 0;
                obj.str = '';
                obj.ss = [];
                obj.il = [];
                obj.sd = containers.Map('KeyType', 'char', 'ValueType', 'char');
                obj.s = Test.S1();
                obj.cls = [];
                obj.prx = [];
            elseif ne(bo, IceInternal.NoInit.Instance)
                obj.bo = bo;
                obj.by = by;
                obj.sh = sh;
                obj.i = i;
                obj.l = l;
                obj.f = f;
                obj.d = d;
                obj.str = str;
                obj.ss = ss;
                obj.il = il;
                obj.sd = sd;
                obj.s = s;
                obj.cls = cls;
                obj.prx = prx;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.cls = obj.cls.value;
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.S2(IceInternal.NoInit.Instance);
            r.bo = is.readBool();
            r.by = is.readByte();
            r.sh = is.readShort();
            r.i = is.readInt();
            r.l = is.readLong();
            r.f = is.readFloat();
            r.d = is.readDouble();
            r.str = is.readString();
            r.ss = is.readStringSeq();
            r.il = is.readIntSeq();
            r.sd = Test.StringDict.read(is);
            r.s = Test.S1.ice_read(is);
            cls_ = IceInternal.ValueHolder();
            r.cls = cls_;
            is.readValue(@(v_) cls_.set(v_), 'Test.C');
            r.prx = is.readProxy();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.S2.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.S2();
            end
            os.writeBool(v.bo);
            os.writeByte(v.by);
            os.writeShort(v.sh);
            os.writeInt(v.i);
            os.writeLong(v.l);
            os.writeFloat(v.f);
            os.writeDouble(v.d);
            os.writeString(v.str);
            os.writeStringSeq(v.ss);
            os.writeIntSeq(v.il);
            Test.StringDict.write(os, v.sd);
            Test.S1.ice_write(os, v.s);
            os.writeValue(v.cls);
            os.writeProxy(v.prx);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.S2.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
