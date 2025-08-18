classdef (Sealed) S2
    %S2
    %
    %   Creation
    %     Syntax
    %       obj = Test.S2()
    %       obj = Test.S2(bo, by, sh, i, l, f, d, str, ss, sd, s, cls, prx)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   S2 Properties:
    %     bo
    %     by
    %     sh
    %     i
    %     l
    %     f
    %     d
    %     str
    %     ss
    %     sd
    %     s
    %     cls
    %     prx
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
        
        % F
        %   single scalar
        f (1, 1) single
        
        % D
        %   double scalar
        d (1, 1) double
        
        % STR
        %   character vector
        str (1, :) char
        
        % SS
        %   string vector
        ss (1, :) char
        
        % SD
        %   string, string) scalar
        sd (1, 1) dictionary = configureDictionary('char', 'char')
        
        % S
        %   Test.S1 scalar
        s Test.S1 {mustBeScalarOrEmpty} = Test.S1.empty
        
        % CLS
        %   Test.C scalar | empty array of Test.C
        cls {mustBeScalarOrEmpty} = Test.C.empty
        
        % PRX
        %   Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
        prx Ice.ObjectPrx {mustBeScalarOrEmpty} = Ice.ObjectPrx.empty
    end
    methods
        function obj = S2(bo, by, sh, i, l, f, d, str, ss, sd, s, cls, prx)
            if nargin > 0
                assert(nargin == 13, 'Invalid number of arguments');
                obj.bo = bo;
                obj.by = by;
                obj.sh = sh;
                obj.i = i;
                obj.l = l;
                obj.f = f;
                obj.d = d;
                obj.str = str;
                obj.ss = ss;
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
    methods (Static)
        function r = ice_read(is)
            r = Test.S2();
            r.bo = is.readBool();
            r.by = is.readByte();
            r.sh = is.readShort();
            r.i = is.readInt();
            r.l = is.readLong();
            r.f = is.readFloat();
            r.d = is.readDouble();
            r.str = is.readString();
            r.ss = is.readStringSeq();
            r.sd = Test.StringDict.read(is);
            r.s = Test.S1.ice_read(is);
            cls_ = IceInternal.ValueHolder();
            r.cls = cls_;
            is.readValue(@(v_) cls_.set(v_), 'Test.C');
            r.prx = is.readProxy();
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
            Test.StringDict.write(os, v.sd);
            Test.S1.ice_write(os, v.s);
            os.writeValue(v.cls);
            os.writeProxy(v.prx);
        end
    end
end
