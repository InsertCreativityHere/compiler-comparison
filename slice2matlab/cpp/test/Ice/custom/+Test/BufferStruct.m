
% Copyright (c) ZeroC, Inc.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef BufferStruct
    properties
        byteBuf
        boolBuf
        shortBuf
        intBuf
        longBuf
        floatBuf
        doubleBuf
    end
    methods
        function obj = BufferStruct(byteBuf, boolBuf, shortBuf, intBuf, longBuf, floatBuf, doubleBuf)
            if nargin == 0
                obj.byteBuf = [];
                obj.boolBuf = [];
                obj.shortBuf = [];
                obj.intBuf = [];
                obj.longBuf = [];
                obj.floatBuf = [];
                obj.doubleBuf = [];
            elseif ne(byteBuf, IceInternal.NoInit.Instance)
                obj.byteBuf = byteBuf;
                obj.boolBuf = boolBuf;
                obj.shortBuf = shortBuf;
                obj.intBuf = intBuf;
                obj.longBuf = longBuf;
                obj.floatBuf = floatBuf;
                obj.doubleBuf = doubleBuf;
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
            r = Test.BufferStruct(IceInternal.NoInit.Instance);
            r.byteBuf = is.readByteSeq();
            r.boolBuf = is.readBoolSeq();
            r.shortBuf = is.readShortSeq();
            r.intBuf = is.readIntSeq();
            r.longBuf = is.readLongSeq();
            r.floatBuf = is.readFloatSeq();
            r.doubleBuf = is.readDoubleSeq();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.BufferStruct();
            end
            os.writeByteSeq(v.byteBuf);
            os.writeBoolSeq(v.boolBuf);
            os.writeShortSeq(v.shortBuf);
            os.writeIntSeq(v.intBuf);
            os.writeLongSeq(v.longBuf);
            os.writeFloatSeq(v.floatBuf);
            os.writeDoubleSeq(v.doubleBuf);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.BufferStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.BufferStruct.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
