//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";


export const Test = {};

Test.OneOptional = class extends Ice.Value
{
    constructor(a = undefined)
    {
        super();
        this.a = a;
    }

    _iceWriteMemberImpl(ostr)
    {
        Ice.IntHelper.writeOptional(ostr, 1, this.a);
    }

    _iceReadMemberImpl(istr)
    {
        this.a = Ice.IntHelper.readOptional(istr, 1);
    }
};

Ice.defineValue(Test.OneOptional, "::Test::OneOptional");
Ice.TypeRegistry.declareValueType("Test.OneOptional", Test.OneOptional);

const iceC_Test_MyInterface_ids = [
    "::Ice::Object",
    "::Test::MyInterface"
];

Test.MyInterface = class extends Ice.Object
{
};

Test.MyInterfacePrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.MyInterfacePrx", Test.MyInterfacePrx);

Ice.defineOperations(
    Test.MyInterface,
    Test.MyInterfacePrx,
    iceC_Test_MyInterface_ids,
    "::Test::MyInterface",
    {
        "op": [, , , , , , , , ]
    });

Test.MyEnum = Ice.defineEnum([
    ['MyEnumMember', 0]]);

Test.SmallStruct = class
{
    constructor(m = 0)
    {
        this.m = m;
    }

    _write(ostr)
    {
        ostr.writeByte(this.m);
    }

    _read(istr)
    {
        this.m = istr.readByte();
    }

    static get minWireSize()
    {
        return  1;
    }
};

Ice.defineStruct(Test.SmallStruct, true, false);

Test.FixedStruct = class
{
    constructor(m = 0)
    {
        this.m = m;
    }

    _write(ostr)
    {
        ostr.writeInt(this.m);
    }

    _read(istr)
    {
        this.m = istr.readInt();
    }

    static get minWireSize()
    {
        return  4;
    }
};

Ice.defineStruct(Test.FixedStruct, true, false);

Test.VarStruct = class
{
    constructor(m = "")
    {
        this.m = m;
    }

    _write(ostr)
    {
        ostr.writeString(this.m);
    }

    _read(istr)
    {
        this.m = istr.readString();
    }

    static get minWireSize()
    {
        return  1;
    }
};

Ice.defineStruct(Test.VarStruct, true, true);

Test.ByteSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ByteHelper, true);

Test.BoolSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.BoolHelper, true);

Test.ShortSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ShortHelper, true);

Test.IntSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.IntHelper, true);

Test.LongSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.LongHelper, true);

Test.FloatSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.FloatHelper, true);

Test.DoubleSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.DoubleHelper, true);

Test.StringSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.StringHelper, false);

Test.MyEnumSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.MyEnum._helper, false);

Test.SmallStructSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.SmallStruct, true);

Test.SmallStructListHelper = Ice.StreamHelpers.generateSeqHelper(Test.SmallStruct, true);

Test.FixedStructSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.FixedStruct, true);

Test.FixedStructListHelper = Ice.StreamHelpers.generateSeqHelper(Test.FixedStruct, true);

Test.VarStructSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.VarStruct, false);

Test.MyInterfacePrxSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.MyInterfacePrx, false);

Test.SerializableHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ByteHelper, true);

[Test.IntIntDict, Test.IntIntDictHelper] = Ice.defineDictionary(Ice.IntHelper, Ice.IntHelper, true, undefined);

[Test.StringIntDict, Test.StringIntDictHelper] = Ice.defineDictionary(Ice.StringHelper, Ice.IntHelper, false, undefined);

[Test.IntEnumDict, Test.IntEnumDictHelper] = Ice.defineDictionary(Ice.IntHelper, Test.MyEnum._helper, false, undefined);

[Test.IntFixedStructDict, Test.IntFixedStructDictHelper] = Ice.defineDictionary(Ice.IntHelper, Test.FixedStruct, true, undefined);

[Test.IntVarStructDict, Test.IntVarStructDictHelper] = Ice.defineDictionary(Ice.IntHelper, Test.VarStruct, false, undefined);

[Test.IntMyInterfacePrxDict, Test.IntMyInterfacePrxDictHelper] = Ice.defineDictionary(Ice.IntHelper, Test.MyInterfacePrx, false, undefined);

