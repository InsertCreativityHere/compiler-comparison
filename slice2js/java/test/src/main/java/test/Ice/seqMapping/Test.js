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
        "opSerialSmallJava": [, , , , ["Test.SerialSmallHelper"], [["Test.SerialSmallHelper"]], [["Test.SerialSmallHelper"]], , , ],
        "opSerialLargeJava": [, , , , ["Test.SerialLargeHelper"], [["Test.SerialLargeHelper"]], [["Test.SerialLargeHelper"]], , , ],
        "opSerialStructJava": [, , , , ["Test.SerialStructHelper"], [["Test.SerialStructHelper"]], [["Test.SerialStructHelper"]], , , ]
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
