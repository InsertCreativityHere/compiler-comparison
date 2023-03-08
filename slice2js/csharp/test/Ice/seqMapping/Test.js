//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
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

(function(module, require, exports)
{
    const Ice = require("ice").Ice;
    const _ModuleRegistry = Ice._ModuleRegistry;
    const Slice = Ice.Slice;

    let Test = _ModuleRegistry.module("Test");

    Slice.defineSequence(Test, "AByteSHelper", "Ice.ByteHelper", true);

    Slice.defineSequence(Test, "LByteSHelper", "Ice.ByteHelper", true);

    Slice.defineSequence(Test, "KByteSHelper", "Ice.ByteHelper", true);

    Slice.defineSequence(Test, "QByteSHelper", "Ice.ByteHelper", true);

    Slice.defineSequence(Test, "SByteSHelper", "Ice.ByteHelper", true);

    Slice.defineSequence(Test, "CByteSHelper", "Ice.ByteHelper", true);

    Slice.defineSequence(Test, "ABoolSHelper", "Ice.BoolHelper", true);

    Slice.defineSequence(Test, "LBoolSHelper", "Ice.BoolHelper", true);

    Slice.defineSequence(Test, "KBoolSHelper", "Ice.BoolHelper", true);

    Slice.defineSequence(Test, "QBoolSHelper", "Ice.BoolHelper", true);

    Slice.defineSequence(Test, "SBoolSHelper", "Ice.BoolHelper", true);

    Slice.defineSequence(Test, "CBoolSHelper", "Ice.BoolHelper", true);

    Slice.defineSequence(Test, "AShortSHelper", "Ice.ShortHelper", true);

    Slice.defineSequence(Test, "LShortSHelper", "Ice.ShortHelper", true);

    Slice.defineSequence(Test, "KShortSHelper", "Ice.ShortHelper", true);

    Slice.defineSequence(Test, "QShortSHelper", "Ice.ShortHelper", true);

    Slice.defineSequence(Test, "SShortSHelper", "Ice.ShortHelper", true);

    Slice.defineSequence(Test, "CShortSHelper", "Ice.ShortHelper", true);

    Slice.defineSequence(Test, "AIntSHelper", "Ice.IntHelper", true);

    Slice.defineSequence(Test, "LIntSHelper", "Ice.IntHelper", true);

    Slice.defineSequence(Test, "KIntSHelper", "Ice.IntHelper", true);

    Slice.defineSequence(Test, "QIntSHelper", "Ice.IntHelper", true);

    Slice.defineSequence(Test, "SIntSHelper", "Ice.IntHelper", true);

    Slice.defineSequence(Test, "CIntSHelper", "Ice.IntHelper", true);

    Slice.defineSequence(Test, "ALongSHelper", "Ice.LongHelper", true);

    Slice.defineSequence(Test, "LLongSHelper", "Ice.LongHelper", true);

    Slice.defineSequence(Test, "KLongSHelper", "Ice.LongHelper", true);

    Slice.defineSequence(Test, "QLongSHelper", "Ice.LongHelper", true);

    Slice.defineSequence(Test, "SLongSHelper", "Ice.LongHelper", true);

    Slice.defineSequence(Test, "CLongSHelper", "Ice.LongHelper", true);

    Slice.defineSequence(Test, "AFloatSHelper", "Ice.FloatHelper", true);

    Slice.defineSequence(Test, "LFloatSHelper", "Ice.FloatHelper", true);

    Slice.defineSequence(Test, "KFloatSHelper", "Ice.FloatHelper", true);

    Slice.defineSequence(Test, "QFloatSHelper", "Ice.FloatHelper", true);

    Slice.defineSequence(Test, "SFloatSHelper", "Ice.FloatHelper", true);

    Slice.defineSequence(Test, "CFloatSHelper", "Ice.FloatHelper", true);

    Slice.defineSequence(Test, "ADoubleSHelper", "Ice.DoubleHelper", true);

    Slice.defineSequence(Test, "LDoubleSHelper", "Ice.DoubleHelper", true);

    Slice.defineSequence(Test, "KDoubleSHelper", "Ice.DoubleHelper", true);

    Slice.defineSequence(Test, "QDoubleSHelper", "Ice.DoubleHelper", true);

    Slice.defineSequence(Test, "SDoubleSHelper", "Ice.DoubleHelper", true);

    Slice.defineSequence(Test, "CDoubleSHelper", "Ice.DoubleHelper", true);

    Slice.defineSequence(Test, "AStringSHelper", "Ice.StringHelper", false);

    Slice.defineSequence(Test, "LStringSHelper", "Ice.StringHelper", false);

    Slice.defineSequence(Test, "KStringSHelper", "Ice.StringHelper", false);

    Slice.defineSequence(Test, "QStringSHelper", "Ice.StringHelper", false);

    Slice.defineSequence(Test, "SStringSHelper", "Ice.StringHelper", false);

    Slice.defineSequence(Test, "CStringSHelper", "Ice.StringHelper", false);

    Slice.defineSequence(Test, "AObjectSHelper", "Ice.ObjectHelper", false, "Ice.Value");

    Slice.defineSequence(Test, "LObjectSHelper", "Ice.ObjectHelper", false, "Ice.Value");

    Slice.defineSequence(Test, "CObjectSHelper", "Ice.ObjectHelper", false, "Ice.Value");

    Slice.defineSequence(Test, "AObjectPrxSHelper", "Ice.ObjectPrx", false);

    Slice.defineSequence(Test, "LObjectPrxSHelper", "Ice.ObjectPrx", false);

    Slice.defineSequence(Test, "KObjectPrxSHelper", "Ice.ObjectPrx", false);

    Slice.defineSequence(Test, "QObjectPrxSHelper", "Ice.ObjectPrx", false);

    Slice.defineSequence(Test, "SObjectPrxSHelper", "Ice.ObjectPrx", false);

    Slice.defineSequence(Test, "CObjectPrxSHelper", "Ice.ObjectPrx", false);

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

    Slice.defineStruct(Test.S, true, false);

    Slice.defineSequence(Test, "AStructSHelper", "Test.S", true);

    Slice.defineSequence(Test, "LStructSHelper", "Test.S", true);

    Slice.defineSequence(Test, "KStructSHelper", "Test.S", true);

    Slice.defineSequence(Test, "QStructSHelper", "Test.S", true);

    Slice.defineSequence(Test, "SStructSHelper", "Test.S", true);

    Slice.defineSequence(Test, "CStructSHelper", "Test.S", true);

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

    Slice.defineStruct(Test.SD, true, false);

    Slice.defineSequence(Test, "AStructSDHelper", "Test.SD", true);

    Slice.defineSequence(Test, "LStructSDHelper", "Test.SD", true);

    Slice.defineSequence(Test, "KStructSDHelper", "Test.SD", true);

    Slice.defineSequence(Test, "QStructSDHelper", "Test.SD", true);

    Slice.defineSequence(Test, "SStructSDHelper", "Test.SD", true);

    Slice.defineSequence(Test, "CStructSDHelper", "Test.SD", true);

    const iceC_Test_CV_ids = [
        "::Ice::Object",
        "::Test::CV"
    ];

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

    Slice.defineValue(Test.CV, iceC_Test_CV_ids[1], false);

    Slice.defineSequence(Test, "ACVSHelper", "Ice.ObjectHelper", false, "Test.CV");

    Slice.defineSequence(Test, "LCVSHelper", "Ice.ObjectHelper", false, "Test.CV");

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

    Slice.defineOperations(Test.I, Test.IPrx, iceC_Test_I_ids, 1);

    Slice.defineSequence(Test, "AIPrxSHelper", "Test.IPrx", false);

    Slice.defineSequence(Test, "LIPrxSHelper", "Test.IPrx", false);

    Slice.defineSequence(Test, "KIPrxSHelper", "Test.IPrx", false);

    Slice.defineSequence(Test, "QIPrxSHelper", "Test.IPrx", false);

    Slice.defineSequence(Test, "SIPrxSHelper", "Test.IPrx", false);

    Slice.defineSequence(Test, "CIPrxSHelper", "Test.IPrx", false);

    const iceC_Test_CR_ids = [
        "::Ice::Object",
        "::Test::CR"
    ];

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
            istr.readValue(obj => this.v = obj, Test.CV);
        }
    };

    Slice.defineValue(Test.CR, iceC_Test_CR_ids[1], false);

    Slice.defineSequence(Test, "ACRSHelper", "Ice.ObjectHelper", false, "Test.CR");

    Slice.defineSequence(Test, "LCRSHelper", "Ice.ObjectHelper", false, "Test.CR");

    Slice.defineSequence(Test, "CCRSHelper", "Ice.ObjectHelper", false, "Test.CR");

    Test.En = Slice.defineEnum([
        ['A', 0], ['B', 1], ['C', 2]]);

    Slice.defineSequence(Test, "AEnSHelper", "Test.En._helper", false);

    Slice.defineSequence(Test, "LEnSHelper", "Test.En._helper", false);

    Slice.defineSequence(Test, "KEnSHelper", "Test.En._helper", false);

    Slice.defineSequence(Test, "QEnSHelper", "Test.En._helper", false);

    Slice.defineSequence(Test, "SEnSHelper", "Test.En._helper", false);

    Slice.defineSequence(Test, "CEnSHelper", "Test.En._helper", false);

    Slice.defineSequence(Test, "CustomIntSHelper", "Ice.IntHelper", true);

    Slice.defineSequence(Test, "CustomCVSHelper", "Ice.ObjectHelper", false, "Test.CV");

    Slice.defineSequence(Test, "CustomIntSSHelper", "Test.CustomIntSHelper", false);

    Slice.defineSequence(Test, "CustomCVSSHelper", "Test.CustomCVSHelper", false);

    Slice.defineSequence(Test, "SerialSmallHelper", "Ice.ByteHelper", true);

    Slice.defineSequence(Test, "SerialLargeHelper", "Ice.ByteHelper", true);

    Slice.defineSequence(Test, "SerialStructHelper", "Ice.ByteHelper", true);

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

    Slice.defineOperations(Test.MyClass, Test.MyClassPrx, iceC_Test_MyClass_ids, 1,
    {
        "shutdown": [, , , , , , , , , ],
        "opAByteS": [, , , , ["Test.AByteSHelper"], [["Test.AByteSHelper"]], [["Test.AByteSHelper"]], , , ],
        "opLByteS": [, , , , ["Test.LByteSHelper"], [["Test.LByteSHelper"]], [["Test.LByteSHelper"]], , , ],
        "opKByteS": [, , , , ["Test.KByteSHelper"], [["Test.KByteSHelper"]], [["Test.KByteSHelper"]], , , ],
        "opQByteS": [, , , , ["Test.QByteSHelper"], [["Test.QByteSHelper"]], [["Test.QByteSHelper"]], , , ],
        "opSByteS": [, , , , ["Test.SByteSHelper"], [["Test.SByteSHelper"]], [["Test.SByteSHelper"]], , , ],
        "opABoolS": [, , , , ["Test.ABoolSHelper"], [["Test.ABoolSHelper"]], [["Test.ABoolSHelper"]], , , ],
        "opLBoolS": [, , , , ["Test.LBoolSHelper"], [["Test.LBoolSHelper"]], [["Test.LBoolSHelper"]], , , ],
        "opKBoolS": [, , , , ["Test.KBoolSHelper"], [["Test.KBoolSHelper"]], [["Test.KBoolSHelper"]], , , ],
        "opQBoolS": [, , , , ["Test.QBoolSHelper"], [["Test.QBoolSHelper"]], [["Test.QBoolSHelper"]], , , ],
        "opSBoolS": [, , , , ["Test.SBoolSHelper"], [["Test.SBoolSHelper"]], [["Test.SBoolSHelper"]], , , ],
        "opAShortS": [, , , , ["Test.AShortSHelper"], [["Test.AShortSHelper"]], [["Test.AShortSHelper"]], , , ],
        "opLShortS": [, , , , ["Test.LShortSHelper"], [["Test.LShortSHelper"]], [["Test.LShortSHelper"]], , , ],
        "opKShortS": [, , , , ["Test.KShortSHelper"], [["Test.KShortSHelper"]], [["Test.KShortSHelper"]], , , ],
        "opQShortS": [, , , , ["Test.QShortSHelper"], [["Test.QShortSHelper"]], [["Test.QShortSHelper"]], , , ],
        "opSShortS": [, , , , ["Test.SShortSHelper"], [["Test.SShortSHelper"]], [["Test.SShortSHelper"]], , , ],
        "opAIntS": [, , , , ["Test.AIntSHelper"], [["Test.AIntSHelper"]], [["Test.AIntSHelper"]], , , ],
        "opLIntS": [, , , , ["Test.LIntSHelper"], [["Test.LIntSHelper"]], [["Test.LIntSHelper"]], , , ],
        "opKIntS": [, , , , ["Test.KIntSHelper"], [["Test.KIntSHelper"]], [["Test.KIntSHelper"]], , , ],
        "opQIntS": [, , , , ["Test.QIntSHelper"], [["Test.QIntSHelper"]], [["Test.QIntSHelper"]], , , ],
        "opSIntS": [, , , , ["Test.SIntSHelper"], [["Test.SIntSHelper"]], [["Test.SIntSHelper"]], , , ],
        "opALongS": [, , , , ["Test.ALongSHelper"], [["Test.ALongSHelper"]], [["Test.ALongSHelper"]], , , ],
        "opLLongS": [, , , , ["Test.LLongSHelper"], [["Test.LLongSHelper"]], [["Test.LLongSHelper"]], , , ],
        "opKLongS": [, , , , ["Test.KLongSHelper"], [["Test.KLongSHelper"]], [["Test.KLongSHelper"]], , , ],
        "opQLongS": [, , , , ["Test.QLongSHelper"], [["Test.QLongSHelper"]], [["Test.QLongSHelper"]], , , ],
        "opSLongS": [, , , , ["Test.SLongSHelper"], [["Test.SLongSHelper"]], [["Test.SLongSHelper"]], , , ],
        "opAFloatS": [, , , , ["Test.AFloatSHelper"], [["Test.AFloatSHelper"]], [["Test.AFloatSHelper"]], , , ],
        "opLFloatS": [, , , , ["Test.LFloatSHelper"], [["Test.LFloatSHelper"]], [["Test.LFloatSHelper"]], , , ],
        "opKFloatS": [, , , , ["Test.KFloatSHelper"], [["Test.KFloatSHelper"]], [["Test.KFloatSHelper"]], , , ],
        "opQFloatS": [, , , , ["Test.QFloatSHelper"], [["Test.QFloatSHelper"]], [["Test.QFloatSHelper"]], , , ],
        "opSFloatS": [, , , , ["Test.SFloatSHelper"], [["Test.SFloatSHelper"]], [["Test.SFloatSHelper"]], , , ],
        "opADoubleS": [, , , , ["Test.ADoubleSHelper"], [["Test.ADoubleSHelper"]], [["Test.ADoubleSHelper"]], , , ],
        "opLDoubleS": [, , , , ["Test.LDoubleSHelper"], [["Test.LDoubleSHelper"]], [["Test.LDoubleSHelper"]], , , ],
        "opKDoubleS": [, , , , ["Test.KDoubleSHelper"], [["Test.KDoubleSHelper"]], [["Test.KDoubleSHelper"]], , , ],
        "opQDoubleS": [, , , , ["Test.QDoubleSHelper"], [["Test.QDoubleSHelper"]], [["Test.QDoubleSHelper"]], , , ],
        "opSDoubleS": [, , , , ["Test.SDoubleSHelper"], [["Test.SDoubleSHelper"]], [["Test.SDoubleSHelper"]], , , ],
        "opAStringS": [, , , , ["Test.AStringSHelper"], [["Test.AStringSHelper"]], [["Test.AStringSHelper"]], , , ],
        "opLStringS": [, , , , ["Test.LStringSHelper"], [["Test.LStringSHelper"]], [["Test.LStringSHelper"]], , , ],
        "opKStringS": [, , , , ["Test.KStringSHelper"], [["Test.KStringSHelper"]], [["Test.KStringSHelper"]], , , ],
        "opQStringS": [, , , , ["Test.QStringSHelper"], [["Test.QStringSHelper"]], [["Test.QStringSHelper"]], , , ],
        "opSStringS": [, , , , ["Test.SStringSHelper"], [["Test.SStringSHelper"]], [["Test.SStringSHelper"]], , , ],
        "opAObjectS": [, , , , ["Test.AObjectSHelper"], [["Test.AObjectSHelper"]], [["Test.AObjectSHelper"]], , true, true],
        "opLObjectS": [, , , , ["Test.LObjectSHelper"], [["Test.LObjectSHelper"]], [["Test.LObjectSHelper"]], , true, true],
        "opAObjectPrxS": [, , , , ["Test.AObjectPrxSHelper"], [["Test.AObjectPrxSHelper"]], [["Test.AObjectPrxSHelper"]], , , ],
        "opLObjectPrxS": [, , , , ["Test.LObjectPrxSHelper"], [["Test.LObjectPrxSHelper"]], [["Test.LObjectPrxSHelper"]], , , ],
        "opKObjectPrxS": [, , , , ["Test.KObjectPrxSHelper"], [["Test.KObjectPrxSHelper"]], [["Test.KObjectPrxSHelper"]], , , ],
        "opQObjectPrxS": [, , , , ["Test.QObjectPrxSHelper"], [["Test.QObjectPrxSHelper"]], [["Test.QObjectPrxSHelper"]], , , ],
        "opSObjectPrxS": [, , , , ["Test.SObjectPrxSHelper"], [["Test.SObjectPrxSHelper"]], [["Test.SObjectPrxSHelper"]], , , ],
        "opAStructS": [, , , , ["Test.AStructSHelper"], [["Test.AStructSHelper"]], [["Test.AStructSHelper"]], , , ],
        "opLStructS": [, , , , ["Test.LStructSHelper"], [["Test.LStructSHelper"]], [["Test.LStructSHelper"]], , , ],
        "opKStructS": [, , , , ["Test.KStructSHelper"], [["Test.KStructSHelper"]], [["Test.KStructSHelper"]], , , ],
        "opQStructS": [, , , , ["Test.QStructSHelper"], [["Test.QStructSHelper"]], [["Test.QStructSHelper"]], , , ],
        "opSStructS": [, , , , ["Test.SStructSHelper"], [["Test.SStructSHelper"]], [["Test.SStructSHelper"]], , , ],
        "opAStructSD": [, , , , ["Test.AStructSDHelper"], [["Test.AStructSDHelper"]], [["Test.AStructSDHelper"]], , , ],
        "opLStructSD": [, , , , ["Test.LStructSDHelper"], [["Test.LStructSDHelper"]], [["Test.LStructSDHelper"]], , , ],
        "opKStructSD": [, , , , ["Test.KStructSDHelper"], [["Test.KStructSDHelper"]], [["Test.KStructSDHelper"]], , , ],
        "opQStructSD": [, , , , ["Test.QStructSDHelper"], [["Test.QStructSDHelper"]], [["Test.QStructSDHelper"]], , , ],
        "opSStructSD": [, , , , ["Test.SStructSDHelper"], [["Test.SStructSDHelper"]], [["Test.SStructSDHelper"]], , , ],
        "opACVS": [, , , , ["Test.ACVSHelper"], [["Test.ACVSHelper"]], [["Test.ACVSHelper"]], , true, true],
        "opLCVS": [, , , , ["Test.LCVSHelper"], [["Test.LCVSHelper"]], [["Test.LCVSHelper"]], , true, true],
        "opACRS": [, , , , ["Test.ACRSHelper"], [["Test.ACRSHelper"]], [["Test.ACRSHelper"]], , true, true],
        "opLCRS": [, , , , ["Test.LCRSHelper"], [["Test.LCRSHelper"]], [["Test.LCRSHelper"]], , true, true],
        "opAEnS": [, , , , ["Test.AEnSHelper"], [["Test.AEnSHelper"]], [["Test.AEnSHelper"]], , , ],
        "opLEnS": [, , , , ["Test.LEnSHelper"], [["Test.LEnSHelper"]], [["Test.LEnSHelper"]], , , ],
        "opKEnS": [, , , , ["Test.KEnSHelper"], [["Test.KEnSHelper"]], [["Test.KEnSHelper"]], , , ],
        "opQEnS": [, , , , ["Test.QEnSHelper"], [["Test.QEnSHelper"]], [["Test.QEnSHelper"]], , , ],
        "opSEnS": [, , , , ["Test.SEnSHelper"], [["Test.SEnSHelper"]], [["Test.SEnSHelper"]], , , ],
        "opAIPrxS": [, , , , ["Test.AIPrxSHelper"], [["Test.AIPrxSHelper"]], [["Test.AIPrxSHelper"]], , , ],
        "opLIPrxS": [, , , , ["Test.LIPrxSHelper"], [["Test.LIPrxSHelper"]], [["Test.LIPrxSHelper"]], , , ],
        "opKIPrxS": [, , , , ["Test.KIPrxSHelper"], [["Test.KIPrxSHelper"]], [["Test.KIPrxSHelper"]], , , ],
        "opQIPrxS": [, , , , ["Test.QIPrxSHelper"], [["Test.QIPrxSHelper"]], [["Test.QIPrxSHelper"]], , , ],
        "opSIPrxS": [, , , , ["Test.SIPrxSHelper"], [["Test.SIPrxSHelper"]], [["Test.SIPrxSHelper"]], , , ],
        "opCustomIntS": [, , , , ["Test.CustomIntSHelper"], [["Test.CustomIntSHelper"]], [["Test.CustomIntSHelper"]], , , ],
        "opCustomCVS": [, , , , ["Test.CustomCVSHelper"], [["Test.CustomCVSHelper"]], [["Test.CustomCVSHelper"]], , true, true],
        "opCustomIntSS": [, , , , ["Test.CustomIntSSHelper"], [["Test.CustomIntSSHelper"]], [["Test.CustomIntSSHelper"]], , , ],
        "opCustomCVSS": [, , , , ["Test.CustomCVSSHelper"], [["Test.CustomCVSSHelper"]], [["Test.CustomCVSSHelper"]], , true, true],
        "opSerialSmallCSharp": [, , , , ["Test.SerialSmallHelper"], [["Test.SerialSmallHelper"]], [["Test.SerialSmallHelper"]], , , ],
        "opSerialLargeCSharp": [, , , , ["Test.SerialLargeHelper"], [["Test.SerialLargeHelper"]], [["Test.SerialLargeHelper"]], , , ],
        "opSerialStructCSharp": [, , , , ["Test.SerialStructHelper"], [["Test.SerialStructHelper"]], [["Test.SerialStructHelper"]], , , ]
    });

    Slice.defineSequence(Test, "SLSHelper", "Test.SerialLargeHelper", false);

    Slice.defineSequence(Test, "SLSSHelper", "Test.SLSHelper", false);

    Slice.defineDictionary(Test, "SLD", "SLDHelper", "Ice.IntHelper", "Test.SerialLargeHelper", false, undefined, undefined, Ice.ArrayUtil.equals);

    Slice.defineDictionary(Test, "SLSD", "SLSDHelper", "Ice.IntHelper", "Test.SLSHelper", false, undefined, undefined, Ice.ArrayUtil.equals);

    Test.Foo = class
    {
        constructor(SLmem = null, SLSmem = null)
        {
            this.SLmem = SLmem;
            this.SLSmem = SLSmem;
        }

        _write(ostr)
        {
            Test.SerialLargeHelper.write(ostr, this.SLmem);
            Test.SLSHelper.write(ostr, this.SLSmem);
        }

        _read(istr)
        {
            this.SLmem = Test.SerialLargeHelper.read(istr);
            this.SLSmem = Test.SLSHelper.read(istr);
        }

        static get minWireSize()
        {
            return  2;
        }
    };

    Slice.defineStruct(Test.Foo, true, true);

    Test.Bar = class extends Ice.UserException
    {
        constructor(SLmem = null, SLSmem = null, _cause = "")
        {
            super(_cause);
            this.SLmem = SLmem;
            this.SLSmem = SLSmem;
        }

        static get _parent()
        {
            return Ice.UserException;
        }

        static get _id()
        {
            return "::Test::Bar";
        }

        _mostDerivedType()
        {
            return Test.Bar;
        }

        _writeMemberImpl(ostr)
        {
            Test.SerialLargeHelper.write(ostr, this.SLmem);
            Test.SLSHelper.write(ostr, this.SLSmem);
        }

        _readMemberImpl(istr)
        {
            this.SLmem = Test.SerialLargeHelper.read(istr);
            this.SLSmem = Test.SLSHelper.read(istr);
        }
    };

    const iceC_Test_Baz_ids = [
        "::Ice::Object",
        "::Test::Baz"
    ];

    Test.Baz = class extends Ice.Value
    {
        constructor(SLmem = null, SLSmem = null)
        {
            super();
            this.SLmem = SLmem;
            this.SLSmem = SLSmem;
        }

        _iceWriteMemberImpl(ostr)
        {
            Test.SerialLargeHelper.write(ostr, this.SLmem);
            Test.SLSHelper.write(ostr, this.SLSmem);
        }

        _iceReadMemberImpl(istr)
        {
            this.SLmem = Test.SerialLargeHelper.read(istr);
            this.SLSmem = Test.SLSHelper.read(istr);
        }
    };

    Slice.defineValue(Test.Baz, iceC_Test_Baz_ids[1], false);
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