Test.MultiOptional = class extends Ice.Value
{
    constructor(a = undefined, b = undefined, c = undefined, d = undefined, e = undefined, f = undefined, g = undefined, h = undefined, i = undefined, j = undefined, bs = undefined, ss = undefined, iid = undefined, sid = undefined, fs = undefined, vs = undefined, shs = undefined, es = undefined, fss = undefined, vss = undefined, mips = undefined, ied = undefined, ifsd = undefined, ivsd = undefined, imipd = undefined, bos = undefined, ser = undefined)
    {
        super();
        this.a = a;
        this.b = b;
        this.c = c;
        this.d = d;
        this.e = e;
        this.f = f;
        this.g = g;
        this.h = h;
        this.i = i;
        this.j = j;
        this.bs = bs;
        this.ss = ss;
        this.iid = iid;
        this.sid = sid;
        this.fs = fs;
        this.vs = vs;
        this.shs = shs;
        this.es = es;
        this.fss = fss;
        this.vss = vss;
        this.mips = mips;
        this.ied = ied;
        this.ifsd = ifsd;
        this.ivsd = ivsd;
        this.imipd = imipd;
        this.bos = bos;
        this.ser = ser;
    }

    _iceWriteMemberImpl(ostr)
    {
        Ice.ByteHelper.writeOptional(ostr, 1, this.a);
        Ice.BoolHelper.writeOptional(ostr, 2, this.b);
        Ice.ShortHelper.writeOptional(ostr, 3, this.c);
        Ice.IntHelper.writeOptional(ostr, 4, this.d);
        Ice.LongHelper.writeOptional(ostr, 5, this.e);
        Ice.FloatHelper.writeOptional(ostr, 6, this.f);
        Ice.DoubleHelper.writeOptional(ostr, 7, this.g);
        Ice.StringHelper.writeOptional(ostr, 8, this.h);
        Test.MyEnum._writeOpt(ostr, 9, this.i);
        Test.MyInterfacePrx.writeOptional(ostr, 10, this.j);
        Test.ByteSeqHelper.writeOptional(ostr, 12, this.bs);
        Test.StringSeqHelper.writeOptional(ostr, 13, this.ss);
        Test.IntIntDictHelper.writeOptional(ostr, 14, this.iid);
        Test.StringIntDictHelper.writeOptional(ostr, 15, this.sid);
        Test.FixedStruct.writeOptional(ostr, 16, this.fs);
        Test.VarStruct.writeOptional(ostr, 17, this.vs);
        Test.ShortSeqHelper.writeOptional(ostr, 18, this.shs);
        Test.MyEnumSeqHelper.writeOptional(ostr, 19, this.es);
        Test.FixedStructSeqHelper.writeOptional(ostr, 20, this.fss);
        Test.VarStructSeqHelper.writeOptional(ostr, 21, this.vss);
        Test.MyInterfacePrxSeqHelper.writeOptional(ostr, 23, this.mips);
        Test.IntEnumDictHelper.writeOptional(ostr, 24, this.ied);
        Test.IntFixedStructDictHelper.writeOptional(ostr, 25, this.ifsd);
        Test.IntVarStructDictHelper.writeOptional(ostr, 26, this.ivsd);
        Test.IntMyInterfacePrxDictHelper.writeOptional(ostr, 28, this.imipd);
        Test.BoolSeqHelper.writeOptional(ostr, 29, this.bos);
        Test.SerializableHelper.writeOptional(ostr, 30, this.ser);
    }

    _iceReadMemberImpl(istr)
    {
        this.a = Ice.ByteHelper.readOptional(istr, 1);
        this.b = Ice.BoolHelper.readOptional(istr, 2);
        this.c = Ice.ShortHelper.readOptional(istr, 3);
        this.d = Ice.IntHelper.readOptional(istr, 4);
        this.e = Ice.LongHelper.readOptional(istr, 5);
        this.f = Ice.FloatHelper.readOptional(istr, 6);
        this.g = Ice.DoubleHelper.readOptional(istr, 7);
        this.h = Ice.StringHelper.readOptional(istr, 8);
        this.i = Test.MyEnum._readOpt(istr, 9);
        this.j = Test.MyInterfacePrx.readOptional(istr, 10);
        this.bs = Test.ByteSeqHelper.readOptional(istr, 12);
        this.ss = Test.StringSeqHelper.readOptional(istr, 13);
        this.iid = Test.IntIntDictHelper.readOptional(istr, 14);
        this.sid = Test.StringIntDictHelper.readOptional(istr, 15);
        this.fs = Test.FixedStruct.readOptional(istr, 16);
        this.vs = Test.VarStruct.readOptional(istr, 17);
        this.shs = Test.ShortSeqHelper.readOptional(istr, 18);
        this.es = Test.MyEnumSeqHelper.readOptional(istr, 19);
        this.fss = Test.FixedStructSeqHelper.readOptional(istr, 20);
        this.vss = Test.VarStructSeqHelper.readOptional(istr, 21);
        this.mips = Test.MyInterfacePrxSeqHelper.readOptional(istr, 23);
        this.ied = Test.IntEnumDictHelper.readOptional(istr, 24);
        this.ifsd = Test.IntFixedStructDictHelper.readOptional(istr, 25);
        this.ivsd = Test.IntVarStructDictHelper.readOptional(istr, 26);
        this.imipd = Test.IntMyInterfacePrxDictHelper.readOptional(istr, 28);
        this.bos = Test.BoolSeqHelper.readOptional(istr, 29);
        this.ser = Test.SerializableHelper.readOptional(istr, 30);
    }
};

