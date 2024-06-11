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

Test.AByteSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ByteHelper, true);

Test.LByteSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ByteHelper, true);

Test.KByteSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ByteHelper, true);

Test.QByteSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ByteHelper, true);

Test.SByteSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ByteHelper, true);

Test.CByteSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ByteHelper, true);

Test.ABoolSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.BoolHelper, true);

Test.LBoolSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.BoolHelper, true);

Test.KBoolSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.BoolHelper, true);

Test.QBoolSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.BoolHelper, true);

Test.SBoolSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.BoolHelper, true);

Test.CBoolSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.BoolHelper, true);

Test.AShortSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ShortHelper, true);

Test.LShortSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ShortHelper, true);

Test.KShortSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ShortHelper, true);

Test.QShortSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ShortHelper, true);

Test.SShortSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ShortHelper, true);

Test.CShortSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ShortHelper, true);

Test.AIntSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.IntHelper, true);

Test.LIntSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.IntHelper, true);

Test.KIntSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.IntHelper, true);

Test.QIntSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.IntHelper, true);

Test.SIntSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.IntHelper, true);

Test.CIntSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.IntHelper, true);

Test.ALongSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.LongHelper, true);

Test.LLongSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.LongHelper, true);

Test.KLongSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.LongHelper, true);

Test.QLongSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.LongHelper, true);

Test.SLongSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.LongHelper, true);

Test.CLongSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.LongHelper, true);

Test.AFloatSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.FloatHelper, true);

Test.LFloatSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.FloatHelper, true);

Test.KFloatSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.FloatHelper, true);

Test.QFloatSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.FloatHelper, true);

Test.SFloatSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.FloatHelper, true);

Test.CFloatSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.FloatHelper, true);

Test.ADoubleSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.DoubleHelper, true);

Test.LDoubleSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.DoubleHelper, true);

Test.KDoubleSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.DoubleHelper, true);

Test.QDoubleSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.DoubleHelper, true);

Test.SDoubleSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.DoubleHelper, true);

Test.CDoubleSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.DoubleHelper, true);

Test.AStringSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.StringHelper, false);

Test.LStringSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.StringHelper, false);

Test.KStringSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.StringHelper, false);

Test.QStringSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.StringHelper, false);

Test.SStringSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.StringHelper, false);

Test.CStringSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.StringHelper, false);

Test.AObjectSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectHelper, false, "Ice.Value");

Test.LObjectSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectHelper, false, "Ice.Value");

Test.CObjectSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectHelper, false, "Ice.Value");

Test.AObjectPrxSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectPrx, false);

Test.LObjectPrxSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectPrx, false);

Test.KObjectPrxSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectPrx, false);

Test.QObjectPrxSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectPrx, false);

Test.SObjectPrxSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectPrx, false);

Test.CObjectPrxSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectPrx, false);

Test.S = class
{
    constructor(i = 0)
    {
        this.i = i;
    }

    _write(ostr)
    {
        ostr.writeInt(this.i);
    }

    _read(istr)
    {
        this.i = istr.readInt();
    }

    static get minWireSize()
    {
        return  4;
    }
};

Ice.defineStruct(Test.S, true, false);

Test.AStructSHelper = Ice.StreamHelpers.generateSeqHelper(Test.S, true);

Test.LStructSHelper = Ice.StreamHelpers.generateSeqHelper(Test.S, true);

Test.KStructSHelper = Ice.StreamHelpers.generateSeqHelper(Test.S, true);

Test.QStructSHelper = Ice.StreamHelpers.generateSeqHelper(Test.S, true);

Test.SStructSHelper = Ice.StreamHelpers.generateSeqHelper(Test.S, true);

Test.CStructSHelper = Ice.StreamHelpers.generateSeqHelper(Test.S, true);

Test.SD = class
{
    constructor(i = 1)
    {
        this.i = i;
    }

    _write(ostr)
    {
        ostr.writeInt(this.i);
    }

    _read(istr)
    {
        this.i = istr.readInt();
    }

    static get minWireSize()
    {
        return  4;
    }
};

