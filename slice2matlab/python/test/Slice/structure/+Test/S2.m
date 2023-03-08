% S2   Summary of S2
%
% S2 Properties:
%   bo
%   by
%   sh
%   i
%   l
%   str
%   seq
%   s

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef S2
    properties
        bo logical
        by uint8
        sh int16
        i int32
        l int64
        str char
        seq
        s Test.S1
    end
    methods
        function obj = S2(bo, by, sh, i, l, str, seq, s)
            if nargin == 0
                obj.bo = false;
                obj.by = 0;
                obj.sh = 0;
                obj.i = 0;
                obj.l = 0;
                obj.str = '';
                obj.seq = [];
                obj.s = Test.S1();
            elseif ne(bo, IceInternal.NoInit.Instance)
                obj.bo = bo;
                obj.by = by;
                obj.sh = sh;
                obj.i = i;
                obj.l = l;
                obj.str = str;
                obj.seq = seq;
                obj.s = s;
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
            r = Test.S2(IceInternal.NoInit.Instance);
            r.bo = is.readBool();
            r.by = is.readByte();
            r.sh = is.readShort();
            r.i = is.readInt();
            r.l = is.readLong();
            r.str = is.readString();
            r.seq = is.readIntSeq();
            r.s = Test.S1.ice_read(is);
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
            os.writeString(v.str);
            os.writeIntSeq(v.seq);
            Test.S1.ice_write(os, v.s);
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
