// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";


export const Test = {};

Test.MyEnum = Ice.defineEnum([
    ['enum1', 0], ['enum2', 1], ['enum3', 2]]);

Test.Struct1 = class
{
    constructor(bo = false, by = 0, sh = 0, i = 0, l = new Ice.Long(0, 0), f = 0.0, d = 0.0, str = "", e = Test.MyEnum.enum1, p = null)
    {
        this.bo = bo;
        this.by = by;
        this.sh = sh;
        this.i = i;
        this.l = l;
        this.f = f;
        this.d = d;
        this.str = str;
        this.e = e;
        this.p = p;
    }

    _write(ostr)
    {
        ostr.writeBool(this.bo);
        ostr.writeByte(this.by);
        ostr.writeShort(this.sh);
        ostr.writeInt(this.i);
        ostr.writeLong(this.l);
        ostr.writeFloat(this.f);
        ostr.writeDouble(this.d);
        ostr.writeString(this.str);
        Test.MyEnum._write(ostr, this.e);
        ostr.writeProxy(this.p);
    }

    _read(istr)
    {
        this.bo = istr.readBool();
        this.by = istr.readByte();
        this.sh = istr.readShort();
        this.i = istr.readInt();
        this.l = istr.readLong();
        this.f = istr.readFloat();
        this.d = istr.readDouble();
        this.str = istr.readString();
        this.e = Test.MyEnum._read(istr);
        this.p = istr.readProxy();
    }

    static get minWireSize()
    {
        return  32;
    }
};

Ice.defineStruct(Test.Struct1, false, true);

Test.ByteSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ByteHelper, true);

Test.IntSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.IntHelper, true);

Test.MyEnumSHelper = Ice.StreamHelpers.generateSeqHelper(Test.MyEnum._helper, false);

Test.BaseSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectHelper, false, "Test.Base");

[Test.ByteBoolD, Test.ByteBoolDHelper] = Ice.defineDictionary(Ice.ByteHelper, Ice.BoolHelper, true, undefined);

[Test.ShortIntD, Test.ShortIntDHelper] = Ice.defineDictionary(Ice.ShortHelper, Ice.IntHelper, true, undefined);

[Test.StringMyEnumD, Test.StringMyEnumDHelper] = Ice.defineDictionary(Ice.StringHelper, Test.MyEnum._helper, false, undefined);

[Test.StringBaseD, Test.StringBaseDHelper] = Ice.defineDictionary(Ice.StringHelper, Ice.ObjectHelper, false, undefined, "Test.Base");

Test.Base = class extends Ice.Value
{
    constructor(b = null, o = null, s = new Test.Struct1(), seq1 = null, seq2 = null, seq3 = null, seq4 = null, d1 = null, d2 = null, d3 = null, d4 = null)
    {
        super();
        this.b = b;
        this.o = o;
        this.s = s;
        this.seq1 = seq1;
        this.seq2 = seq2;
        this.seq3 = seq3;
        this.seq4 = seq4;
        this.d1 = d1;
        this.d2 = d2;
        this.d3 = d3;
        this.d4 = d4;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeValue(this.b);
        ostr.writeValue(this.o);
        Test.Struct1.write(ostr, this.s);
        Test.ByteSHelper.write(ostr, this.seq1);
        Test.IntSHelper.write(ostr, this.seq2);
        Test.MyEnumSHelper.write(ostr, this.seq3);
        Test.BaseSHelper.write(ostr, this.seq4);
        Test.ByteBoolDHelper.write(ostr, this.d1);
        Test.ShortIntDHelper.write(ostr, this.d2);
        Test.StringMyEnumDHelper.write(ostr, this.d3);
        Test.StringBaseDHelper.write(ostr, this.d4);
    }

    _iceReadMemberImpl(istr)
    {
        istr.readValue(obj => this.b = obj, Ice.TypeRegistry.getValueType("Test.Base"));
        istr.readValue(obj => this.o = obj, Ice.TypeRegistry.getValueType("Ice.Value"));
        this.s = Test.Struct1.read(istr, this.s);
        this.seq1 = Test.ByteSHelper.read(istr);
        this.seq2 = Test.IntSHelper.read(istr);
        this.seq3 = Test.MyEnumSHelper.read(istr);
        this.seq4 = Test.BaseSHelper.read(istr);
        this.d1 = Test.ByteBoolDHelper.read(istr);
        this.d2 = Test.ShortIntDHelper.read(istr);
        this.d3 = Test.StringMyEnumDHelper.read(istr);
        this.d4 = Test.StringBaseDHelper.read(istr);
    }
};

Ice.defineValue(Test.Base, "::Test::Base");
Ice.TypeRegistry.declareValueType("Test.Base", Test.Base);

Test.Derived = class extends Test.Base
{
    constructor(b, o, s, seq1, seq2, seq3, seq4, d1, d2, d3, d4, p = null)
    {
        super(b, o, s, seq1, seq2, seq3, seq4, d1, d2, d3, d4);
        this.p = p;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeProxy(this.p);
    }

    _iceReadMemberImpl(istr)
    {
        this.p = istr.readProxy();
    }
};

Ice.defineValue(Test.Derived, "::Test::Derived");
Ice.TypeRegistry.declareValueType("Test.Derived", Test.Derived);

Test.Ex = class extends Ice.UserException
{
    constructor(s = new Test.Struct1(), b = null, _cause = "")
    {
        super(_cause);
        this.s = s;
        this.b = b;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _ice_id()
    {
        return "::Test::Ex";
    }

    _mostDerivedType()
    {
        return Test.Ex;
    }

    _writeMemberImpl(ostr)
    {
        Test.Struct1.write(ostr, this.s);
        ostr.writeValue(this.b);
    }

    _readMemberImpl(istr)
    {
        this.s = Test.Struct1.read(istr, this.s);
        istr.readValue(obj => this.b = obj, Ice.TypeRegistry.getValueType("Test.Base"));
    }

    _usesClasses()
    {
        return true;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.Ex",
    Test.Ex);

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
        "getStruct1": [, , , [Test.ByteSHelper], , , , , ],
        "getBase": [, , , [Test.ByteSHelper], , , , , ],
        "getEx": [, , , [Test.ByteSHelper], , , , , ],
        "shutdown": [, , , , , , , , ]
    });