Ice.defineStruct(Test.SD, true, false);

Test.AStructSDHelper = Ice.StreamHelpers.generateSeqHelper(Test.SD, true);

Test.LStructSDHelper = Ice.StreamHelpers.generateSeqHelper(Test.SD, true);

Test.KStructSDHelper = Ice.StreamHelpers.generateSeqHelper(Test.SD, true);

Test.QStructSDHelper = Ice.StreamHelpers.generateSeqHelper(Test.SD, true);

Test.SStructSDHelper = Ice.StreamHelpers.generateSeqHelper(Test.SD, true);

Test.CStructSDHelper = Ice.StreamHelpers.generateSeqHelper(Test.SD, true);

Test.CV = class extends Ice.Value
{
    constructor(i = 0)
    {
        super();
        this.i = i;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeInt(this.i);
    }

    _iceReadMemberImpl(istr)
    {
        this.i = istr.readInt();
    }
};

Ice.defineValue(Test.CV, "::Test::CV");
Ice.TypeRegistry.declareValueType("Test.CV", Test.CV);

Test.ACVSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectHelper, false, "Test.CV");

Test.LCVSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectHelper, false, "Test.CV");

const iceC_Test_I_ids = [
    "::Ice::Object",
    "::Test::I"
];

Test.I = class extends Ice.Object
{
};

Test.IPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.IPrx", Test.IPrx);

Ice.defineOperations(
    Test.I,
    Test.IPrx,
    iceC_Test_I_ids,
    "::Test::I");

Test.AIPrxSHelper = Ice.StreamHelpers.generateSeqHelper(Test.IPrx, false);

Test.LIPrxSHelper = Ice.StreamHelpers.generateSeqHelper(Test.IPrx, false);

Test.KIPrxSHelper = Ice.StreamHelpers.generateSeqHelper(Test.IPrx, false);

Test.QIPrxSHelper = Ice.StreamHelpers.generateSeqHelper(Test.IPrx, false);

Test.SIPrxSHelper = Ice.StreamHelpers.generateSeqHelper(Test.IPrx, false);

Test.CIPrxSHelper = Ice.StreamHelpers.generateSeqHelper(Test.IPrx, false);

Test.CR = class extends Ice.Value
{
    constructor(v = null)
    {
        super();
        this.v = v;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeValue(this.v);
    }

    _iceReadMemberImpl(istr)
    {
        istr.readValue(obj => this.v = obj, Ice.TypeRegistry.getValueType("Test.CV"));
    }
};

Ice.defineValue(Test.CR, "::Test::CR");
Ice.TypeRegistry.declareValueType("Test.CR", Test.CR);

Test.ACRSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectHelper, false, "Test.CR");

Test.LCRSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectHelper, false, "Test.CR");

Test.CCRSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectHelper, false, "Test.CR");

Test.En = Ice.defineEnum([
    ['A', 0], ['B', 1], ['C', 2]]);

Test.AEnSHelper = Ice.StreamHelpers.generateSeqHelper(Test.En._helper, false);

Test.LEnSHelper = Ice.StreamHelpers.generateSeqHelper(Test.En._helper, false);

Test.KEnSHelper = Ice.StreamHelpers.generateSeqHelper(Test.En._helper, false);

Test.QEnSHelper = Ice.StreamHelpers.generateSeqHelper(Test.En._helper, false);

Test.SEnSHelper = Ice.StreamHelpers.generateSeqHelper(Test.En._helper, false);

Test.CEnSHelper = Ice.StreamHelpers.generateSeqHelper(Test.En._helper, false);

Test.CustomIntSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.IntHelper, true);

Test.CustomCVSHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectHelper, false, "Test.CV");

Test.CustomIntSSHelper = Ice.StreamHelpers.generateSeqHelper(Test.CustomIntSHelper, false);

Test.CustomCVSSHelper = Ice.StreamHelpers.generateSeqHelper(Test.CustomCVSHelper, false);

