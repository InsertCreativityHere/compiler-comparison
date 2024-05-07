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
const _ModuleRegistry = Ice._ModuleRegistry;
const Slice = Ice.Slice;

let Test = _ModuleRegistry.module("Test");

Test.MyEnum = Slice.defineEnum([
    ['enum1', 0], ['enum2', 1], ['enum3', 2]]);

Test.AnotherStruct = class
{
    constructor(s = "")
    {
        this.s = s;
    }

    _write(ostr)
    {
        ostr.writeString(this.s);
    }

    _read(istr)
    {
        this.s = istr.readString();
    }

    static get minWireSize()
    {
        return  1;
    }
};

Slice.defineStruct(Test.AnotherStruct, true, true);

Test.Structure = class
{
    constructor(p = null, e = Test.MyEnum.enum1, s = new Test.AnotherStruct())
    {
        this.p = p;
        this.e = e;
        this.s = s;
    }

    _write(ostr)
    {
        Test.MyClassPrx.write(ostr, this.p);
        Test.MyEnum._write(ostr, this.e);
        Test.AnotherStruct.write(ostr, this.s);
    }

    _read(istr)
    {
        this.p = Test.MyClassPrx.read(istr, this.p);
        this.e = Test.MyEnum._read(istr);
        this.s = Test.AnotherStruct.read(istr, this.s);
    }

    static get minWireSize()
    {
        return  4;
    }
};

Slice.defineStruct(Test.Structure, false, true);

Slice.defineSequence(Test, "ByteSHelper", "Ice.ByteHelper", true);

Slice.defineSequence(Test, "BoolSHelper", "Ice.BoolHelper", true);

Slice.defineSequence(Test, "ShortSHelper", "Ice.ShortHelper", true);

Slice.defineSequence(Test, "IntSHelper", "Ice.IntHelper", true);

Slice.defineSequence(Test, "LongSHelper", "Ice.LongHelper", true);

Slice.defineSequence(Test, "FloatSHelper", "Ice.FloatHelper", true);

Slice.defineSequence(Test, "DoubleSHelper", "Ice.DoubleHelper", true);

Slice.defineSequence(Test, "StringSHelper", "Ice.StringHelper", false);

Slice.defineSequence(Test, "WStringSHelper", "Ice.StringHelper", false);

Slice.defineSequence(Test, "MyEnumSHelper", "Test.MyEnum._helper", false);

Slice.defineSequence(Test, "MyClassSHelper", "Test.MyClassPrx", false);

Slice.defineSequence(Test, "ByteSSHelper", "Test.ByteSHelper", false);

Slice.defineSequence(Test, "BoolSSHelper", "Test.BoolSHelper", false);

Slice.defineSequence(Test, "ShortSSHelper", "Test.ShortSHelper", false);

Slice.defineSequence(Test, "IntSSHelper", "Test.IntSHelper", false);

Slice.defineSequence(Test, "LongSSHelper", "Test.LongSHelper", false);

Slice.defineSequence(Test, "FloatSSHelper", "Test.FloatSHelper", false);

Slice.defineSequence(Test, "DoubleSSHelper", "Test.DoubleSHelper", false);

Slice.defineSequence(Test, "StringSSHelper", "Test.StringSHelper", false);

Slice.defineSequence(Test, "MyEnumSSHelper", "Test.MyEnumSHelper", false);

Slice.defineSequence(Test, "MyClassSSHelper", "Test.MyClassSHelper", false);

Slice.defineSequence(Test, "StringSSSHelper", "Test.StringSSHelper", false);

Test.MyStruct = class
{
    constructor(i = 0, j = 0)
    {
        this.i = i;
        this.j = j;
    }

    _write(ostr)
    {
        ostr.writeInt(this.i);
        ostr.writeInt(this.j);
    }

    _read(istr)
    {
        this.i = istr.readInt();
        this.j = istr.readInt();
    }

    static get minWireSize()
    {
        return  8;
    }
};

Slice.defineStruct(Test.MyStruct, true, false);

Slice.defineDictionary(Test, "ByteBoolD", "ByteBoolDHelper", "Ice.ByteHelper", "Ice.BoolHelper", true, undefined, undefined);

Slice.defineDictionary(Test, "ShortIntD", "ShortIntDHelper", "Ice.ShortHelper", "Ice.IntHelper", true, undefined, undefined);

