classdef (Sealed) BufferStruct
    %BUFFERSTRUCT
    %
    %   Creation
    %     Syntax
    %       obj = Test.BufferStruct()
    %       obj = Test.BufferStruct(byteBuf, boolBuf, shortBuf, intBuf, longBuf, floatBuf, doubleBuf)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   BufferStruct Properties:
    %     byteBuf
    %     boolBuf
    %     shortBuf
    %     intBuf
    %     longBuf
    %     floatBuf
    %     doubleBuf
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % BYTEBUF
        %   uint8 vector
        byteBuf (1, :) uint8
        
        % BOOLBUF
        %   logical vector
        boolBuf (1, :) logical
        
        % SHORTBUF
        %   int16 vector
        shortBuf (1, :) int16
        
        % INTBUF
        %   int32 vector
        intBuf (1, :) int32
        
        % LONGBUF
        %   int64 vector
        longBuf (1, :) int64
        
        % FLOATBUF
        %   single vector
        floatBuf (1, :) single
        
        % DOUBLEBUF
        %   double vector
        doubleBuf (1, :) double
    end
    methods
        function obj = BufferStruct(byteBuf, boolBuf, shortBuf, intBuf, longBuf, floatBuf, doubleBuf)
            if nargin > 0
                assert(nargin == 7, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = Test.BufferStruct();
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
