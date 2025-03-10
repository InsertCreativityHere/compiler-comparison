// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";


export const Test = {};

Test.BoolSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.BoolHelper, true);

Test.BoolListHelper = Ice.StreamHelpers.generateSeqHelper(Ice.BoolHelper, true);

Test.BoolListListHelper = Ice.StreamHelpers.generateSeqHelper(Test.BoolListHelper, false);

Test.BoolListSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.BoolListHelper, false);

Test.BoolSeqListHelper = Ice.StreamHelpers.generateSeqHelper(Test.BoolSeqHelper, false);

Test.ByteSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ByteHelper, true);

Test.ByteListHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ByteHelper, true);

Test.ByteListListHelper = Ice.StreamHelpers.generateSeqHelper(Test.ByteListHelper, false);

Test.ByteListSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.ByteListHelper, false);

Test.ByteSeqListHelper = Ice.StreamHelpers.generateSeqHelper(Test.ByteSeqHelper, false);

Test.StringSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.StringHelper, false);

Test.StringListHelper = Ice.StreamHelpers.generateSeqHelper(Ice.StringHelper, false);

Test.StringListListHelper = Ice.StreamHelpers.generateSeqHelper(Test.StringListHelper, false);

Test.StringListSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.StringListHelper, false);

Test.StringSeqListHelper = Ice.StreamHelpers.generateSeqHelper(Test.StringSeqHelper, false);

Test.Fixed = class
{
    constructor(s = 0)
    {
        this.s = s;
    }

    _write(ostr)
    {
        ostr.writeShort(this.s);
    }

    _read(istr)
    {
        this.s = istr.readShort();
    }

    static get minWireSize()
    {
        return  2;
    }
};

Ice.defineStruct(Test.Fixed, true, false);

Test.FixedSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.Fixed, true);

Test.FixedListHelper = Ice.StreamHelpers.generateSeqHelper(Test.Fixed, true);

Test.FixedListListHelper = Ice.StreamHelpers.generateSeqHelper(Test.FixedListHelper, false);

Test.FixedListSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.FixedListHelper, false);

Test.FixedSeqListHelper = Ice.StreamHelpers.generateSeqHelper(Test.FixedSeqHelper, false);

Test.Variable = class
{
    constructor(s = "", bl = null, ss = null)
    {
        this.s = s;
        this.bl = bl;
        this.ss = ss;
    }

    _write(ostr)
    {
        ostr.writeString(this.s);
        Test.BoolListHelper.write(ostr, this.bl);
        Test.StringSeqHelper.write(ostr, this.ss);
    }

    _read(istr)
    {
        this.s = istr.readString();
        this.bl = Test.BoolListHelper.read(istr);
        this.ss = Test.StringSeqHelper.read(istr);
    }

    static get minWireSize()
    {
        return  3;
    }
};

Ice.defineStruct(Test.Variable, false, true);

Test.VariableSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.Variable, false);

Test.VariableListHelper = Ice.StreamHelpers.generateSeqHelper(Test.Variable, false);

Test.VariableListListHelper = Ice.StreamHelpers.generateSeqHelper(Test.VariableListHelper, false);

Test.VariableListSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.VariableListHelper, false);

Test.VariableSeqListHelper = Ice.StreamHelpers.generateSeqHelper(Test.VariableSeqHelper, false);

[Test.StringStringDict, Test.StringStringDictHelper] = Ice.defineDictionary(Ice.StringHelper, Ice.StringHelper, false, undefined);

Test.StringStringDictSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.StringStringDictHelper, false);

Test.StringStringDictListHelper = Ice.StreamHelpers.generateSeqHelper(Test.StringStringDictHelper, false);

Test.StringStringDictListListHelper = Ice.StreamHelpers.generateSeqHelper(Test.StringStringDictListHelper, false);

Test.StringStringDictListSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.StringStringDictListHelper, false);

Test.StringStringDictSeqListHelper = Ice.StreamHelpers.generateSeqHelper(Test.StringStringDictSeqHelper, false);

Test.E = Ice.defineEnum([
    ['E1', 0], ['E2', 1], ['E3', 2]]);

Test.ESeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.E._helper, false);

Test.EListHelper = Ice.StreamHelpers.generateSeqHelper(Test.E._helper, false);

Test.EListListHelper = Ice.StreamHelpers.generateSeqHelper(Test.EListHelper, false);

Test.EListSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.EListHelper, false);

Test.ESeqListHelper = Ice.StreamHelpers.generateSeqHelper(Test.ESeqHelper, false);

Test.C = class extends Ice.Value
{
};

Ice.defineValue(Test.C, "::Test::C");
Ice.TypeRegistry.declareValueType("Test.C", Test.C);

Test.CSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectHelper, false, "Test.C");

Test.CListHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectHelper, false, "Test.C");

