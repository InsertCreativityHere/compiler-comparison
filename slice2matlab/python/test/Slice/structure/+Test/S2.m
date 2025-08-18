classdef (Sealed) S2
    %S2
    %
    %   Creation
    %     Syntax
    %       obj = Test.S2()
    %       obj = Test.S2(bo, by, sh, i, l, str, seq, s)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   S2 Properties:
    %     bo
    %     by
    %     sh
    %     i
    %     l
    %     str
    %     seq
    %     s
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % BO
        %   logical scalar
        bo (1, 1) logical
        
        % BY
        %   uint8 scalar
        by (1, 1) uint8
        
        % SH
        %   int16 scalar
        sh (1, 1) int16
        
        % I
        %   int32 scalar
        i (1, 1) int32
        
        % L
        %   int64 scalar
        l (1, 1) int64
        
        % STR
        %   character vector
        str (1, :) char
        
        % SEQ
        %   int32 vector
        seq (1, :) int32
        
        % S
        %   Test.S1 scalar
        s Test.S1 {mustBeScalarOrEmpty} = Test.S1.empty
    end
    methods
        function obj = S2(bo, by, sh, i, l, str, seq, s)
            if nargin > 0
                assert(nargin == 8, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = Test.S2();
            r.bo = is.readBool();
            r.by = is.readByte();
            r.sh = is.readShort();
            r.i = is.readInt();
            r.l = is.readLong();
            r.str = is.readString();
            r.seq = is.readIntSeq();
            r.s = Test.S1.ice_read(is);
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
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.S2.ice_read(is);
            else
                r = Ice.Unset;
            end
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
