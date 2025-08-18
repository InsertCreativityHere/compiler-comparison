classdef MultiOptional < Ice.Value
    %MULTIOPTIONAL
    %
    %   Creation
    %     Syntax
    %       obj = Test.MultiOptional()
    %       obj = Test.MultiOptional(a, b, c, d, e, f, g, h, i, j, bs, ss, iid, sid, fs, vs, shs, es, fss, vss, mips, ied, ifsd, ivsd, imipd, bos)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   MultiOptional Properties:
    %     a
    %     b
    %     c
    %     d
    %     e
    %     f
    %     g
    %     h
    %     i
    %     j
    %     bs
    %     ss
    %     iid
    %     sid
    %     fs
    %     vs
    %     shs
    %     es
    %     fss
    %     vss
    %     mips
    %     ied
    %     ifsd
    %     ivsd
    %     imipd
    %     bos
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % A
        %   uint8 scalar | Ice.Unset
        a (1, 1) = IceInternal.UnsetI.Instance
        
        % B
        %   logical scalar | Ice.Unset
        b (1, 1) = IceInternal.UnsetI.Instance
        
        % C
        %   int16 scalar | Ice.Unset
        c (1, 1) = IceInternal.UnsetI.Instance
        
        % D
        %   int32 scalar | Ice.Unset
        d (1, 1) = IceInternal.UnsetI.Instance
        
        % E
        %   int64 scalar | Ice.Unset
        e (1, 1) = IceInternal.UnsetI.Instance
        
        % F
        %   single scalar | Ice.Unset
        f (1, 1) = IceInternal.UnsetI.Instance
        
        % G
        %   double scalar | Ice.Unset
        g (1, 1) = IceInternal.UnsetI.Instance
        
        % H
        %   character vector | Ice.Unset
        h (1, :) = IceInternal.UnsetI.Instance
        
        % I
        %   Test.MyEnum scalar | Ice.Unset
        i (1, 1) = IceInternal.UnsetI.Instance
        
        % J
        %   Test.MyInterfacePrx scalar | empty array of Test.MyInterfacePrx | Ice.Unset
        j {mustBeScalarOrEmpty} = Test.MyInterfacePrx.empty
        
        % BS
        %   uint8 vector | Ice.Unset
        bs (1, :) = IceInternal.UnsetI.Instance
        
        % SS
        %   string vector | Ice.Unset
        ss (1, :) = IceInternal.UnsetI.Instance
        
        % IID
        %   int32, int32) scalar | Ice.Unset
        iid (1, 1) = IceInternal.UnsetI.Instance
        
        % SID
        %   string, int32) scalar | Ice.Unset
        sid (1, 1) = IceInternal.UnsetI.Instance
        
        % FS
        %   Test.FixedStruct scalar | Ice.Unset
        fs {mustBeScalarOrEmpty} = IceInternal.UnsetI.Instance
        
        % VS
        %   Test.VarStruct scalar | Ice.Unset
        vs {mustBeScalarOrEmpty} = IceInternal.UnsetI.Instance
        
        % SHS
        %   int16 vector | Ice.Unset
        shs (1, :) = IceInternal.UnsetI.Instance
        
        % ES
        %   Test.MyEnum vector | Ice.Unset
        es (1, :) = IceInternal.UnsetI.Instance
        
        % FSS
        %   Test.FixedStruct vector | Ice.Unset
        fss (1, :) = IceInternal.UnsetI.Instance
        
        % VSS
        %   Test.VarStruct vector | Ice.Unset
        vss (1, :) = IceInternal.UnsetI.Instance
        
        % MIPS
        %   cell array | Ice.Unset
        mips (1, :) = IceInternal.UnsetI.Instance
        
        % IED
        %   int32, Test.MyEnum) scalar | Ice.Unset
        ied (1, 1) = IceInternal.UnsetI.Instance
        
        % IFSD
        %   int32, Test.FixedStruct) scalar | Ice.Unset
        ifsd (1, 1) = IceInternal.UnsetI.Instance
        
        % IVSD
        %   int32, Test.VarStruct) scalar | Ice.Unset
        ivsd (1, 1) = IceInternal.UnsetI.Instance
        
        % IMIPD
        %   int32, cell) scalar | Ice.Unset
        imipd (1, 1) = IceInternal.UnsetI.Instance
        
        % BOS
        %   logical vector | Ice.Unset
        bos (1, :) = IceInternal.UnsetI.Instance
    end
    methods
        function obj = MultiOptional(a, b, c, d, e, f, g, h, i, j, bs, ss, iid, sid, fs, vs, shs, es, fss, vss, mips, ied, ifsd, ivsd, imipd, bos)
            if nargin > 0
                assert(nargin == 26, 'Invalid number of arguments');
                obj.a = a;
                obj.b = b;
                obj.c = c;
                obj.d = d;
                obj.e = e;
                obj.f = f;
                obj.g = g;
                obj.h = h;
                obj.i = i;
                obj.j = j;
                obj.bs = bs;
                obj.ss = ss;
                obj.iid = iid;
                obj.sid = sid;
                obj.fs = fs;
                obj.vs = vs;
                obj.shs = shs;
                obj.es = es;
                obj.fss = fss;
                obj.vss = vss;
                obj.mips = mips;
                obj.ied = ied;
                obj.ifsd = ifsd;
                obj.ivsd = ivsd;
                obj.imipd = imipd;
                obj.bos = bos;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::MultiOptional', -1, true);
            os.writeByteOpt(1, obj.a);
            os.writeBoolOpt(2, obj.b);
            os.writeShortOpt(3, obj.c);
            os.writeIntOpt(4, obj.d);
            os.writeLongOpt(5, obj.e);
            os.writeFloatOpt(6, obj.f);
            os.writeDoubleOpt(7, obj.g);
            os.writeStringOpt(8, obj.h);
            Test.MyEnum.ice_writeOpt(os, 9, obj.i);
            os.writeProxyOpt(10, obj.j);
            os.writeByteSeqOpt(12, obj.bs);
            os.writeStringSeqOpt(13, obj.ss);
            Test.IntIntDict.writeOpt(os, 14, obj.iid);
            Test.StringIntDict.writeOpt(os, 15, obj.sid);
            Test.FixedStruct.ice_writeOpt(os, 16, obj.fs);
            Test.VarStruct.ice_writeOpt(os, 17, obj.vs);
            os.writeShortSeqOpt(18, obj.shs);
            Test.MyEnumSeq.writeOpt(os, 19, obj.es);
            Test.FixedStructSeq.writeOpt(os, 20, obj.fss);
            Test.VarStructSeq.writeOpt(os, 21, obj.vss);
            Test.MyInterfacePrxSeq.writeOpt(os, 23, obj.mips);
            Test.IntEnumDict.writeOpt(os, 24, obj.ied);
            Test.IntFixedStructDict.writeOpt(os, 25, obj.ifsd);
            Test.IntVarStructDict.writeOpt(os, 26, obj.ivsd);
            Test.IntMyInterfacePrxDict.writeOpt(os, 28, obj.imipd);
            os.writeBoolSeqOpt(29, obj.bos);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.a = is.readByteOpt(1);
            obj.b = is.readBoolOpt(2);
            obj.c = is.readShortOpt(3);
            obj.d = is.readIntOpt(4);
            obj.e = is.readLongOpt(5);
            obj.f = is.readFloatOpt(6);
            obj.g = is.readDoubleOpt(7);
            obj.h = is.readStringOpt(8);
            obj.i = Test.MyEnum.ice_readOpt(is, 9);
            obj.j = is.readProxyOpt(10, 'Test.MyInterfacePrx');
            obj.bs = is.readByteSeqOpt(12);
            obj.ss = is.readStringSeqOpt(13);
            obj.iid = Test.IntIntDict.readOpt(is, 14);
            obj.sid = Test.StringIntDict.readOpt(is, 15);
            obj.fs = Test.FixedStruct.ice_readOpt(is, 16);
            obj.vs = Test.VarStruct.ice_readOpt(is, 17);
            obj.shs = is.readShortSeqOpt(18);
            obj.es = Test.MyEnumSeq.readOpt(is, 19);
            obj.fss = Test.FixedStructSeq.readOpt(is, 20);
            obj.vss = Test.VarStructSeq.readOpt(is, 21);
            obj.mips = Test.MyInterfacePrxSeq.readOpt(is, 23);
            obj.ied = Test.IntEnumDict.readOpt(is, 24);
            obj.ifsd = Test.IntFixedStructDict.readOpt(is, 25);
            obj.ivsd = Test.IntVarStructDict.readOpt(is, 26);
            obj.imipd = Test.IntMyInterfacePrxDict.readOpt(is, 28);
            obj.bos = is.readBoolSeqOpt(29);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::MultiOptional';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::MultiOptional'
    end
end