Test.CListListHelper = Ice.StreamHelpers.generateSeqHelper(Test.CListHelper, false);

Test.CListSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.CListHelper, false);

Test.CSeqListHelper = Ice.StreamHelpers.generateSeqHelper(Test.CSeqHelper, false);

const iceC_Test_D_ids = [
    "::Ice::Object",
    "::Test::D"
];

Test.D = class extends Ice.Object
{
};

Test.DPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.DPrx", Test.DPrx);

Ice.defineOperations(
    Test.D,
    Test.DPrx,
    iceC_Test_D_ids,
    "::Test::D");

Test.DPrxSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.DPrx, false);

Test.DPrxListHelper = Ice.StreamHelpers.generateSeqHelper(Test.DPrx, false);

Test.DPrxListListHelper = Ice.StreamHelpers.generateSeqHelper(Test.DPrxListHelper, false);

Test.DPrxListSeqHelper = Ice.StreamHelpers.generateSeqHelper(Test.DPrxListHelper, false);

Test.DPrxSeqListHelper = Ice.StreamHelpers.generateSeqHelper(Test.DPrxSeqHelper, false);

Test.DoubleSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.DoubleHelper, true);

Test.ShortSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ShortHelper, true);

[Test.IntStringDict, Test.IntStringDictHelper] = Ice.defineDictionary(Ice.IntHelper, Ice.StringHelper, false, undefined);

[Test.LongLongDict, Test.LongLongDictHelper] = Ice.defineDictionary(Ice.LongHelper, Ice.LongHelper, true, Ice.HashMap.compareEquals);

[Test.StringIntDict, Test.StringIntDictHelper] = Ice.defineDictionary(Ice.StringHelper, Ice.IntHelper, false, undefined);

Test.DictClass = class extends Ice.Value
{
    constructor(isdict = null)
    {
        super();
        this.isdict = isdict;
    }

    _iceWriteMemberImpl(ostr)
    {
        Test.IntStringDictHelper.write(ostr, this.isdict);
    }

    _iceReadMemberImpl(istr)
    {
        this.isdict = Test.IntStringDictHelper.read(istr);
    }
};

Ice.defineValue(Test.DictClass, "::Test::DictClass");
Ice.TypeRegistry.declareValueType("Test.DictClass", Test.DictClass);

Test.BoolBufferHelper = Ice.StreamHelpers.generateSeqHelper(Ice.BoolHelper, true);

Test.ShortBufferHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ShortHelper, true);

Test.IntBufferHelper = Ice.StreamHelpers.generateSeqHelper(Ice.IntHelper, true);

Test.LongBufferHelper = Ice.StreamHelpers.generateSeqHelper(Ice.LongHelper, true);

Test.FloatBufferHelper = Ice.StreamHelpers.generateSeqHelper(Ice.FloatHelper, true);

Test.DoubleBufferHelper = Ice.StreamHelpers.generateSeqHelper(Ice.DoubleHelper, true);

Test.ByteBufferHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ByteHelper, true);

Test.BufferStruct = class
{
    constructor(byteBuf = null, boolBuf = null, shortBuf = null, intBuf = null, longBuf = null, floatBuf = null, doubleBuf = null)
    {
        this.byteBuf = byteBuf;
        this.boolBuf = boolBuf;
        this.shortBuf = shortBuf;
        this.intBuf = intBuf;
        this.longBuf = longBuf;
        this.floatBuf = floatBuf;
        this.doubleBuf = doubleBuf;
    }

    _write(ostr)
    {
        Test.ByteBufferHelper.write(ostr, this.byteBuf);
        Test.BoolBufferHelper.write(ostr, this.boolBuf);
        Test.ShortBufferHelper.write(ostr, this.shortBuf);
        Test.IntBufferHelper.write(ostr, this.intBuf);
        Test.LongBufferHelper.write(ostr, this.longBuf);
        Test.FloatBufferHelper.write(ostr, this.floatBuf);
        Test.DoubleBufferHelper.write(ostr, this.doubleBuf);
    }

    _read(istr)
    {
        this.byteBuf = Test.ByteBufferHelper.read(istr);
        this.boolBuf = Test.BoolBufferHelper.read(istr);
        this.shortBuf = Test.ShortBufferHelper.read(istr);
        this.intBuf = Test.IntBufferHelper.read(istr);
        this.longBuf = Test.LongBufferHelper.read(istr);
        this.floatBuf = Test.FloatBufferHelper.read(istr);
        this.doubleBuf = Test.DoubleBufferHelper.read(istr);
    }

    static get minWireSize()
    {
        return  7;
    }
};

Ice.defineStruct(Test.BufferStruct, false, true);

const iceC_Test_TestIntf_ids = [
    "::Ice::Object",
    "::Test::TestIntf"
];

Test.TestIntf = class extends Ice.Object
{
};

Test.TestIntfPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.TestIntfPrx", Test.TestIntfPrx);

