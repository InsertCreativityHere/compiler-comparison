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
        constructor(str = "")
        {
            this.str = str;
        }

        _write(ostr)
        {
            ostr.writeString(this.str);
        }

        _read(istr)
        {
            this.str = istr.readString();
        }

        static get minWireSize()
        {
            return  1;
        }
    };

    Slice.defineStruct(Test.S, true, true);

    Test.Base = class extends Ice.Value
    {
        constructor(theS = new Test.S(), str = "")
        {
            super();
            this.theS = theS;
            this.str = str;
        }

        _iceWriteMemberImpl(ostr)
        {
            Test.S.write(ostr, this.theS);
            ostr.writeString(this.str);
        }

        _iceReadMemberImpl(istr)
        {
            this.theS = Test.S.read(istr, this.theS);
            this.str = istr.readString();
        }
    };

    Slice.defineValue(Test.Base, "::Test::Base");

    Test.A = class extends Ice.Value
    {
        constructor(theB = null, theC = null, preMarshalInvoked = false, postUnmarshalInvoked = false)
        {
            super();
            this.theB = theB;
            this.theC = theC;
            this.preMarshalInvoked = preMarshalInvoked;
            this.postUnmarshalInvoked = postUnmarshalInvoked;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.theB);
            ostr.writeValue(this.theC);
            ostr.writeBool(this.preMarshalInvoked);
            ostr.writeBool(this.postUnmarshalInvoked);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.theB = obj, Test.B);
            istr.readValue(obj => this.theC = obj, Test.C);
            this.preMarshalInvoked = istr.readBool();
            this.postUnmarshalInvoked = istr.readBool();
        }
    };

    Slice.defineValue(Test.A, "::Test::A");

    Test.B = class extends Test.A
    {
        constructor(theB, theC, preMarshalInvoked, postUnmarshalInvoked, theA = null)
        {
            super(theB, theC, preMarshalInvoked, postUnmarshalInvoked);
            this.theA = theA;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.theA);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.theA = obj, Test.A);
        }
    };

    Slice.defineValue(Test.B, "::Test::B");

    Test.C = class extends Ice.Value
    {
        constructor(theB = null, preMarshalInvoked = false, postUnmarshalInvoked = false)
        {
            super();
            this.theB = theB;
            this.preMarshalInvoked = preMarshalInvoked;
            this.postUnmarshalInvoked = postUnmarshalInvoked;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.theB);
            ostr.writeBool(this.preMarshalInvoked);
            ostr.writeBool(this.postUnmarshalInvoked);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.theB = obj, Test.B);
            this.preMarshalInvoked = istr.readBool();
            this.postUnmarshalInvoked = istr.readBool();
        }
    };

    Slice.defineValue(Test.C, "::Test::C");

    Test.D = class extends Ice.Value
    {
        constructor(theA = null, theB = null, theC = null, preMarshalInvoked = false, postUnmarshalInvoked = false)
        {
            super();
            this.theA = theA;
            this.theB = theB;
            this.theC = theC;
            this.preMarshalInvoked = preMarshalInvoked;
            this.postUnmarshalInvoked = postUnmarshalInvoked;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.theA);
            ostr.writeValue(this.theB);
            ostr.writeValue(this.theC);
            ostr.writeBool(this.preMarshalInvoked);
            ostr.writeBool(this.postUnmarshalInvoked);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.theA = obj, Test.A);
            istr.readValue(obj => this.theB = obj, Test.B);
            istr.readValue(obj => this.theC = obj, Test.C);
            this.preMarshalInvoked = istr.readBool();
            this.postUnmarshalInvoked = istr.readBool();
        }
    };

    Slice.defineValue(Test.D, "::Test::D");

    Test.E = class extends Ice.Value
    {
        constructor(i = 0, s = "")
        {
            super();
            this.i = i;
            this.s = s;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.i);
            ostr.writeString(this.s);
        }

        _iceReadMemberImpl(istr)
        {
            this.i = istr.readInt();
            this.s = istr.readString();
        }
    };

    Slice.defineValue(Test.E, "::Test::E");

    Test.F = class extends Ice.Value
    {
        constructor(e1 = null, e2 = null)
        {
            super();
            this.e1 = e1;
            this.e2 = e2;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.e1);
            ostr.writeValue(this.e2);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.e1 = obj, Test.E);
            istr.readValue(obj => this.e2 = obj, Test.E);
        }
    };

    Slice.defineValue(Test.F, "::Test::F");

    Test.G = class extends Test.Base
    {
        constructor(theS, str)
        {
            super(theS, str);
        }
    };

    Slice.defineValue(Test.G, "::Test::G");

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
        "doI": [, , , , , , , , ]
    });

    const iceC_Test_J_ids = [
        "::Ice::Object",
        "::Test::I",
        "::Test::J"
    ];

    Test.J = class extends Ice.Object
    {
        static get _iceImplements()
        {
            return [
                Test.I
            ];
        }
    };

    Test.JPrx = class extends Ice.ObjectPrx
    {
        static get _implements()
        {
            return [
                Test.IPrx];
        }
    };

    Slice.defineOperations(Test.J, Test.JPrx, iceC_Test_J_ids, "::Test::J",
    {
        "doJ": [, , , , , , , , ]
    });

    Slice.defineSequence(Test, "BaseSeqHelper", "Ice.ObjectHelper", false, "Test.Base");

    Test.Compact = class extends Ice.Value
    {
    };

    Slice.defineValue(Test.Compact, "::Test::Compact", 1);

    Object.defineProperty(Test, 'CompactExtId', {
        value: 789
    });

    Test.CompactExt = class extends Test.Compact
    {
    };

    Slice.defineValue(Test.CompactExt, "::Test::CompactExt", 789);

    Test.A1 = class extends Ice.Value
    {
        constructor(name = "")
        {
            super();
            this.name = name;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeString(this.name);
        }

        _iceReadMemberImpl(istr)
        {
            this.name = istr.readString();
        }
    };

    Slice.defineValue(Test.A1, "::Test::A1");

    Test.B1 = class extends Ice.Value
    {
        constructor(a1 = null, a2 = null)
        {
            super();
            this.a1 = a1;
            this.a2 = a2;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.a1);
            ostr.writeValue(this.a2);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.a1 = obj, Test.A1);
            istr.readValue(obj => this.a2 = obj, Test.A1);
        }
    };

    Slice.defineValue(Test.B1, "::Test::B1");

    Test.D1 = class extends Test.B1
    {
        constructor(a1, a2, a3 = null, a4 = null)
        {
            super(a1, a2);
            this.a3 = a3;
            this.a4 = a4;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.a3);
            ostr.writeValue(this.a4);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.a3 = obj, Test.A1);
            istr.readValue(obj => this.a4 = obj, Test.A1);
        }
    };

    Slice.defineValue(Test.D1, "::Test::D1");

    Test.EBase = class extends Ice.UserException
    {
        constructor(a1 = null, a2 = null, _cause = "")
        {
            super(_cause);
            this.a1 = a1;
            this.a2 = a2;
        }

        static get _parent()
        {
            return Ice.UserException;
        }

        static get _id()
        {
            return "::Test::EBase";
        }

        _mostDerivedType()
        {
            return Test.EBase;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeValue(this.a1);
            ostr.writeValue(this.a2);
        }

        _readMemberImpl(istr)
        {
            istr.readValue(obj => this.a1 = obj, Test.A1);
            istr.readValue(obj => this.a2 = obj, Test.A1);
        }

        _usesClasses()
        {
            return true;
        }
    };

    Test.EDerived = class extends Test.EBase
    {
        constructor(a1, a2, a3 = null, a4 = null, _cause = "")
        {
            super(a1, a2, _cause);
            this.a3 = a3;
            this.a4 = a4;
        }

        static get _parent()
        {
            return Test.EBase;
        }

        static get _id()
        {
            return "::Test::EDerived";
        }

        _mostDerivedType()
        {
            return Test.EDerived;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeValue(this.a3);
            ostr.writeValue(this.a4);
        }

        _readMemberImpl(istr)
        {
            istr.readValue(obj => this.a3 = obj, Test.A1);
            istr.readValue(obj => this.a4 = obj, Test.A1);
        }
    };

    Test.Inner = _ModuleRegistry.module("Test.Inner");

    Test.Inner.A = class extends Ice.Value
    {
        constructor(theA = null)
        {
            super();
            this.theA = theA;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.theA);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.theA = obj, Test.A);
        }
    };

    Slice.defineValue(Test.Inner.A, "::Test::Inner::A");

    Test.Inner.Ex = class extends Ice.UserException
    {
        constructor(reason = "", _cause = "")
        {
            super(_cause);
            this.reason = reason;
        }

        static get _parent()
        {
            return Ice.UserException;
        }

        static get _id()
        {
            return "::Test::Inner::Ex";
        }

        _mostDerivedType()
        {
            return Test.Inner.Ex;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeString(this.reason);
        }

        _readMemberImpl(istr)
        {
            this.reason = istr.readString();
        }
    };

    Test.Inner.Sub = _ModuleRegistry.module("Test.Inner.Sub");

    Test.Inner.Sub.A = class extends Ice.Value
    {
        constructor(theA = null)
        {
            super();
            this.theA = theA;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.theA);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.theA = obj, Test.Inner.A);
        }
    };

    Slice.defineValue(Test.Inner.Sub.A, "::Test::Inner::Sub::A");

    Test.Inner.Sub.Ex = class extends Ice.UserException
    {
        constructor(reason = "", _cause = "")
        {
            super(_cause);
            this.reason = reason;
        }

        static get _parent()
        {
            return Ice.UserException;
        }

        static get _id()
        {
            return "::Test::Inner::Sub::Ex";
        }

        _mostDerivedType()
        {
            return Test.Inner.Sub.Ex;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeString(this.reason);
        }

        _readMemberImpl(istr)
        {
            this.reason = istr.readString();
        }
    };

    Test.Recursive = class extends Ice.Value
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
            istr.readValue(obj => this.v = obj, Test.Recursive);
        }
    };

    Slice.defineValue(Test.Recursive, "::Test::Recursive");

    Test.K = class extends Ice.Value
    {
        constructor(value = null)
        {
            super();
            this.value = value;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.value);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.value = obj, Ice.Value);
        }
    };

    Slice.defineValue(Test.K, "::Test::K");

    Test.L = class extends Ice.Value
    {
        constructor(data = "")
        {
            super();
            this.data = data;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeString(this.data);
        }

        _iceReadMemberImpl(istr)
        {
            this.data = istr.readString();
        }
    };

    Slice.defineValue(Test.L, "::Test::L");

    Slice.defineSequence(Test, "ValueSeqHelper", "Ice.ObjectHelper", false, "Ice.Value");

    Slice.defineDictionary(Test, "ValueMap", "ValueMapHelper", "Ice.StringHelper", "Ice.ObjectHelper", false, undefined, "Ice.Value");

    Test.StructKey = class
    {
        constructor(i = 0, s = "")
        {
            this.i = i;
            this.s = s;
        }

        _write(ostr)
        {
            ostr.writeInt(this.i);
            ostr.writeString(this.s);
        }

        _read(istr)
        {
            this.i = istr.readInt();
            this.s = istr.readString();
        }

        static get minWireSize()
        {
            return  5;
        }
    };

    Slice.defineStruct(Test.StructKey, true, true);

    Slice.defineDictionary(Test, "LMap", "LMapHelper", "Test.StructKey", "Ice.ObjectHelper", false, Ice.HashMap.compareEquals, "Test.L");

    Test.M = class extends Ice.Value
    {
        constructor(v = null)
        {
            super();
            this.v = v;
        }

        _iceWriteMemberImpl(ostr)
        {
            Test.LMapHelper.write(ostr, this.v);
        }

        _iceReadMemberImpl(istr)
        {
            this.v = Test.LMapHelper.read(istr);
        }
    };

    Slice.defineValue(Test.M, "::Test::M");

    Test.F3 = class extends Ice.Value
    {
        constructor(f1 = null, f2 = null)
        {
            super();
            this.f1 = f1;
            this.f2 = f2;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.f1);
            Test.F2Prx.write(ostr, this.f2);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.f1 = obj, Test.F1);
            this.f2 = Test.F2Prx.read(istr, this.f2);
        }
    };

    Slice.defineValue(Test.F3, "::Test::F3");

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

    Slice.defineOperations(Test.Initial, Test.InitialPrx, iceC_Test_Initial_ids, "::Test::Initial",
    {
        "shutdown": [, , , , , , , , ],
        "getB1": [, , , ["Test.B", true], , , , , true],
        "getB2": [, , , ["Test.B", true], , , , , true],
        "getC": [, , , ["Test.C", true], , , , , true],
        "getD": [, , , ["Test.D", true], , , , , true],
        "getE": [, , , ["Test.E", true], , , , , true],
        "getF": [, , , ["Test.F", true], , , , , true],
        "setRecursive": [, , , , [["Test.Recursive", true]], , , true, ],
        "supportsClassGraphDepthMax": [, , , [1], , , , , ],
        "setCycle": [, , , , [["Test.Recursive", true]], , , true, ],
        "acceptsClassCycles": [, , , [1], , , , , ],
        "getMB": [, , , ["Test.B", true], , , , , true],
        "getAMDMB": [, , , ["Test.B", true], , , , , true],
        "getAll": [, , , , , [["Test.B", true], ["Test.B", true], ["Test.C", true], ["Test.D", true]], , , true],
        "getK": [, , , ["Test.K", true], , , , , true],
        "opValue": [, , , [10, true], [[10, true]], [[10, true]], , true, true],
        "opValueSeq": [, , , ["Test.ValueSeqHelper"], [["Test.ValueSeqHelper"]], [["Test.ValueSeqHelper"]], , true, true],
        "opValueMap": [, , , ["Test.ValueMapHelper"], [["Test.ValueMapHelper"]], [["Test.ValueMapHelper"]], , true, true],
        "getD1": [, , , ["Test.D1", true], [["Test.D1", true]], , , true, true],
        "throwEDerived": [, , , , , ,
        [
            Test.EDerived
        ], , ],
        "setG": [, , , , [["Test.G", true]], , , true, ],
        "opBaseSeq": [, , , ["Test.BaseSeqHelper"], [["Test.BaseSeqHelper"]], [["Test.BaseSeqHelper"]], , true, true],
        "getCompact": [, , , ["Test.Compact", true], , , , , true],
        "getInnerA": [, , , ["Test.Inner.A", true], , , , , true],
        "getInnerSubA": [, , , ["Test.Inner.Sub.A", true], , , , , true],
        "throwInnerEx": [, , , , , ,
        [
            Test.Inner.Ex
        ], , ],
        "throwInnerSubEx": [, , , , , ,
        [
            Test.Inner.Sub.Ex
        ], , ],
        "opM": [, , , ["Test.M", true], [["Test.M", true]], [["Test.M", true]], , true, true],
        "opF1": [, , , ["Test.F1", true], [["Test.F1", true]], [["Test.F1", true]], , true, true],
        "opF2": [, , , ["Test.F2Prx"], [["Test.F2Prx"]], [["Test.F2Prx"]], , , ],
        "opF3": [, , , ["Test.F3", true], [["Test.F3", true]], [["Test.F3", true]], , true, true],
        "hasF3": [, , , [1], , , , , ]
    });

    Test.Empty = class extends Ice.Value
    {
    };

    Slice.defineValue(Test.Empty, "::Test::Empty");

    Test.AlsoEmpty = class extends Ice.Value
    {
    };

    Slice.defineValue(Test.AlsoEmpty, "::Test::AlsoEmpty");

    const iceC_Test_UnexpectedObjectExceptionTest_ids = [
        "::Ice::Object",
        "::Test::UnexpectedObjectExceptionTest"
    ];

    Test.UnexpectedObjectExceptionTest = class extends Ice.Object
    {
    };

    Test.UnexpectedObjectExceptionTestPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.UnexpectedObjectExceptionTest, Test.UnexpectedObjectExceptionTestPrx, iceC_Test_UnexpectedObjectExceptionTest_ids, "::Test::UnexpectedObjectExceptionTest",
    {
        "op": [, , , ["Test.Empty", true], , , , , true]
    });

    Test.COneMember = class extends Ice.Value
    {
        constructor(e = null)
        {
            super();
            this.e = e;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.e);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.e = obj, Test.Empty);
        }
    };

    Slice.defineValue(Test.COneMember, "::Test::COneMember");

    Test.CTwoMembers = class extends Ice.Value
    {
        constructor(e1 = null, e2 = null)
        {
            super();
            this.e1 = e1;
            this.e2 = e2;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.e1);
            ostr.writeValue(this.e2);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.e1 = obj, Test.Empty);
            istr.readValue(obj => this.e2 = obj, Test.Empty);
        }
    };

    Slice.defineValue(Test.CTwoMembers, "::Test::CTwoMembers");

    Test.EOneMember = class extends Ice.UserException
    {
        constructor(e = null, _cause = "")
        {
            super(_cause);
            this.e = e;
        }

        static get _parent()
        {
            return Ice.UserException;
        }

        static get _id()
        {
            return "::Test::EOneMember";
        }

        _mostDerivedType()
        {
            return Test.EOneMember;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeValue(this.e);
        }

        _readMemberImpl(istr)
        {
            istr.readValue(obj => this.e = obj, Test.Empty);
        }

        _usesClasses()
        {
            return true;
        }
    };

    Test.ETwoMembers = class extends Ice.UserException
    {
        constructor(e1 = null, e2 = null, _cause = "")
        {
            super(_cause);
            this.e1 = e1;
            this.e2 = e2;
        }

        static get _parent()
        {
            return Ice.UserException;
        }

        static get _id()
        {
            return "::Test::ETwoMembers";
        }

        _mostDerivedType()
        {
            return Test.ETwoMembers;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeValue(this.e1);
            ostr.writeValue(this.e2);
        }

        _readMemberImpl(istr)
        {
            istr.readValue(obj => this.e1 = obj, Test.Empty);
            istr.readValue(obj => this.e2 = obj, Test.Empty);
        }

        _usesClasses()
        {
            return true;
        }
    };

    Test.SOneMember = class
    {
        constructor(e = null)
        {
            this.e = e;
        }

        _write(ostr)
        {
            ostr.writeValue(this.e);
        }

        _read(istr)
        {
            istr.readValue(obj => this.e = obj, Test.Empty);
        }

        static get minWireSize()
        {
            return  1;
        }
    };

    Slice.defineStruct(Test.SOneMember, false, true);

    Test.STwoMembers = class
    {
        constructor(e1 = null, e2 = null)
        {
            this.e1 = e1;
            this.e2 = e2;
        }

        _write(ostr)
        {
            ostr.writeValue(this.e1);
            ostr.writeValue(this.e2);
        }

        _read(istr)
        {
            istr.readValue(obj => this.e1 = obj, Test.Empty);
            istr.readValue(obj => this.e2 = obj, Test.Empty);
        }

        static get minWireSize()
        {
            return  2;
        }
    };

    Slice.defineStruct(Test.STwoMembers, false, true);

    Slice.defineDictionary(Test, "DOneMember", "DOneMemberHelper", "Ice.IntHelper", "Ice.ObjectHelper", false, undefined, "Test.COneMember");

    Slice.defineDictionary(Test, "DTwoMembers", "DTwoMembersHelper", "Ice.IntHelper", "Ice.ObjectHelper", false, undefined, "Test.CTwoMembers");

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
        "shutdown": [, , , , , , , , ]
    });
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
