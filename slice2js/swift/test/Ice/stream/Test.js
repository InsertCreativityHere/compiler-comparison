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

Test.Sub = Test.Sub || {};

export const Test2 = {};

Test2.Sub2 = Test2.Sub2 || {};

Test.MyEnum = Ice.defineEnum([
    ['enum1', 0], ['enum2', 1], ['enum3', 2]]);

Test.LargeStruct = class
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

Ice.defineStruct(Test.LargeStruct, false, true);

Test.OptionalClass = class extends Ice.Value
{
    constructor(bo = false, by = 0, sh = undefined, i = undefined)
    {
        super();
        this.bo = bo;
        this.by = by;
        this.sh = sh;
        this.i = i;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeBool(this.bo);
        ostr.writeByte(this.by);
        Ice.ShortHelper.writeOptional(ostr, 1, this.sh);
        Ice.IntHelper.writeOptional(ostr, 2, this.i);
    }

    _iceReadMemberImpl(istr)
    {
        this.bo = istr.readBool();
        this.by = istr.readByte();
        this.sh = Ice.ShortHelper.readOptional(istr, 1);
        this.i = Ice.IntHelper.readOptional(istr, 2);
    }
};

Ice.defineValue(Test.OptionalClass, "::Test::OptionalClass");
Ice.TypeRegistry.declareValueType("Test.OptionalClass", Test.OptionalClass);

Test.MyEnumSHelper = Ice.StreamHelpers.generateSeqHelper(Test.MyEnum._helper, false);

Test.LargeStructSHelper = Ice.StreamHelpers.generateSeqHelper(Test.LargeStruct, false);

Test.MyClassSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectHelper, false, "Test.MyClass");

Test.BoolSSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.BoolSeqHelper, false);

Test.ByteSSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ByteSeqHelper, false);

Test.ShortSSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ShortSeqHelper, false);

Test.IntSSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.IntSeqHelper, false);

Test.LongSSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.LongSeqHelper, false);

Test.FloatSSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.FloatSeqHelper, false);

Test.DoubleSSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.DoubleSeqHelper, false);

Test.StringSSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.StringSeqHelper, false);

Test.MyEnumSSHelper = Ice.StreamHelpers.generateSeqHelper(Test.MyEnumSHelper, false);

Test.LargeStructSSHelper = Ice.StreamHelpers.generateSeqHelper(Test.LargeStructSHelper, false);

Test.MyClassSSHelper = Ice.StreamHelpers.generateSeqHelper(Test.MyClassSHelper, false);

[Test.ByteBoolD, Test.ByteBoolDHelper] = Ice.defineDictionary(Ice.ByteHelper, Ice.BoolHelper, true, undefined);

[Test.ShortIntD, Test.ShortIntDHelper] = Ice.defineDictionary(Ice.ShortHelper, Ice.IntHelper, true, undefined);

[Test.LongFloatD, Test.LongFloatDHelper] = Ice.defineDictionary(Ice.LongHelper, Ice.FloatHelper, true, Ice.HashMap.compareEquals);

[Test.StringStringD, Test.StringStringDHelper] = Ice.defineDictionary(Ice.StringHelper, Ice.StringHelper, false, undefined);

[Test.StringMyClassD, Test.StringMyClassDHelper] = Ice.defineDictionary(Ice.StringHelper, Ice.ObjectHelper, false, undefined, "Test.MyClass");