Slice.defineDictionary(Test, "LongFloatD", "LongFloatDHelper", "Ice.LongHelper", "Ice.FloatHelper", true, Ice.HashMap.compareEquals, undefined);

Slice.defineDictionary(Test, "StringStringD", "StringStringDHelper", "Ice.StringHelper", "Ice.StringHelper", false, undefined, undefined);

Slice.defineDictionary(Test, "StringMyEnumD", "StringMyEnumDHelper", "Ice.StringHelper", "Test.MyEnum._helper", false, undefined, undefined);

Slice.defineDictionary(Test, "MyEnumStringD", "MyEnumStringDHelper", "Test.MyEnum._helper", "Ice.StringHelper", false, undefined, undefined);

Slice.defineDictionary(Test, "MyStructMyEnumD", "MyStructMyEnumDHelper", "Test.MyStruct", "Test.MyEnum._helper", false, Ice.HashMap.compareEquals, undefined);

Slice.defineSequence(Test, "ByteBoolDSHelper", "Test.ByteBoolDHelper", false);

Slice.defineSequence(Test, "ShortIntDSHelper", "Test.ShortIntDHelper", false);

Slice.defineSequence(Test, "LongFloatDSHelper", "Test.LongFloatDHelper", false);

Slice.defineSequence(Test, "StringStringDSHelper", "Test.StringStringDHelper", false);

Slice.defineSequence(Test, "StringMyEnumDSHelper", "Test.StringMyEnumDHelper", false);

Slice.defineSequence(Test, "MyEnumStringDSHelper", "Test.MyEnumStringDHelper", false);

Slice.defineSequence(Test, "MyStructMyEnumDSHelper", "Test.MyStructMyEnumDHelper", false);

Slice.defineDictionary(Test, "ByteByteSD", "ByteByteSDHelper", "Ice.ByteHelper", "Test.ByteSHelper", false, undefined, undefined, Ice.ArrayUtil.equals);

Slice.defineDictionary(Test, "BoolBoolSD", "BoolBoolSDHelper", "Ice.BoolHelper", "Test.BoolSHelper", false, undefined, undefined, Ice.ArrayUtil.equals);

Slice.defineDictionary(Test, "ShortShortSD", "ShortShortSDHelper", "Ice.ShortHelper", "Test.ShortSHelper", false, undefined, undefined, Ice.ArrayUtil.equals);

Slice.defineDictionary(Test, "IntIntSD", "IntIntSDHelper", "Ice.IntHelper", "Test.IntSHelper", false, undefined, undefined, Ice.ArrayUtil.equals);

Slice.defineDictionary(Test, "LongLongSD", "LongLongSDHelper", "Ice.LongHelper", "Test.LongSHelper", false, Ice.HashMap.compareEquals, undefined, Ice.ArrayUtil.equals);

Slice.defineDictionary(Test, "StringFloatSD", "StringFloatSDHelper", "Ice.StringHelper", "Test.FloatSHelper", false, undefined, undefined, Ice.ArrayUtil.equals);

Slice.defineDictionary(Test, "StringDoubleSD", "StringDoubleSDHelper", "Ice.StringHelper", "Test.DoubleSHelper", false, undefined, undefined, Ice.ArrayUtil.equals);

Slice.defineDictionary(Test, "StringStringSD", "StringStringSDHelper", "Ice.StringHelper", "Test.StringSHelper", false, undefined, undefined, Ice.ArrayUtil.equals);

Slice.defineDictionary(Test, "MyEnumMyEnumSD", "MyEnumMyEnumSDHelper", "Test.MyEnum._helper", "Test.MyEnumSHelper", false, undefined, undefined, Ice.ArrayUtil.equals);

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