const iceC_Test_MyClass_ids = [
    "::Ice::Object",
    "::Test::MyClass"
];

Test.MyClass = class extends Ice.Object
{
};

Test.MyClassPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.MyClassPrx", Test.MyClassPrx);

Ice.defineOperations(
    Test.MyClass,
    Test.MyClassPrx,
    iceC_Test_MyClass_ids,
    "::Test::MyClass",
    {
        "shutdown": [, , , , , , , , ],
        "opAByteS": [, , , [Test.AByteSHelper], [[Test.AByteSHelper]], [[Test.AByteSHelper]], , , ],
        "opLByteS": [, , , [Test.LByteSHelper], [[Test.LByteSHelper]], [[Test.LByteSHelper]], , , ],
        "opKByteS": [, , , [Test.KByteSHelper], [[Test.KByteSHelper]], [[Test.KByteSHelper]], , , ],
        "opQByteS": [, , , [Test.QByteSHelper], [[Test.QByteSHelper]], [[Test.QByteSHelper]], , , ],
        "opSByteS": [, , , [Test.SByteSHelper], [[Test.SByteSHelper]], [[Test.SByteSHelper]], , , ],
        "opABoolS": [, , , [Test.ABoolSHelper], [[Test.ABoolSHelper]], [[Test.ABoolSHelper]], , , ],
        "opLBoolS": [, , , [Test.LBoolSHelper], [[Test.LBoolSHelper]], [[Test.LBoolSHelper]], , , ],
        "opKBoolS": [, , , [Test.KBoolSHelper], [[Test.KBoolSHelper]], [[Test.KBoolSHelper]], , , ],
        "opQBoolS": [, , , [Test.QBoolSHelper], [[Test.QBoolSHelper]], [[Test.QBoolSHelper]], , , ],
        "opSBoolS": [, , , [Test.SBoolSHelper], [[Test.SBoolSHelper]], [[Test.SBoolSHelper]], , , ],
        "opAShortS": [, , , [Test.AShortSHelper], [[Test.AShortSHelper]], [[Test.AShortSHelper]], , , ],
        "opLShortS": [, , , [Test.LShortSHelper], [[Test.LShortSHelper]], [[Test.LShortSHelper]], , , ],
        "opKShortS": [, , , [Test.KShortSHelper], [[Test.KShortSHelper]], [[Test.KShortSHelper]], , , ],
        "opQShortS": [, , , [Test.QShortSHelper], [[Test.QShortSHelper]], [[Test.QShortSHelper]], , , ],
        "opSShortS": [, , , [Test.SShortSHelper], [[Test.SShortSHelper]], [[Test.SShortSHelper]], , , ],
        "opAIntS": [, , , [Test.AIntSHelper], [[Test.AIntSHelper]], [[Test.AIntSHelper]], , , ],
        "opLIntS": [, , , [Test.LIntSHelper], [[Test.LIntSHelper]], [[Test.LIntSHelper]], , , ],
        "opKIntS": [, , , [Test.KIntSHelper], [[Test.KIntSHelper]], [[Test.KIntSHelper]], , , ],
        "opQIntS": [, , , [Test.QIntSHelper], [[Test.QIntSHelper]], [[Test.QIntSHelper]], , , ],
        "opSIntS": [, , , [Test.SIntSHelper], [[Test.SIntSHelper]], [[Test.SIntSHelper]], , , ],
        "opALongS": [, , , [Test.ALongSHelper], [[Test.ALongSHelper]], [[Test.ALongSHelper]], , , ],
        "opLLongS": [, , , [Test.LLongSHelper], [[Test.LLongSHelper]], [[Test.LLongSHelper]], , , ],
        "opKLongS": [, , , [Test.KLongSHelper], [[Test.KLongSHelper]], [[Test.KLongSHelper]], , , ],
        "opQLongS": [, , , [Test.QLongSHelper], [[Test.QLongSHelper]], [[Test.QLongSHelper]], , , ],
        "opSLongS": [, , , [Test.SLongSHelper], [[Test.SLongSHelper]], [[Test.SLongSHelper]], , , ],
        "opAFloatS": [, , , [Test.AFloatSHelper], [[Test.AFloatSHelper]], [[Test.AFloatSHelper]], , , ],
        "opLFloatS": [, , , [Test.LFloatSHelper], [[Test.LFloatSHelper]], [[Test.LFloatSHelper]], , , ],
        "opKFloatS": [, , , [Test.KFloatSHelper], [[Test.KFloatSHelper]], [[Test.KFloatSHelper]], , , ],
        "opQFloatS": [, , , [Test.QFloatSHelper], [[Test.QFloatSHelper]], [[Test.QFloatSHelper]], , , ],
        "opSFloatS": [, , , [Test.SFloatSHelper], [[Test.SFloatSHelper]], [[Test.SFloatSHelper]], , , ],
        "opADoubleS": [, , , [Test.ADoubleSHelper], [[Test.ADoubleSHelper]], [[Test.ADoubleSHelper]], , , ],
        "opLDoubleS": [, , , [Test.LDoubleSHelper], [[Test.LDoubleSHelper]], [[Test.LDoubleSHelper]], , , ],
        "opKDoubleS": [, , , [Test.KDoubleSHelper], [[Test.KDoubleSHelper]], [[Test.KDoubleSHelper]], , , ],
        "opQDoubleS": [, , , [Test.QDoubleSHelper], [[Test.QDoubleSHelper]], [[Test.QDoubleSHelper]], , , ],
        "opSDoubleS": [, , , [Test.SDoubleSHelper], [[Test.SDoubleSHelper]], [[Test.SDoubleSHelper]], , , ],
        "opAStringS": [, , , [Test.AStringSHelper], [[Test.AStringSHelper]], [[Test.AStringSHelper]], , , ],
        "opLStringS": [, , , [Test.LStringSHelper], [[Test.LStringSHelper]], [[Test.LStringSHelper]], , , ],
        "opKStringS": [, , , [Test.KStringSHelper], [[Test.KStringSHelper]], [[Test.KStringSHelper]], , , ],
        "opQStringS": [, , , [Test.QStringSHelper], [[Test.QStringSHelper]], [[Test.QStringSHelper]], , , ],
        "opSStringS": [, , , [Test.SStringSHelper], [[Test.SStringSHelper]], [[Test.SStringSHelper]], , , ],
        "opAObjectS": [, , , [Test.AObjectSHelper], [[Test.AObjectSHelper]], [[Test.AObjectSHelper]], , true, true],
        "opLObjectS": [, , , [Test.LObjectSHelper], [[Test.LObjectSHelper]], [[Test.LObjectSHelper]], , true, true],
        "opAObjectPrxS": [, , , [Test.AObjectPrxSHelper], [[Test.AObjectPrxSHelper]], [[Test.AObjectPrxSHelper]], , , ],
        "opLObjectPrxS": [, , , [Test.LObjectPrxSHelper], [[Test.LObjectPrxSHelper]], [[Test.LObjectPrxSHelper]], , , ],
        "opKObjectPrxS": [, , , [Test.KObjectPrxSHelper], [[Test.KObjectPrxSHelper]], [[Test.KObjectPrxSHelper]], , , ],
        "opQObjectPrxS": [, , , [Test.QObjectPrxSHelper], [[Test.QObjectPrxSHelper]], [[Test.QObjectPrxSHelper]], , , ],
        "opSObjectPrxS": [, , , [Test.SObjectPrxSHelper], [[Test.SObjectPrxSHelper]], [[Test.SObjectPrxSHelper]], , , ],
        "opAStructS": [, , , [Test.AStructSHelper], [[Test.AStructSHelper]], [[Test.AStructSHelper]], , , ],
        "opLStructS": [, , , [Test.LStructSHelper], [[Test.LStructSHelper]], [[Test.LStructSHelper]], , , ],
        "opKStructS": [, , , [Test.KStructSHelper], [[Test.KStructSHelper]], [[Test.KStructSHelper]], , , ],
        "opQStructS": [, , , [Test.QStructSHelper], [[Test.QStructSHelper]], [[Test.QStructSHelper]], , , ],
        "opSStructS": [, , , [Test.SStructSHelper], [[Test.SStructSHelper]], [[Test.SStructSHelper]], , , ],
        "opAStructSD": [, , , [Test.AStructSDHelper], [[Test.AStructSDHelper]], [[Test.AStructSDHelper]], , , ],
        "opLStructSD": [, , , [Test.LStructSDHelper], [[Test.LStructSDHelper]], [[Test.LStructSDHelper]], , , ],
        "opKStructSD": [, , , [Test.KStructSDHelper], [[Test.KStructSDHelper]], [[Test.KStructSDHelper]], , , ],
        "opQStructSD": [, , , [Test.QStructSDHelper], [[Test.QStructSDHelper]], [[Test.QStructSDHelper]], , , ],
        "opSStructSD": [, , , [Test.SStructSDHelper], [[Test.SStructSDHelper]], [[Test.SStructSDHelper]], , , ],
        "opACVS": [, , , [Test.ACVSHelper], [[Test.ACVSHelper]], [[Test.ACVSHelper]], , true, true],
        "opLCVS": [, , , [Test.LCVSHelper], [[Test.LCVSHelper]], [[Test.LCVSHelper]], , true, true],
        "opACRS": [, , , [Test.ACRSHelper], [[Test.ACRSHelper]], [[Test.ACRSHelper]], , true, true],
        "opLCRS": [, , , [Test.LCRSHelper], [[Test.LCRSHelper]], [[Test.LCRSHelper]], , true, true],
        "opAEnS": [, , , [Test.AEnSHelper], [[Test.AEnSHelper]], [[Test.AEnSHelper]], , , ],
        "opLEnS": [, , , [Test.LEnSHelper], [[Test.LEnSHelper]], [[Test.LEnSHelper]], , , ],
        "opKEnS": [, , , [Test.KEnSHelper], [[Test.KEnSHelper]], [[Test.KEnSHelper]], , , ],
        "opQEnS": [, , , [Test.QEnSHelper], [[Test.QEnSHelper]], [[Test.QEnSHelper]], , , ],
        "opSEnS": [, , , [Test.SEnSHelper], [[Test.SEnSHelper]], [[Test.SEnSHelper]], , , ],
        "opAIPrxS": [, , , [Test.AIPrxSHelper], [[Test.AIPrxSHelper]], [[Test.AIPrxSHelper]], , , ],
        "opLIPrxS": [, , , [Test.LIPrxSHelper], [[Test.LIPrxSHelper]], [[Test.LIPrxSHelper]], , , ],
        "opKIPrxS": [, , , [Test.KIPrxSHelper], [[Test.KIPrxSHelper]], [[Test.KIPrxSHelper]], , , ],
        "opQIPrxS": [, , , [Test.QIPrxSHelper], [[Test.QIPrxSHelper]], [[Test.QIPrxSHelper]], , , ],
        "opSIPrxS": [, , , [Test.SIPrxSHelper], [[Test.SIPrxSHelper]], [[Test.SIPrxSHelper]], , , ],
        "opCustomIntS": [, , , [Test.CustomIntSHelper], [[Test.CustomIntSHelper]], [[Test.CustomIntSHelper]], , , ],
        "opCustomCVS": [, , , [Test.CustomCVSHelper], [[Test.CustomCVSHelper]], [[Test.CustomCVSHelper]], , true, true],
        "opCustomIntSS": [, , , [Test.CustomIntSSHelper], [[Test.CustomIntSSHelper]], [[Test.CustomIntSSHelper]], , , ],
        "opCustomCVSS": [, , , [Test.CustomCVSSHelper], [[Test.CustomCVSSHelper]], [[Test.CustomCVSSHelper]], , true, true]
    });