Test.MyClass = class extends Ice.Value
{
    constructor(c = null, o = null, s = new Test.LargeStruct(), seq1 = null, seq2 = null, seq3 = null, seq4 = null, seq5 = null, seq6 = null, seq7 = null, seq8 = null, seq9 = null, seq10 = null, d = null)
    {
        super();
        this.c = c;
        this.o = o;
        this.s = s;
        this.seq1 = seq1;
        this.seq2 = seq2;
        this.seq3 = seq3;
        this.seq4 = seq4;
        this.seq5 = seq5;
        this.seq6 = seq6;
        this.seq7 = seq7;
        this.seq8 = seq8;
        this.seq9 = seq9;
        this.seq10 = seq10;
        this.d = d;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeValue(this.c);
        ostr.writeValue(this.o);
        Test.LargeStruct.write(ostr, this.s);
        Ice.BoolSeqHelper.write(ostr, this.seq1);
        Ice.ByteSeqHelper.write(ostr, this.seq2);
        Ice.ShortSeqHelper.write(ostr, this.seq3);
        Ice.IntSeqHelper.write(ostr, this.seq4);
        Ice.LongSeqHelper.write(ostr, this.seq5);
        Ice.FloatSeqHelper.write(ostr, this.seq6);
        Ice.DoubleSeqHelper.write(ostr, this.seq7);
        Ice.StringSeqHelper.write(ostr, this.seq8);
        Test.MyEnumSHelper.write(ostr, this.seq9);
        Test.MyClassSHelper.write(ostr, this.seq10);
        Test.StringMyClassDHelper.write(ostr, this.d);
    }

    _iceReadMemberImpl(istr)
    {
        istr.readValue(obj => this.c = obj, Ice.TypeRegistry.getValueType("Test.MyClass"));
        istr.readValue(obj => this.o = obj, Ice.TypeRegistry.getValueType("Ice.Value"));
        this.s = Test.LargeStruct.read(istr, this.s);
        this.seq1 = Ice.BoolSeqHelper.read(istr);
        this.seq2 = Ice.ByteSeqHelper.read(istr);
        this.seq3 = Ice.ShortSeqHelper.read(istr);
        this.seq4 = Ice.IntSeqHelper.read(istr);
        this.seq5 = Ice.LongSeqHelper.read(istr);
        this.seq6 = Ice.FloatSeqHelper.read(istr);
        this.seq7 = Ice.DoubleSeqHelper.read(istr);
        this.seq8 = Ice.StringSeqHelper.read(istr);
        this.seq9 = Test.MyEnumSHelper.read(istr);
        this.seq10 = Test.MyClassSHelper.read(istr);
        this.d = Test.StringMyClassDHelper.read(istr);
    }
};

Ice.defineValue(Test.MyClass, "::Test::MyClass");
Ice.TypeRegistry.declareValueType("Test.MyClass", Test.MyClass);

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
    "::Test::MyInterface");

Test.MyException = class extends Ice.UserException
{
    constructor(c = null, _cause = "")
    {
        super(_cause);
        this.c = c;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::Test::MyException";
    }

    _mostDerivedType()
    {
        return Test.MyException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeValue(this.c);
    }

    _readMemberImpl(istr)
    {
        istr.readValue(obj => this.c = obj, Ice.TypeRegistry.getValueType("Test.MyClass"));
    }

    _usesClasses()
    {
        return true;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.MyException",
    Test.MyException);

Test.Sub.NestedEnum = Ice.defineEnum([
    ['nestedEnum1', 0], ['nestedEnum2', 1], ['nestedEnum3', 2]]);

Test.Sub.NestedStruct = class
{
    constructor(bo = false, by = 0, sh = 0, i = 0, l = new Ice.Long(0, 0), f = 0.0, d = 0.0, str = "", e = Test.Sub.NestedEnum.nestedEnum1)
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
        Test.Sub.NestedEnum._write(ostr, this.e);
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
        this.e = Test.Sub.NestedEnum._read(istr);
    }

    static get minWireSize()
    {
        return  30;
    }
};

Ice.defineStruct(Test.Sub.NestedStruct, false, true);

Test.Sub.NestedException = class extends Ice.UserException
{
    constructor(str = "", _cause = "")
    {
        super(_cause);
        this.str = str;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::Test::Sub::NestedException";
    }

    _mostDerivedType()
    {
        return Test.Sub.NestedException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeString(this.str);
    }

    _readMemberImpl(istr)
    {
        this.str = istr.readString();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.Sub.NestedException",
    Test.Sub.NestedException);

Test2.Sub2.NestedEnum2 = Ice.defineEnum([
    ['nestedEnum4', 0], ['nestedEnum5', 1], ['nestedEnum6', 2]]);

Test2.Sub2.NestedStruct2 = class
{
    constructor(bo = false, by = 0, sh = 0, i = 0, l = new Ice.Long(0, 0), f = 0.0, d = 0.0, str = "", e = Test2.Sub2.NestedEnum2.nestedEnum4)
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
        Test2.Sub2.NestedEnum2._write(ostr, this.e);
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
        this.e = Test2.Sub2.NestedEnum2._read(istr);
    }

    static get minWireSize()
    {
        return  30;
    }
};

Ice.defineStruct(Test2.Sub2.NestedStruct2, false, true);

Test2.Sub2.NestedException2 = class extends Ice.UserException
{
    constructor(str = "", _cause = "")
    {
        super(_cause);
        this.str = str;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::Test2::Sub2::NestedException2";
    }

    _mostDerivedType()
    {
        return Test2.Sub2.NestedException2;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeString(this.str);
    }

    _readMemberImpl(istr)
    {
        this.str = istr.readString();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test2.Sub2.NestedException2",
    Test2.Sub2.NestedException2);