Slice.defineOperations(Test.MyClass, Test.MyClassPrx, iceC_Test_MyClass_ids, "::Test::MyClass",
{
    "shutdown": [, , , , , , , , ],
    "supportsCompress": [, , , [1], , , , , ],
    "opVoid": [, , , , , , , , ],
    "opByte": [, , , [0], [[0], [0]], [[0]], , , ],
    "opBool": [, , , [1], [[1], [1]], [[1]], , , ],
    "opShortIntLong": [, , , [4], [[2], [3], [4]], [[2], [3], [4]], , , ],
    "opFloatDouble": [, , , [6], [[5], [6]], [[5], [6]], , , ],
    "opString": [, , , [7], [[7], [7]], [[7]], , , ],
    "opMyEnum": [, , , [Test.MyEnum._helper], [[Test.MyEnum._helper]], [[Test.MyEnum._helper]], , , ],
    "opMyClass": [, , , ["Test.MyClassPrx"], [["Test.MyClassPrx"]], [["Test.MyClassPrx"], ["Test.MyClassPrx"]], , , ],
    "opStruct": [, , , [Test.Structure], [[Test.Structure], [Test.Structure]], [[Test.Structure]], , , ],
    "opByteS": [, , , ["Test.ByteSHelper"], [["Test.ByteSHelper"], ["Test.ByteSHelper"]], [["Test.ByteSHelper"]], , , ],
    "opBoolS": [, , , ["Test.BoolSHelper"], [["Test.BoolSHelper"], ["Test.BoolSHelper"]], [["Test.BoolSHelper"]], , , ],
    "opShortIntLongS": [, , , ["Test.LongSHelper"], [["Test.ShortSHelper"], ["Test.IntSHelper"], ["Test.LongSHelper"]], [["Test.ShortSHelper"], ["Test.IntSHelper"], ["Test.LongSHelper"]], , , ],
    "opFloatDoubleS": [, , , ["Test.DoubleSHelper"], [["Test.FloatSHelper"], ["Test.DoubleSHelper"]], [["Test.FloatSHelper"], ["Test.DoubleSHelper"]], , , ],
    "opStringS": [, , , ["Test.StringSHelper"], [["Test.StringSHelper"], ["Test.StringSHelper"]], [["Test.StringSHelper"]], , , ],
    "opByteSS": [, , , ["Test.ByteSSHelper"], [["Test.ByteSSHelper"], ["Test.ByteSSHelper"]], [["Test.ByteSSHelper"]], , , ],
    "opBoolSS": [, , , ["Test.BoolSSHelper"], [["Test.BoolSSHelper"], ["Test.BoolSSHelper"]], [["Test.BoolSSHelper"]], , , ],
    "opShortIntLongSS": [, , , ["Test.LongSSHelper"], [["Test.ShortSSHelper"], ["Test.IntSSHelper"], ["Test.LongSSHelper"]], [["Test.ShortSSHelper"], ["Test.IntSSHelper"], ["Test.LongSSHelper"]], , , ],
    "opFloatDoubleSS": [, , , ["Test.DoubleSSHelper"], [["Test.FloatSSHelper"], ["Test.DoubleSSHelper"]], [["Test.FloatSSHelper"], ["Test.DoubleSSHelper"]], , , ],
    "opStringSS": [, , , ["Test.StringSSHelper"], [["Test.StringSSHelper"], ["Test.StringSSHelper"]], [["Test.StringSSHelper"]], , , ],
    "opStringSSS": [, , , ["Test.StringSSSHelper"], [["Test.StringSSSHelper"], ["Test.StringSSSHelper"]], [["Test.StringSSSHelper"]], , , ],
    "opByteBoolD": [, , , ["Test.ByteBoolDHelper"], [["Test.ByteBoolDHelper"], ["Test.ByteBoolDHelper"]], [["Test.ByteBoolDHelper"]], , , ],
    "opShortIntD": [, , , ["Test.ShortIntDHelper"], [["Test.ShortIntDHelper"], ["Test.ShortIntDHelper"]], [["Test.ShortIntDHelper"]], , , ],
    "opLongFloatD": [, , , ["Test.LongFloatDHelper"], [["Test.LongFloatDHelper"], ["Test.LongFloatDHelper"]], [["Test.LongFloatDHelper"]], , , ],
    "opStringStringD": [, , , ["Test.StringStringDHelper"], [["Test.StringStringDHelper"], ["Test.StringStringDHelper"]], [["Test.StringStringDHelper"]], , , ],
    "opStringMyEnumD": [, , , ["Test.StringMyEnumDHelper"], [["Test.StringMyEnumDHelper"], ["Test.StringMyEnumDHelper"]], [["Test.StringMyEnumDHelper"]], , , ],
    "opMyEnumStringD": [, , , ["Test.MyEnumStringDHelper"], [["Test.MyEnumStringDHelper"], ["Test.MyEnumStringDHelper"]], [["Test.MyEnumStringDHelper"]], , , ],
    "opMyStructMyEnumD": [, , , ["Test.MyStructMyEnumDHelper"], [["Test.MyStructMyEnumDHelper"], ["Test.MyStructMyEnumDHelper"]], [["Test.MyStructMyEnumDHelper"]], , , ],
    "opByteBoolDS": [, , , ["Test.ByteBoolDSHelper"], [["Test.ByteBoolDSHelper"], ["Test.ByteBoolDSHelper"]], [["Test.ByteBoolDSHelper"]], , , ],
    "opShortIntDS": [, , , ["Test.ShortIntDSHelper"], [["Test.ShortIntDSHelper"], ["Test.ShortIntDSHelper"]], [["Test.ShortIntDSHelper"]], , , ],
    "opLongFloatDS": [, , , ["Test.LongFloatDSHelper"], [["Test.LongFloatDSHelper"], ["Test.LongFloatDSHelper"]], [["Test.LongFloatDSHelper"]], , , ],
    "opStringStringDS": [, , , ["Test.StringStringDSHelper"], [["Test.StringStringDSHelper"], ["Test.StringStringDSHelper"]], [["Test.StringStringDSHelper"]], , , ],
    "opStringMyEnumDS": [, , , ["Test.StringMyEnumDSHelper"], [["Test.StringMyEnumDSHelper"], ["Test.StringMyEnumDSHelper"]], [["Test.StringMyEnumDSHelper"]], , , ],
    "opMyEnumStringDS": [, , , ["Test.MyEnumStringDSHelper"], [["Test.MyEnumStringDSHelper"], ["Test.MyEnumStringDSHelper"]], [["Test.MyEnumStringDSHelper"]], , , ],
    "opMyStructMyEnumDS": [, , , ["Test.MyStructMyEnumDSHelper"], [["Test.MyStructMyEnumDSHelper"], ["Test.MyStructMyEnumDSHelper"]], [["Test.MyStructMyEnumDSHelper"]], , , ],
    "opByteByteSD": [, , , ["Test.ByteByteSDHelper"], [["Test.ByteByteSDHelper"], ["Test.ByteByteSDHelper"]], [["Test.ByteByteSDHelper"]], , , ],
    "opBoolBoolSD": [, , , ["Test.BoolBoolSDHelper"], [["Test.BoolBoolSDHelper"], ["Test.BoolBoolSDHelper"]], [["Test.BoolBoolSDHelper"]], , , ],
    "opShortShortSD": [, , , ["Test.ShortShortSDHelper"], [["Test.ShortShortSDHelper"], ["Test.ShortShortSDHelper"]], [["Test.ShortShortSDHelper"]], , , ],
    "opIntIntSD": [, , , ["Test.IntIntSDHelper"], [["Test.IntIntSDHelper"], ["Test.IntIntSDHelper"]], [["Test.IntIntSDHelper"]], , , ],
    "opLongLongSD": [, , , ["Test.LongLongSDHelper"], [["Test.LongLongSDHelper"], ["Test.LongLongSDHelper"]], [["Test.LongLongSDHelper"]], , , ],
    "opStringFloatSD": [, , , ["Test.StringFloatSDHelper"], [["Test.StringFloatSDHelper"], ["Test.StringFloatSDHelper"]], [["Test.StringFloatSDHelper"]], , , ],
    "opStringDoubleSD": [, , , ["Test.StringDoubleSDHelper"], [["Test.StringDoubleSDHelper"], ["Test.StringDoubleSDHelper"]], [["Test.StringDoubleSDHelper"]], , , ],
    "opStringStringSD": [, , , ["Test.StringStringSDHelper"], [["Test.StringStringSDHelper"], ["Test.StringStringSDHelper"]], [["Test.StringStringSDHelper"]], , , ],
    "opMyEnumMyEnumSD": [, , , ["Test.MyEnumMyEnumSDHelper"], [["Test.MyEnumMyEnumSDHelper"], ["Test.MyEnumMyEnumSDHelper"]], [["Test.MyEnumMyEnumSDHelper"]], , , ],
    "opIntS": [, , , ["Test.IntSHelper"], [["Test.IntSHelper"]], , , , ],
    "opByteSOneway": [, , , , [["Test.ByteSHelper"]], , , , ],
    "opByteSOnewayCallCount": [, , , [3], , , , , ],
    "opContext": [, , , ["Ice.ContextHelper"], , , , , ],
    "opDoubleMarshaling": [, , , , [[6], ["Test.DoubleSHelper"]], , , , ],
    "opIdempotent": [, 2, , , , , , , ],
    "opByte1": [, , , [0], [[0]], , , , ],
    "opShort1": [, , , [2], [[2]], , , , ],
    "opInt1": [, , , [3], [[3]], , , , ],
    "opLong1": [, , , [4], [[4]], , , , ],
    "opFloat1": [, , , [5], [[5]], , , , ],
    "opDouble1": [, , , [6], [[6]], , , , ],
    "opString1": [, , , [7], [[7]], , , , ],
    "opStringS1": [, , , ["Test.StringSHelper"], [["Test.StringSHelper"]], , , , ],
    "opByteBoolD1": [, , , ["Test.ByteBoolDHelper"], [["Test.ByteBoolDHelper"]], , , , ],
    "opStringS2": [, , , ["Test.StringSHelper"], [["Test.StringSHelper"]], , , , ],
    "opByteBoolD2": [, , , ["Test.ByteBoolDHelper"], [["Test.ByteBoolDHelper"]], , , , ],
    "opStringLiterals": [, , , ["Test.StringSHelper"], , , , , ],
    "opWStringLiterals": [, , , ["Test.WStringSHelper"], , , , , ],
    "opMStruct1": [, , , [Test.Structure], , , , , ],
    "opMStruct2": [, , , [Test.Structure], [[Test.Structure]], [[Test.Structure]], , , ],
    "opMSeq1": [, , , ["Test.StringSHelper"], , , , , ],
    "opMSeq2": [, , , ["Test.StringSHelper"], [["Test.StringSHelper"]], [["Test.StringSHelper"]], , , ],
    "opMDict1": [, , , ["Test.StringStringDHelper"], , , , , ],
    "opMDict2": [, , , ["Test.StringStringDHelper"], [["Test.StringStringDHelper"]], [["Test.StringStringDHelper"]], , , ]
});