Ice.defineOperations(
    Test.TestIntf,
    Test.TestIntfPrx,
    iceC_Test_TestIntf_ids,
    "::Test::TestIntf",
    {
        "opShortArray": [, , , [Test.ShortSeqHelper], [[Test.ShortSeqHelper]], [[Test.ShortSeqHelper]], , , ],
        "opDoubleArray": [, , , [Test.DoubleSeqHelper], [[1], [Test.DoubleSeqHelper]], [[Test.DoubleSeqHelper]], , , ],
        "opBoolArray": [, , , [Test.BoolSeqHelper], [[Test.BoolSeqHelper]], [[Test.BoolSeqHelper]], , , ],
        "opByteArray": [, , , [Test.ByteListHelper], [[Test.ByteListHelper]], [[Test.ByteListHelper]], , , ],
        "opVariableArray": [, , , [Test.VariableListHelper], [[Test.VariableListHelper]], [[Test.VariableListHelper]], , , ],
        "opBoolSeq": [, , , [Test.BoolSeqHelper], [[Test.BoolSeqHelper]], [[Test.BoolSeqHelper]], , , ],
        "opBoolList": [, , , [Test.BoolListHelper], [[Test.BoolListHelper]], [[Test.BoolListHelper]], , , ],
        "opByteSeq": [, , , [Test.ByteSeqHelper], [[Test.ByteSeqHelper]], [[Test.ByteSeqHelper]], , , ],
        "opByteList": [, , , [Test.ByteListHelper], [[Test.ByteListHelper]], [[Test.ByteListHelper]], , , ],
        "opMyByteSeq": [, , , [Test.ByteSeqHelper], [[Test.ByteSeqHelper]], [[Test.ByteSeqHelper]], , , ],
        "opStringSeq": [, , , [Test.StringSeqHelper], [[Test.StringSeqHelper]], [[Test.StringSeqHelper]], , , ],
        "opStringList": [, , , [Test.StringListHelper], [[Test.StringListHelper]], [[Test.StringListHelper]], , , ],
        "opFixedSeq": [, , , [Test.FixedSeqHelper], [[Test.FixedSeqHelper]], [[Test.FixedSeqHelper]], , , ],
        "opFixedList": [, , , [Test.FixedListHelper], [[Test.FixedListHelper]], [[Test.FixedListHelper]], , , ],
        "opVariableSeq": [, , , [Test.VariableSeqHelper], [[Test.VariableSeqHelper]], [[Test.VariableSeqHelper]], , , ],
        "opVariableList": [, , , [Test.VariableListHelper], [[Test.VariableListHelper]], [[Test.VariableListHelper]], , , ],
        "opStringStringDictSeq": [, , , [Test.StringStringDictSeqHelper], [[Test.StringStringDictSeqHelper]], [[Test.StringStringDictSeqHelper]], , , ],
        "opStringStringDictList": [, , , [Test.StringStringDictListHelper], [[Test.StringStringDictListHelper]], [[Test.StringStringDictListHelper]], , , ],
        "opESeq": [, , , [Test.ESeqHelper], [[Test.ESeqHelper]], [[Test.ESeqHelper]], , , ],
        "opEList": [, , , [Test.EListHelper], [[Test.EListHelper]], [[Test.EListHelper]], , , ],
        "opDPrxSeq": [, , , [Test.DPrxSeqHelper], [[Test.DPrxSeqHelper]], [[Test.DPrxSeqHelper]], , , ],
        "opDPrxList": [, , , [Test.DPrxListHelper], [[Test.DPrxListHelper]], [[Test.DPrxListHelper]], , , ],
        "opCSeq": [, , , [Test.CSeqHelper], [[Test.CSeqHelper]], [[Test.CSeqHelper]], , true, true],
        "opCList": [, , , [Test.CListHelper], [[Test.CListHelper]], [[Test.CListHelper]], , true, true],
        "opOutArrayByteSeq": [, , , , [[Test.ByteSeqHelper]], [[Test.ByteSeqHelper]], , , ],
        "opIntStringDict": [, , , [Test.IntStringDictHelper], [[Test.IntStringDictHelper]], [[Test.IntStringDictHelper]], , , ],
        "opVarDict": [, , , [Test.LongLongDictHelper], [[Test.StringIntDictHelper]], [[Test.StringIntDictHelper]], , , ],
        "opShortBuffer": [, , , [Test.ShortBufferHelper], [[Test.ShortBufferHelper]], [[Test.ShortBufferHelper]], , , ],
        "opBoolBuffer": [, , , [Test.BoolSeqHelper], [[Test.BoolSeqHelper]], [[Test.BoolSeqHelper]], , , ],
        "opBufferStruct": [, , , [Test.BufferStruct], [[Test.BufferStruct]], , , , ],
        "shutdown": [, , , , , , , , ]
    });
