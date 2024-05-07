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

(function(module, require, exports)
{
    const Ice = require("ice").Ice;
    const _ModuleRegistry = Ice._ModuleRegistry;
    const Slice = Ice.Slice;

    let Test = _ModuleRegistry.module("Test");

    Test.S = class
    {
        constructor(v = 0)
        {
            this.v = v;
        }

        _write(ostr)
        {
            ostr.writeInt(this.v);
        }

        _read(istr)
        {
            this.v = istr.readInt();
        }

        static get minWireSize()
        {
            return  4;
        }
    };

    Slice.defineStruct(Test.S, true, false);

    Slice.defineDictionary(Test, "SMap", "SMapHelper", "Ice.StringHelper", "Test.S", false, undefined, undefined);

    Slice.defineSequence(Test, "SSeqHelper", "Test.S", true);

    Test.C = class extends Ice.Value
    {
        constructor(s = new Test.S())
        {
            super();
            this.s = s;
        }

        _iceWriteMemberImpl(ostr)
        {
            Test.S.write(ostr, this.s);
        }

        _iceReadMemberImpl(istr)
        {
            this.s = Test.S.read(istr, this.s);
        }
    };

    Slice.defineValue(Test.C, "::Test::C");

    Slice.defineDictionary(Test, "CMap", "CMapHelper", "Ice.StringHelper", "Ice.ObjectHelper", false, undefined, "Test.C");

    Slice.defineSequence(Test, "CSeqHelper", "Ice.ObjectHelper", false, "Test.C");

    Test.E1 = Slice.defineEnum([
        ['v1', 0], ['v2', 1], ['v3', 2]]);

    Test.S1 = class
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

    Slice.defineStruct(Test.S1, true, true);

    Slice.defineSequence(Test, "S1SeqHelper", "Test.S1", false);

    Slice.defineDictionary(Test, "S1Map", "S1MapHelper", "Ice.StringHelper", "Test.S1", false, undefined, undefined);

    Test.C1 = class extends Ice.Value
    {
        constructor(s = "")
        {
            super();
            this.s = s;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeString(this.s);
        }

        _iceReadMemberImpl(istr)
        {
            this.s = istr.readString();
        }
    };

    Slice.defineValue(Test.C1, "::Test::C1");

    Test.S2 = class
    {
        constructor(E1 = Test.E1.v1, S1 = new Test.S1(), C1 = null, S1Seq = null, S1Map = null)
        {
            this.E1 = E1;
            this.S1 = S1;
            this.C1 = C1;
            this.S1Seq = S1Seq;
            this.S1Map = S1Map;
        }

        _write(ostr)
        {
            Test.E1._write(ostr, this.E1);
            Test.S1.write(ostr, this.S1);
            ostr.writeValue(this.C1);
            Test.S1SeqHelper.write(ostr, this.S1Seq);
            Test.S1MapHelper.write(ostr, this.S1Map);
        }

        _read(istr)
        {
            this.E1 = Test.E1._read(istr);
            this.S1 = Test.S1.read(istr, this.S1);
            istr.readValue(obj => this.C1 = obj, Test.C1);
            this.S1Seq = Test.S1SeqHelper.read(istr);
            this.S1Map = Test.S1MapHelper.read(istr);
        }

        static get minWireSize()
        {
            return  5;
        }
    };

    Slice.defineStruct(Test.S2, false, true);

    Test.C2 = class extends Ice.Value
    {
        constructor(E1 = Test.E1.v1, S1 = new Test.S1(), C1 = null, S1Seq = null, S1Map = null)
        {
            super();
            this.E1 = E1;
            this.S1 = S1;
            this.C1 = C1;
            this.S1Seq = S1Seq;
            this.S1Map = S1Map;
        }

        _iceWriteMemberImpl(ostr)
        {
            Test.E1._write(ostr, this.E1);
            Test.S1.write(ostr, this.S1);
            ostr.writeValue(this.C1);
            Test.S1SeqHelper.write(ostr, this.S1Seq);
            Test.S1MapHelper.write(ostr, this.S1Map);
        }

        _iceReadMemberImpl(istr)
        {
            this.E1 = Test.E1._read(istr);
            this.S1 = Test.S1.read(istr, this.S1);
            istr.readValue(obj => this.C1 = obj, Test.C1);
            this.S1Seq = Test.S1SeqHelper.read(istr);
            this.S1Map = Test.S1MapHelper.read(istr);
        }
    };

    Slice.defineValue(Test.C2, "::Test::C2");

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

    Slice.defineOperations(Test.I, Test.IPrx, iceC_Test_I_ids, "::Test::I",
    {
        "opS": [, , , [Test.S], [[Test.S]], [[Test.S]], , , ],
        "opSSeq": [, , , ["Test.SSeqHelper"], [["Test.SSeqHelper"]], [["Test.SSeqHelper"]], , , ],
        "opSMap": [, , , ["Test.SMapHelper"], [["Test.SMapHelper"]], [["Test.SMapHelper"]], , , ],
        "opC": [, , , ["Test.C", true], [["Test.C", true]], [["Test.C", true]], , true, true],
        "opCSeq": [, , , ["Test.CSeqHelper"], [["Test.CSeqHelper"]], [["Test.CSeqHelper"]], , true, true],
        "opCMap": [, , , ["Test.CMapHelper"], [["Test.CMapHelper"]], [["Test.CMapHelper"]], , true, true],
        "opE1": [, , , [Test.E1._helper], [[Test.E1._helper]], , , , ],
        "opS1": [, , , [Test.S1], [[Test.S1]], , , , ],
        "opC1": [, , , ["Test.C1", true], [["Test.C1", true]], , , true, true],
        "opS1Seq": [, , , ["Test.S1SeqHelper"], [["Test.S1SeqHelper"]], , , , ],
        "opS1Map": [, , , ["Test.S1MapHelper"], [["Test.S1MapHelper"]], , , , ],
        "shutdown": [, , , , , , , , ]
    });

    Slice.defineDictionary(Test, "IMap", "IMapHelper", "Ice.StringHelper", "Test.IPrx", false, undefined, undefined);

    Slice.defineSequence(Test, "ISeqHelper", "Test.IPrx", false);

    Test.Inner = _ModuleRegistry.module("Test.Inner");

    Test.Inner.S = class
    {
        constructor(v = 0)
        {
            this.v = v;
        }

        _write(ostr)
        {
            ostr.writeInt(this.v);
        }

        _read(istr)
        {
            this.v = istr.readInt();
        }

        static get minWireSize()
        {
            return  4;
        }
    };

    Slice.defineStruct(Test.Inner.S, true, false);

    Test.Inner.Inner2 = _ModuleRegistry.module("Test.Inner.Inner2");

    Test.Inner.Inner2.S = class
    {
        constructor(v = 0)
        {
            this.v = v;
        }

        _write(ostr)
        {
            ostr.writeInt(this.v);
        }

        _read(istr)
        {
            this.v = istr.readInt();
        }

        static get minWireSize()
        {
            return  4;
        }
    };

    Slice.defineStruct(Test.Inner.Inner2.S, true, false);

    Slice.defineDictionary(Test.Inner.Inner2, "SMap", "SMapHelper", "Ice.StringHelper", "Test.Inner.Inner2.S", false, undefined, undefined);

    Slice.defineSequence(Test.Inner.Inner2, "SSeqHelper", "Test.Inner.Inner2.S", true);

    Test.Inner.Inner2.C = class extends Ice.Value
    {
        constructor(s = new Test.Inner.Inner2.S())
        {
            super();
            this.s = s;
        }

        _iceWriteMemberImpl(ostr)
        {
            Test.Inner.Inner2.S.write(ostr, this.s);
        }

        _iceReadMemberImpl(istr)
        {
            this.s = Test.Inner.Inner2.S.read(istr, this.s);
        }
    };

    Slice.defineValue(Test.Inner.Inner2.C, "::Test::Inner::Inner2::C");

    Slice.defineDictionary(Test.Inner.Inner2, "CMap", "CMapHelper", "Ice.StringHelper", "Ice.ObjectHelper", false, undefined, "Test.Inner.Inner2.C");

    Slice.defineSequence(Test.Inner.Inner2, "CSeqHelper", "Ice.ObjectHelper", false, "Test.Inner.Inner2.C");

    const iceC_Test_Inner_Inner2_I_ids = [
        "::Ice::Object",
        "::Test::Inner::Inner2::I"
    ];

    Test.Inner.Inner2.I = class extends Ice.Object
    {
    };

    Test.Inner.Inner2.IPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.Inner.Inner2.I, Test.Inner.Inner2.IPrx, iceC_Test_Inner_Inner2_I_ids, "::Test::Inner::Inner2::I",
    {
        "opS": [, , , [Test.Inner.Inner2.S], [[Test.Inner.Inner2.S]], [[Test.Inner.Inner2.S]], , , ],
        "opSSeq": [, , , ["Test.Inner.Inner2.SSeqHelper"], [["Test.Inner.Inner2.SSeqHelper"]], [["Test.Inner.Inner2.SSeqHelper"]], , , ],
        "opSMap": [, , , ["Test.Inner.Inner2.SMapHelper"], [["Test.Inner.Inner2.SMapHelper"]], [["Test.Inner.Inner2.SMapHelper"]], , , ],
        "opC": [, , , ["Test.Inner.Inner2.C", true], [["Test.Inner.Inner2.C", true]], [["Test.Inner.Inner2.C", true]], , true, true],
        "opCSeq": [, , , ["Test.Inner.Inner2.CSeqHelper"], [["Test.Inner.Inner2.CSeqHelper"]], [["Test.Inner.Inner2.CSeqHelper"]], , true, true],
        "opCMap": [, , , ["Test.Inner.Inner2.CMapHelper"], [["Test.Inner.Inner2.CMapHelper"]], [["Test.Inner.Inner2.CMapHelper"]], , true, true],
        "shutdown": [, , , , , , , , ]
    });

    Slice.defineDictionary(Test.Inner.Inner2, "IMap", "IMapHelper", "Ice.StringHelper", "Test.Inner.Inner2.IPrx", false, undefined, undefined);

    Slice.defineSequence(Test.Inner.Inner2, "ISeqHelper", "Test.Inner.Inner2.IPrx", false);

    Test.Inner.C = class extends Ice.Value
    {
        constructor(s = new Test.Inner.S())
        {
            super();
            this.s = s;
        }

        _iceWriteMemberImpl(ostr)
        {
            Test.Inner.S.write(ostr, this.s);
        }

        _iceReadMemberImpl(istr)
        {
            this.s = Test.Inner.S.read(istr, this.s);
        }
    };

    Slice.defineValue(Test.Inner.C, "::Test::Inner::C");

    Slice.defineSequence(Test.Inner, "SSeqHelper", "Test.Inner.Inner2.S", true);

    Slice.defineDictionary(Test.Inner, "SMap", "SMapHelper", "Ice.StringHelper", "Test.Inner.Inner2.S", false, undefined, undefined);

    Slice.defineDictionary(Test.Inner, "CMap", "CMapHelper", "Ice.StringHelper", "Ice.ObjectHelper", false, undefined, "Test.Inner.Inner2.C");

    Slice.defineSequence(Test.Inner, "CSeqHelper", "Ice.ObjectHelper", false, "Test.Inner.Inner2.C");

    const iceC_Test_Inner_I_ids = [
        "::Ice::Object",
        "::Test::Inner::I"
    ];

    Test.Inner.I = class extends Ice.Object
    {
    };

    Test.Inner.IPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.Inner.I, Test.Inner.IPrx, iceC_Test_Inner_I_ids, "::Test::Inner::I",
    {
        "opS": [, , , [Test.Inner.Inner2.S], [[Test.Inner.Inner2.S]], [[Test.Inner.Inner2.S]], , , ],
        "opSSeq": [, , , ["Test.Inner.Inner2.SSeqHelper"], [["Test.Inner.Inner2.SSeqHelper"]], [["Test.Inner.Inner2.SSeqHelper"]], , , ],
        "opSMap": [, , , ["Test.Inner.Inner2.SMapHelper"], [["Test.Inner.Inner2.SMapHelper"]], [["Test.Inner.Inner2.SMapHelper"]], , , ],
        "opC": [, , , ["Test.Inner.Inner2.C", true], [["Test.Inner.Inner2.C", true]], [["Test.Inner.Inner2.C", true]], , true, true],
        "opCSeq": [, , , ["Test.Inner.Inner2.CSeqHelper"], [["Test.Inner.Inner2.CSeqHelper"]], [["Test.Inner.Inner2.CSeqHelper"]], , true, true],
        "opCMap": [, , , ["Test.Inner.Inner2.CMapHelper"], [["Test.Inner.Inner2.CMapHelper"]], [["Test.Inner.Inner2.CMapHelper"]], , true, true],
        "shutdown": [, , , , , , , , ]
    });

    Slice.defineDictionary(Test.Inner, "IMap", "IMapHelper", "Ice.StringHelper", "Test.Inner.IPrx", false, undefined, undefined);

    Slice.defineSequence(Test.Inner, "ISeqHelper", "Test.Inner.IPrx", false);

    let Inner = _ModuleRegistry.module("Inner");

    Inner.Test = _ModuleRegistry.module("Inner.Test");

    Inner.Test.Inner2 = _ModuleRegistry.module("Inner.Test.Inner2");

    const iceC_Inner_Test_Inner2_I_ids = [
        "::Ice::Object",
        "::Inner::Test::Inner2::I"
    ];

    Inner.Test.Inner2.I = class extends Ice.Object
    {
    };

    Inner.Test.Inner2.IPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Inner.Test.Inner2.I, Inner.Test.Inner2.IPrx, iceC_Inner_Test_Inner2_I_ids, "::Inner::Test::Inner2::I",
    {
        "opS": [, , , [Test.S], [[Test.S]], [[Test.S]], , , ],
        "opSSeq": [, , , ["Test.SSeqHelper"], [["Test.SSeqHelper"]], [["Test.SSeqHelper"]], , , ],
        "opSMap": [, , , ["Test.SMapHelper"], [["Test.SMapHelper"]], [["Test.SMapHelper"]], , , ],
        "opC": [, , , ["Test.C", true], [["Test.C", true]], [["Test.C", true]], , true, true],
        "opCSeq": [, , , ["Test.CSeqHelper"], [["Test.CSeqHelper"]], [["Test.CSeqHelper"]], , true, true],
        "opCMap": [, , , ["Test.CMapHelper"], [["Test.CMapHelper"]], [["Test.CMapHelper"]], , true, true],
        "shutdown": [, , , , , , , , ]
    });
    exports.Test = Test;
    exports.Inner = Inner;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