Test.MyStruct1 = class
{
    constructor(tesT = "", myClass = null, myStruct1 = "")
    {
        this.tesT = tesT;
        this.myClass = myClass;
        this.myStruct1 = myStruct1;
    }

    _write(ostr)
    {
        ostr.writeString(this.tesT);
        Test.MyClassPrx.write(ostr, this.myClass);
        ostr.writeString(this.myStruct1);
    }

    _read(istr)
    {
        this.tesT = istr.readString();
        this.myClass = Test.MyClassPrx.read(istr, this.myClass);
        this.myStruct1 = istr.readString();
    }

    static get minWireSize()
    {
        return  4;
    }
};

Slice.defineStruct(Test.MyStruct1, false, true);

Test.MyClass1 = class extends Ice.Value
{
    constructor(tesT = "", myClass = null, myClass1 = "")
    {
        super();
        this.tesT = tesT;
        this.myClass = myClass;
        this.myClass1 = myClass1;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeString(this.tesT);
        Test.MyClassPrx.write(ostr, this.myClass);
        ostr.writeString(this.myClass1);
    }

    _iceReadMemberImpl(istr)
    {
        this.tesT = istr.readString();
        this.myClass = Test.MyClassPrx.read(istr, this.myClass);
        this.myClass1 = istr.readString();
    }
};