Ice.defineValue(Test.MultiOptional, "::Test::MultiOptional");
Ice.TypeRegistry.declareValueType("Test.MultiOptional", Test.MultiOptional);

Test.A = class extends Ice.Value
{
    constructor(requiredA = 0, ma = undefined, mb = undefined, mc = undefined)
    {
        super();
        this.requiredA = requiredA;
        this.ma = ma;
        this.mb = mb;
        this.mc = mc;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeInt(this.requiredA);
        Ice.IntHelper.writeOptional(ostr, 1, this.ma);
        Ice.IntHelper.writeOptional(ostr, 50, this.mb);
        Ice.IntHelper.writeOptional(ostr, 500, this.mc);
    }

    _iceReadMemberImpl(istr)
    {
        this.requiredA = istr.readInt();
        this.ma = Ice.IntHelper.readOptional(istr, 1);
        this.mb = Ice.IntHelper.readOptional(istr, 50);
        this.mc = Ice.IntHelper.readOptional(istr, 500);
    }
};

Ice.defineValue(Test.A, "::Test::A");
Ice.TypeRegistry.declareValueType("Test.A", Test.A);

Test.B = class extends Test.A
{
    constructor(requiredA, ma, mb, mc, requiredB = 0, md = undefined)
    {
        super(requiredA, ma, mb, mc);
        this.requiredB = requiredB;
        this.md = md;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeInt(this.requiredB);
        Ice.IntHelper.writeOptional(ostr, 10, this.md);
    }

    _iceReadMemberImpl(istr)
    {
        this.requiredB = istr.readInt();
        this.md = Ice.IntHelper.readOptional(istr, 10);
    }
};

Ice.defineValue(Test.B, "::Test::B");
Ice.TypeRegistry.declareValueType("Test.B", Test.B);

Test.C = class extends Test.B
{
    constructor(requiredA, ma, mb, mc, requiredB, md, ss = "", ms = undefined)
    {
        super(requiredA, ma, mb, mc, requiredB, md);
        this.ss = ss;
        this.ms = ms;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeString(this.ss);
        Ice.StringHelper.writeOptional(ostr, 890, this.ms);
    }

    _iceReadMemberImpl(istr)
    {
        this.ss = istr.readString();
        this.ms = Ice.StringHelper.readOptional(istr, 890);
    }
};

Ice.defineValue(Test.C, "::Test::C");
Ice.TypeRegistry.declareValueType("Test.C", Test.C);

Test.WD = class extends Ice.Value
{
    constructor(a = 5, s = "test")
    {
        super();
        this.a = a;
        this.s = s;
    }

    _iceWriteMemberImpl(ostr)
    {
        Ice.IntHelper.writeOptional(ostr, 1, this.a);
        Ice.StringHelper.writeOptional(ostr, 2, this.s);
    }

    _iceReadMemberImpl(istr)
    {
        this.a = Ice.IntHelper.readOptional(istr, 1);
        this.s = Ice.StringHelper.readOptional(istr, 2);
    }
};

Ice.defineValue(Test.WD, "::Test::WD");
Ice.TypeRegistry.declareValueType("Test.WD", Test.WD);

