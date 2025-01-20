
% Copyright (c) ZeroC, Inc.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef MultiOptional < Ice.Value
    properties
        a
        b
        c
        d
        e
        f
        g
        h
        i
        j
        bs
        ss
        iid
        sid
        fs
        vs
        shs
        es
        fss
        vss
        mips
        ied
        ifsd
        ivsd
        imipd
        bos
        ser
    end
    methods
        function obj = MultiOptional(a, b, c, d, e, f, g, h, i, j, bs, ss, iid, sid, fs, vs, shs, es, fss, vss, mips, ied, ifsd, ivsd, imipd, bos, ser)
            if nargin == 0
                obj.a = IceInternal.UnsetI.Instance;
                obj.b = IceInternal.UnsetI.Instance;
                obj.c = IceInternal.UnsetI.Instance;
                obj.d = IceInternal.UnsetI.Instance;
                obj.e = IceInternal.UnsetI.Instance;
                obj.f = IceInternal.UnsetI.Instance;
                obj.g = IceInternal.UnsetI.Instance;
                obj.h = IceInternal.UnsetI.Instance;
                obj.i = IceInternal.UnsetI.Instance;
                obj.j = [];
                obj.bs = IceInternal.UnsetI.Instance;
                obj.ss = IceInternal.UnsetI.Instance;
                obj.iid = IceInternal.UnsetI.Instance;
                obj.sid = IceInternal.UnsetI.Instance;
                obj.fs = IceInternal.UnsetI.Instance;
                obj.vs = IceInternal.UnsetI.Instance;
                obj.shs = IceInternal.UnsetI.Instance;
                obj.es = IceInternal.UnsetI.Instance;
                obj.fss = IceInternal.UnsetI.Instance;
                obj.vss = IceInternal.UnsetI.Instance;
                obj.mips = IceInternal.UnsetI.Instance;
                obj.ied = IceInternal.UnsetI.Instance;
                obj.ifsd = IceInternal.UnsetI.Instance;
                obj.ivsd = IceInternal.UnsetI.Instance;
                obj.imipd = IceInternal.UnsetI.Instance;
                obj.bos = IceInternal.UnsetI.Instance;
                obj.ser = IceInternal.UnsetI.Instance;
            elseif ne(a, IceInternal.NoInit.Instance)
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
                obj.ser = ser;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
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
            os.writeByteSeqOpt(30, obj.ser);
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
            obj.ser = is.readByteSeqOpt(30);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MultiOptional';
        end
    end
end