Slice.defineValue(Test.MyClass1, "::Test::MyClass1");

const iceC_Test_MyDerivedClass_ids = [
    "::Ice::Object",
    "::Test::MyClass",
    "::Test::MyDerivedClass"
];

Test.MyDerivedClass = class extends Ice.Object
{
    static get _iceImplements()
    {
        return [
            Test.MyClass
        ];
    }
};

Test.MyDerivedClassPrx = class extends Ice.ObjectPrx
{
    static get _implements()
    {
        return [
            Test.MyClassPrx];
    }
};

Slice.defineOperations(Test.MyDerivedClass, Test.MyDerivedClassPrx, iceC_Test_MyDerivedClass_ids, "::Test::MyDerivedClass",
{
    "opDerived": [, , , , , , , , ],
    "opMyClass1": [, , , ["Test.MyClass1", true], [["Test.MyClass1", true]], , , true, true],
    "opMyStruct1": [, , , [Test.MyStruct1], [[Test.MyStruct1]], , , , ]
});

const iceC_Test_Echo_ids = [
    "::Ice::Object",
    "::Test::Echo"
];

Test.Echo = class extends Ice.Object
{
};

Test.EchoPrx = class extends Ice.ObjectPrx
{
};

Slice.defineOperations(Test.Echo, Test.EchoPrx, iceC_Test_Echo_ids, "::Test::Echo",
{
    "setConnection": [, , , , , , , , ],
    "startBatch": [, , , , , , , , ],
    "flushBatch": [, , , , , , , , ],
    "shutdown": [, , , , , , , , ],
    "supportsCompress": [, , , [1], , , , , ]
});