Test.OptionalException = class extends Ice.UserException
{
    constructor(req = false, a = 5, b = undefined, _cause = "")
    {
        super(_cause);
        this.req = req;
        this.a = a;
        this.b = b;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::Test::OptionalException";
    }

    _mostDerivedType()
    {
        return Test.OptionalException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeBool(this.req);
        Ice.IntHelper.writeOptional(ostr, 1, this.a);
        Ice.StringHelper.writeOptional(ostr, 2, this.b);
    }

    _readMemberImpl(istr)
    {
        this.req = istr.readBool();
        this.a = Ice.IntHelper.readOptional(istr, 1);
        this.b = Ice.StringHelper.readOptional(istr, 2);
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.OptionalException",
    Test.OptionalException);

Test.DerivedException = class extends Test.OptionalException
{
    constructor(req, a, b, d1 = "", ss = "test", d2 = "", _cause = "")
    {
        super(req, a, b, _cause);
        this.d1 = d1;
        this.ss = ss;
        this.d2 = d2;
    }

    static get _parent()
    {
        return Test.OptionalException;
    }

    static get _id()
    {
        return "::Test::DerivedException";
    }

    _mostDerivedType()
    {
        return Test.DerivedException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeString(this.d1);
        ostr.writeString(this.d2);
        Ice.StringHelper.writeOptional(ostr, 600, this.ss);
    }

    _readMemberImpl(istr)
    {
        this.d1 = istr.readString();
        this.d2 = istr.readString();
        this.ss = Ice.StringHelper.readOptional(istr, 600);
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.DerivedException",
    Test.DerivedException);

Test.RequiredException = class extends Test.OptionalException
{
    constructor(req, a, b, ss = "test", _cause = "")
    {
        super(req, a, b, _cause);
        this.ss = ss;
    }

    static get _parent()
    {
        return Test.OptionalException;
    }

    static get _id()
    {
        return "::Test::RequiredException";
    }

    _mostDerivedType()
    {
        return Test.RequiredException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeString(this.ss);
    }

    _readMemberImpl(istr)
    {
        this.ss = istr.readString();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.RequiredException",
    Test.RequiredException);

Test.OptionalWithCustom = class extends Ice.Value
{
    constructor(l = undefined, lp = undefined)
    {
        super();
        this.l = l;
        this.lp = lp;
    }

    _iceWriteMemberImpl(ostr)
    {
        Test.SmallStructListHelper.writeOptional(ostr, 1, this.l);
        Test.SmallStructListHelper.writeOptional(ostr, 2, this.lp);
    }

    _iceReadMemberImpl(istr)
    {
        this.l = Test.SmallStructListHelper.readOptional(istr, 1);
        this.lp = Test.SmallStructListHelper.readOptional(istr, 2);
    }
};

Ice.defineValue(Test.OptionalWithCustom, "::Test::OptionalWithCustom");
Ice.TypeRegistry.declareValueType("Test.OptionalWithCustom", Test.OptionalWithCustom);

Test.E = class extends Ice.Value
{
    constructor(fse = new Test.FixedStruct())
    {
        super();
        this.fse = fse;
    }

    _iceWriteMemberImpl(ostr)
    {
        Test.FixedStruct.write(ostr, this.fse);
    }

    _iceReadMemberImpl(istr)
    {
        this.fse = Test.FixedStruct.read(istr, this.fse);
    }
};

Ice.defineValue(Test.E, "::Test::E");
Ice.TypeRegistry.declareValueType("Test.E", Test.E);

Test.F = class extends Test.E
{
    constructor(fse, fsf = undefined)
    {
        super(fse);
        this.fsf = fsf;
    }

    _iceWriteMemberImpl(ostr)
    {
        Test.FixedStruct.writeOptional(ostr, 1, this.fsf);
    }

    _iceReadMemberImpl(istr)
    {
        this.fsf = Test.FixedStruct.readOptional(istr, 1);
    }
};

Ice.defineValue(Test.F, "::Test::F");
Ice.TypeRegistry.declareValueType("Test.F", Test.F);

Test.G1 = class
{
    constructor(a = "")
    {
        this.a = a;
    }

    _write(ostr)
    {
        ostr.writeString(this.a);
    }

    _read(istr)
    {
        this.a = istr.readString();
    }

    static get minWireSize()
    {
        return  1;
    }
};

Ice.defineStruct(Test.G1, true, true);

Test.G2 = class
{
    constructor(a = new Ice.Long(0, 0))
    {
        this.a = a;
    }

    _write(ostr)
    {
        ostr.writeLong(this.a);
    }

    _read(istr)
    {
        this.a = istr.readLong();
    }

    static get minWireSize()
    {
        return  8;
    }
};

Ice.defineStruct(Test.G2, true, false);

Test.G = class extends Ice.Value
{
    constructor(gg1Opt = undefined, gg2 = new Test.G2(), gg2Opt = undefined, gg1 = new Test.G1())
    {
        super();
        this.gg1Opt = gg1Opt;
        this.gg2 = gg2;
        this.gg2Opt = gg2Opt;
        this.gg1 = gg1;
    }

    _iceWriteMemberImpl(ostr)
    {
        Test.G2.write(ostr, this.gg2);
        Test.G1.write(ostr, this.gg1);
        Test.G2.writeOptional(ostr, 0, this.gg2Opt);
        Test.G1.writeOptional(ostr, 1, this.gg1Opt);
    }

    _iceReadMemberImpl(istr)
    {
        this.gg2 = Test.G2.read(istr, this.gg2);
        this.gg1 = Test.G1.read(istr, this.gg1);
        this.gg2Opt = Test.G2.readOptional(istr, 0);
        this.gg1Opt = Test.G1.readOptional(istr, 1);
    }
};

Ice.defineValue(Test.G, "::Test::G");
Ice.TypeRegistry.declareValueType("Test.G", Test.G);

const iceC_Test_Initial_ids = [
    "::Ice::Object",
    "::Test::Initial"
];

Test.Initial = class extends Ice.Object
{
};

Test.InitialPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.InitialPrx", Test.InitialPrx);

Ice.defineOperations(
    Test.Initial,
    Test.InitialPrx,
    iceC_Test_Initial_ids,
    "::Test::Initial",
    {
        "shutdown": [, , , , , , , , ],
        "pingPong": [, , , [8, true], [[8, true]], , , true, true],
        "opOptionalException": [, , , , [[3, , 1], [7, , 2]], ,
        [
            Test.OptionalException
        ], , ],
        "opDerivedException": [, , , , [[3, , 1], [7, , 2]], ,
        [
            Test.OptionalException
        ], , ],
        "opRequiredException": [, , , , [[3, , 1], [7, , 2]], ,
        [
            Test.OptionalException
        ], , ],
        "opByte": [, , , [0, , 1], [[0, , 2]], [[0, , 3]], , , ],
        "opBool": [, , , [1, , 1], [[1, , 2]], [[1, , 3]], , , ],
        "opShort": [, , , [2, , 1], [[2, , 2]], [[2, , 3]], , , ],
        "opInt": [, , , [3, , 1], [[3, , 2]], [[3, , 3]], , , ],
        "opLong": [, , , [4, , 3], [[4, , 1]], [[4, , 2]], , , ],
        "opFloat": [, , , [5, , 1], [[5, , 2]], [[5, , 3]], , , ],
        "opDouble": [, , , [6, , 1], [[6, , 2]], [[6, , 3]], , , ],
        "opString": [, , , [7, , 1], [[7, , 2]], [[7, , 3]], , , ],
        "opMyEnum": [, , , [Test.MyEnum._helper, , 1], [[Test.MyEnum._helper, , 2]], [[Test.MyEnum._helper, , 3]], , , ],
        "opSmallStruct": [, , , [Test.SmallStruct, , 1], [[Test.SmallStruct, , 2]], [[Test.SmallStruct, , 3]], , , ],
        "opFixedStruct": [, , , [Test.FixedStruct, , 1], [[Test.FixedStruct, , 2]], [[Test.FixedStruct, , 3]], , , ],
        "opVarStruct": [, , , [Test.VarStruct, , 1], [[Test.VarStruct, , 2]], [[Test.VarStruct, , 3]], , , ],
        "opMyInterfaceProxy": [, , , ["Test.MyInterfacePrx", , 1], [["Test.MyInterfacePrx", , 2]], [["Test.MyInterfacePrx", , 3]], , , ],
        "opOneOptional": [, , , ["Test.OneOptional", true], [["Test.OneOptional", true]], [["Test.OneOptional", true]], , true, true],
        "opByteSeq": [, , , [Test.ByteSeqHelper, , 1], [[Test.ByteSeqHelper, , 2]], [[Test.ByteSeqHelper, , 3]], , , ],
        "opBoolSeq": [, , , [Test.BoolSeqHelper, , 1], [[Test.BoolSeqHelper, , 2]], [[Test.BoolSeqHelper, , 3]], , , ],
        "opShortSeq": [, , , [Test.ShortSeqHelper, , 1], [[Test.ShortSeqHelper, , 2]], [[Test.ShortSeqHelper, , 3]], , , ],
        "opIntSeq": [, , , [Test.IntSeqHelper, , 1], [[Test.IntSeqHelper, , 2]], [[Test.IntSeqHelper, , 3]], , , ],
        "opLongSeq": [, , , [Test.LongSeqHelper, , 1], [[Test.LongSeqHelper, , 2]], [[Test.LongSeqHelper, , 3]], , , ],
        "opFloatSeq": [, , , [Test.FloatSeqHelper, , 1], [[Test.FloatSeqHelper, , 2]], [[Test.FloatSeqHelper, , 3]], , , ],
        "opDoubleSeq": [, , , [Test.DoubleSeqHelper, , 1], [[Test.DoubleSeqHelper, , 2]], [[Test.DoubleSeqHelper, , 3]], , , ],
        "opStringSeq": [, , , [Test.StringSeqHelper, , 1], [[Test.StringSeqHelper, , 2]], [[Test.StringSeqHelper, , 3]], , , ],
        "opSmallStructSeq": [, , , [Test.SmallStructSeqHelper, , 1], [[Test.SmallStructSeqHelper, , 2]], [[Test.SmallStructSeqHelper, , 3]], , , ],
        "opSmallStructList": [, , , [Test.SmallStructListHelper, , 1], [[Test.SmallStructListHelper, , 2]], [[Test.SmallStructListHelper, , 3]], , , ],
        "opFixedStructSeq": [, , , [Test.FixedStructSeqHelper, , 1], [[Test.FixedStructSeqHelper, , 2]], [[Test.FixedStructSeqHelper, , 3]], , , ],
        "opFixedStructList": [, , , [Test.FixedStructListHelper, , 1], [[Test.FixedStructListHelper, , 2]], [[Test.FixedStructListHelper, , 3]], , , ],
        "opVarStructSeq": [, , , [Test.VarStructSeqHelper, , 1], [[Test.VarStructSeqHelper, , 2]], [[Test.VarStructSeqHelper, , 3]], , , ],
        "opSerializable": [, , , [Test.SerializableHelper, , 1], [[Test.SerializableHelper, , 2]], [[Test.SerializableHelper, , 3]], , , ],
        "opIntIntDict": [, , , [Test.IntIntDictHelper, , 1], [[Test.IntIntDictHelper, , 2]], [[Test.IntIntDictHelper, , 3]], , , ],
        "opStringIntDict": [, , , [Test.StringIntDictHelper, , 1], [[Test.StringIntDictHelper, , 2]], [[Test.StringIntDictHelper, , 3]], , , ],
        "opClassAndUnknownOptional": [, , , , [["Test.A", true]], , , true, ],
        "opRequiredAfterOptional": [, , , , [[3], [3, , 1], [3]], [[3], [3, , 2], [3]], , , ],
        "opOptionalAfterRequired": [, , , , [[3], [3, , 1], [3, , 2]], [[3], [3, , 3], [3, , 4]], , , ],
        "opG": [, , , ["Test.G", true], [["Test.G", true]], , , true, true],
        "opVoid": [, , , , , , , , ],
        "opMStruct1": [, , , [Test.SmallStruct, , 1], , , , , ],
        "opMStruct2": [, , , [Test.SmallStruct, , 1], [[Test.SmallStruct, , 2]], [[Test.SmallStruct, , 3]], , , ],
        "opMSeq1": [, , , [Test.StringSeqHelper, , 1], , , , , ],
        "opMSeq2": [, , , [Test.StringSeqHelper, , 1], [[Test.StringSeqHelper, , 2]], [[Test.StringSeqHelper, , 3]], , , ],
        "opMDict1": [, , , [Test.StringIntDictHelper, , 1], , , , , ],
        "opMDict2": [, , , [Test.StringIntDictHelper, , 1], [[Test.StringIntDictHelper, , 2]], [[Test.StringIntDictHelper, , 3]], , , ],
        "supportsJavaSerializable": [, , , [1], , , , , ]
    });