Object.defineProperty(Test, 's0', {
    value: "\\"
});

Object.defineProperty(Test, 's1', {
    value: "A"
});

Object.defineProperty(Test, 's2', {
    value: "Ice"
});

Object.defineProperty(Test, 's3', {
    value: "A21"
});

Object.defineProperty(Test, 's4', {
    value: "\\u0041 \\U00000041"
});

Object.defineProperty(Test, 's5', {
    value: "\u00FF"
});

Object.defineProperty(Test, 's6', {
    value: "\u03FF"
});

Object.defineProperty(Test, 's7', {
    value: "\u05F0"
});

Object.defineProperty(Test, 's8', {
    value: "\ud800\udc00"
});

Object.defineProperty(Test, 's9', {
    value: "\ud83c\udf4c"
});

Object.defineProperty(Test, 's10', {
    value: "\u0DA7"
});

Object.defineProperty(Test, 'sw0', {
    value: "\\"
});

Object.defineProperty(Test, 'sw1', {
    value: "A"
});

Object.defineProperty(Test, 'sw2', {
    value: "Ice"
});

Object.defineProperty(Test, 'sw3', {
    value: "A21"
});

Object.defineProperty(Test, 'sw4', {
    value: "\\u0041 \\U00000041"
});

Object.defineProperty(Test, 'sw5', {
    value: "\u00ff"
});

Object.defineProperty(Test, 'sw6', {
    value: "\u03ff"
});

Object.defineProperty(Test, 'sw7', {
    value: "\u05f0"
});

Object.defineProperty(Test, 'sw8', {
    value: "\ud800\udc00"
});

Object.defineProperty(Test, 'sw9', {
    value: "\ud83c\udf4c"
});

Object.defineProperty(Test, 'sw10', {
    value: "\u0da7"
});

Object.defineProperty(Test, 'ss0', {
    value: "'\"?\\\u0007\b\f\n\r\t\v\u0006"
});

Object.defineProperty(Test, 'ss1', {
    value: "'\"?\\\u0007\b\f\n\r\t\v\u0006"
});

Object.defineProperty(Test, 'ss2', {
    value: "'\"?\\\u0007\b\f\n\r\t\v\u0006"
});

Object.defineProperty(Test, 'ss3', {
    value: "\\\\U\\u\\"
});

Object.defineProperty(Test, 'ss4', {
    value: "\\A\\"
});

Object.defineProperty(Test, 'ss5', {
    value: "\\u0041\\"
});

Object.defineProperty(Test, 'su0', {
    value: "\u0128\u0178\u00ff\u0100\u1f00\ud800\udd94\ud800\udd6a\ud800\udd98\ud83c\udf40\ud83c\udf41\ud83c\udf42\ud83c\udf43"
});

Object.defineProperty(Test, 'su1', {
    value: "\u0128\u0178\u00FF\u0100\u1F00\ud800\udd94\ud800\udd6a\ud800\udd98\ud83c\udf40\ud83c\udf41\ud83c\udf42\ud83c\udf43"
});

Object.defineProperty(Test, 'su2', {
    value: "\u0128\u0178\u00ff\u0100\u1f00\ud800\udd94\ud800\udd6a\ud800\udd98\ud83c\udf40\ud83c\udf41\ud83c\udf42\ud83c\udf43"
});

let Test2 = _ModuleRegistry.module("Test2");

const iceC_Test2_MyDerivedClass_ids = [
    "::Ice::Object",
    "::Test2::MyDerivedClass",
    "::Test::MyClass"
];

/**
 * Makes sure that proxy operations are correctly generated when extending an interface from
 * a different module (ICE-7639).
 *
 **/
Test2.MyDerivedClass = class extends Ice.Object
{
    static get _iceImplements()
    {
        return [
            Test.MyClass
        ];
    }
};

Test2.MyDerivedClassPrx = class extends Ice.ObjectPrx
{
    static get _implements()
    {
        return [
            Test.MyClassPrx];
    }
};

Slice.defineOperations(Test2.MyDerivedClass, Test2.MyDerivedClassPrx, iceC_Test2_MyDerivedClass_ids, "::Test2::MyDerivedClass");
export { Test };
export { Test2 };
