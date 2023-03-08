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

    const iceC_Test_SBase_ids = [
        "::Ice::Object",
        "::Test::SBase"
    ];

    Test.SBase = class extends Ice.Value
    {
        constructor(sb = "")
        {
            super();
            this.sb = sb;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeString(this.sb);
        }

        _iceReadMemberImpl(istr)
        {
            this.sb = istr.readString();
        }
    };

    Slice.defineValue(Test.SBase, iceC_Test_SBase_ids[1], false);

    const iceC_Test_SBSKnownDerived_ids = [
        "::Ice::Object",
        "::Test::SBSKnownDerived",
        "::Test::SBase"
    ];

    Test.SBSKnownDerived = class extends Test.SBase
    {
        constructor(sb, sbskd = "")
        {
            super(sb);
            this.sbskd = sbskd;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeString(this.sbskd);
        }

        _iceReadMemberImpl(istr)
        {
            this.sbskd = istr.readString();
        }
    };

    Slice.defineValue(Test.SBSKnownDerived, iceC_Test_SBSKnownDerived_ids[1], false);

    const iceC_Test_B_ids = [
        "::Ice::Object",
        "::Test::B"
    ];

    Test.B = class extends Ice.Value
    {
        constructor(sb = "", pb = null)
        {
            super();
            this.sb = sb;
            this.pb = pb;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeString(this.sb);
            ostr.writeValue(this.pb);
        }

        _iceReadMemberImpl(istr)
        {
            this.sb = istr.readString();
            istr.readValue(obj => this.pb = obj, Test.B);
        }
    };

    Slice.defineValue(Test.B, iceC_Test_B_ids[1], false);

    const iceC_Test_D1_ids = [
        "::Ice::Object",
        "::Test::B",
        "::Test::D1"
    ];

    Test.D1 = class extends Test.B
    {
        constructor(sb, pb, sd1 = "", pd1 = null)
        {
            super(sb, pb);
            this.sd1 = sd1;
            this.pd1 = pd1;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeString(this.sd1);
            ostr.writeValue(this.pd1);
        }

        _iceReadMemberImpl(istr)
        {
            this.sd1 = istr.readString();
            istr.readValue(obj => this.pd1 = obj, Test.B);
        }
    };

    Slice.defineValue(Test.D1, iceC_Test_D1_ids[2], false);

    Slice.defineSequence(Test, "BSeqHelper", "Ice.ObjectHelper", false, "Test.B");

    const iceC_Test_SS1_ids = [
        "::Ice::Object",
        "::Test::SS1"
    ];

    Test.SS1 = class extends Ice.Value
    {
        constructor(s = null)
        {
            super();
            this.s = s;
        }

        _iceWriteMemberImpl(ostr)
        {
            Test.BSeqHelper.write(ostr, this.s);
        }

        _iceReadMemberImpl(istr)
        {
            this.s = Test.BSeqHelper.read(istr);
        }
    };

    Slice.defineValue(Test.SS1, iceC_Test_SS1_ids[1], false);

    const iceC_Test_SS2_ids = [
        "::Ice::Object",
        "::Test::SS2"
    ];

    Test.SS2 = class extends Ice.Value
    {
        constructor(s = null)
        {
            super();
            this.s = s;
        }

        _iceWriteMemberImpl(ostr)
        {
            Test.BSeqHelper.write(ostr, this.s);
        }

        _iceReadMemberImpl(istr)
        {
            this.s = Test.BSeqHelper.read(istr);
        }
    };

    Slice.defineValue(Test.SS2, iceC_Test_SS2_ids[1], false);

    Test.SS3 = class
    {
        constructor(c1 = null, c2 = null)
        {
            this.c1 = c1;
            this.c2 = c2;
        }

        _write(ostr)
        {
            ostr.writeValue(this.c1);
            ostr.writeValue(this.c2);
        }

        _read(istr)
        {
            istr.readValue(obj => this.c1 = obj, Test.SS1);
            istr.readValue(obj => this.c2 = obj, Test.SS2);
        }

        static get minWireSize()
        {
            return  2;
        }
    };

    Slice.defineStruct(Test.SS3, false, true);

    Slice.defineDictionary(Test, "BDict", "BDictHelper", "Ice.IntHelper", "Ice.ObjectHelper", false, undefined, "Test.B");

    Test.BaseException = class extends Ice.UserException
    {
        constructor(sbe = "", pb = null, _cause = "")
        {
            super(_cause);
            this.sbe = sbe;
            this.pb = pb;
        }

        static get _parent()
        {
            return Ice.UserException;
        }

        static get _id()
        {
            return "::Test::BaseException";
        }

        _mostDerivedType()
        {
            return Test.BaseException;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeString(this.sbe);
            ostr.writeValue(this.pb);
        }

        _readMemberImpl(istr)
        {
            this.sbe = istr.readString();
            istr.readValue(obj => this.pb = obj, Test.B);
        }

        _usesClasses()
        {
            return true;
        }
    };

    Test.DerivedException = class extends Test.BaseException
    {
        constructor(sbe, pb, sde = "", pd1 = null, _cause = "")
        {
            super(sbe, pb, _cause);
            this.sde = sde;
            this.pd1 = pd1;
        }

        static get _parent()
        {
            return Test.BaseException;
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
            ostr.writeString(this.sde);
            ostr.writeValue(this.pd1);
        }

        _readMemberImpl(istr)
        {
            this.sde = istr.readString();
            istr.readValue(obj => this.pd1 = obj, Test.D1);
        }
    };

    const iceC_Test_PBase_ids = [
        "::Ice::Object",
        "::Test::PBase"
    ];

    Test.PBase = class extends Ice.Value
    {
        constructor(pi = 0)
        {
            super();
            this.pi = pi;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.pi);
        }

        _iceReadMemberImpl(istr)
        {
            this.pi = istr.readInt();
        }
    };

    Slice.defineValue(Test.PBase, iceC_Test_PBase_ids[1], false);

    Slice.defineSequence(Test, "PBaseSeqHelper", "Ice.ObjectHelper", false, "Test.PBase");

    const iceC_Test_Preserved_ids = [
        "::Ice::Object",
        "::Test::PBase",
        "::Test::Preserved"
    ];

    Test.Preserved = class extends Test.PBase
    {
        constructor(pi, ps = "")
        {
            super(pi);
            this.ps = ps;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeString(this.ps);
        }

        _iceReadMemberImpl(istr)
        {
            this.ps = istr.readString();
        }
    };

    Slice.defineValue(Test.Preserved, iceC_Test_Preserved_ids[2], true);

    const iceC_Test_PDerived_ids = [
        "::Ice::Object",
        "::Test::PBase",
        "::Test::PDerived",
        "::Test::Preserved"
    ];

    Test.PDerived = class extends Test.Preserved
    {
        constructor(pi, ps, pb = null)
        {
            super(pi, ps);
            this.pb = pb;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.pb);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.pb = obj, Test.PBase);
        }
    };

    Slice.defineValue(Test.PDerived, iceC_Test_PDerived_ids[2], false);

    const iceC_Test_CompactPDerived_ids = [
        "::Ice::Object",
        "::Test::CompactPDerived",
        "::Test::PBase",
        "::Test::Preserved"
    ];

    Test.CompactPDerived = class extends Test.Preserved
    {
        constructor(pi, ps, pb = null)
        {
            super(pi, ps);
            this.pb = pb;
        }

        static get _iceCompactId()
        {
            return 56;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.pb);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.pb = obj, Test.PBase);
        }
    };

    Slice.defineValue(Test.CompactPDerived, iceC_Test_CompactPDerived_ids[1], false, 56);

    const iceC_Test_PNode_ids = [
        "::Ice::Object",
        "::Test::PNode"
    ];

    Test.PNode = class extends Ice.Value
    {
        constructor(next = null)
        {
            super();
            this.next = next;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.next);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.next = obj, Test.PNode);
        }
    };

    Slice.defineValue(Test.PNode, iceC_Test_PNode_ids[1], true);

    Test.PreservedException = class extends Ice.UserException
    {
        constructor(_cause = "")
        {
            super(_cause);
        }

        static get _parent()
        {
            return Ice.UserException;
        }

        static get _id()
        {
            return "::Test::PreservedException";
        }

        _mostDerivedType()
        {
            return Test.PreservedException;
        }
    };

    Slice.PreservedUserException(Test.PreservedException);

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

    Slice.defineOperations(Test.TestIntf, Test.TestIntfPrx, iceC_Test_TestIntf_ids, 1,
    {
        "SBaseAsObject": [, , , 2, [8, true], , , , , true],
        "SBaseAsSBase": [, , , 2, ["Test.SBase", true], , , , , true],
        "SBSKnownDerivedAsSBase": [, , , 2, ["Test.SBase", true], , , , , true],
        "SBSKnownDerivedAsSBSKnownDerived": [, , , 2, ["Test.SBSKnownDerived", true], , , , , true],
        "SBSUnknownDerivedAsSBase": [, , , 2, ["Test.SBase", true], , , , , true],
        "SBSUnknownDerivedAsSBaseCompact": [, , , 1, ["Test.SBase", true], , , , , true],
        "SUnknownAsObject": [, , , 2, [8, true], , , , , true],
        "checkSUnknown": [, , , 2, , [[8, true]], , , true, ],
        "oneElementCycle": [, , , 2, ["Test.B", true], , , , , true],
        "twoElementCycle": [, , , 2, ["Test.B", true], , , , , true],
        "D1AsB": [, , , 2, ["Test.B", true], , , , , true],
        "D1AsD1": [, , , 2, ["Test.D1", true], , , , , true],
        "D2AsB": [, , , 2, ["Test.B", true], , , , , true],
        "paramTest1": [, , , 2, , , [["Test.B", true], ["Test.B", true]], , , true],
        "paramTest2": [, , , 2, , , [["Test.B", true], ["Test.B", true]], , , true],
        "paramTest3": [, , , 2, ["Test.B", true], , [["Test.B", true], ["Test.B", true]], , , true],
        "paramTest4": [, , , 2, ["Test.B", true], , [["Test.B", true]], , , true],
        "returnTest1": [, , , 2, ["Test.B", true], , [["Test.B", true], ["Test.B", true]], , , true],
        "returnTest2": [, , , 2, ["Test.B", true], , [["Test.B", true], ["Test.B", true]], , , true],
        "returnTest3": [, , , 2, ["Test.B", true], [["Test.B", true], ["Test.B", true]], , , true, true],
        "sequenceTest": [, , , 2, [Test.SS3], [["Test.SS1", true], ["Test.SS2", true]], , , true, true],
        "dictionaryTest": [, , , 2, ["Test.BDictHelper"], [["Test.BDictHelper"]], [["Test.BDictHelper"]], , true, true],
        "exchangePBase": [, , , 2, ["Test.PBase", true], [["Test.PBase", true]], , , true, true],
        "PBSUnknownAsPreserved": [, , , 2, ["Test.Preserved", true], , , , , true],
        "checkPBSUnknown": [, , , 2, , [["Test.Preserved", true]], , , true, ],
        "PBSUnknownAsPreservedWithGraph": [, , , 2, ["Test.Preserved", true], , , , , true],
        "checkPBSUnknownWithGraph": [, , , 2, , [["Test.Preserved", true]], , , true, ],
        "PBSUnknown2AsPreservedWithGraph": [, , , 2, ["Test.Preserved", true], , , , , true],
        "checkPBSUnknown2WithGraph": [, , , 2, , [["Test.Preserved", true]], , , true, ],
        "exchangePNode": [, , , 2, ["Test.PNode", true], [["Test.PNode", true]], , , true, true],
        "throwBaseAsBase": [, , , 2, , , ,
        [
            Test.BaseException
        ], , ],
        "throwDerivedAsBase": [, , , 2, , , ,
        [
            Test.BaseException
        ], , ],
        "throwDerivedAsDerived": [, , , 2, , , ,
        [
            Test.DerivedException
        ], , ],
        "throwUnknownDerivedAsBase": [, , , 2, , , ,
        [
            Test.BaseException
        ], , ],
        "throwPreservedException": [, , , 2, , , ,
        [
            Test.PreservedException
        ], , ],
        "useForward": [, , , 2, , , [["Test.Forward", true]], , , true],
        "shutdown": [, , , 2, , , , , , ]
    });

    const iceC_Test_Hidden_ids = [
        "::Ice::Object",
        "::Test::Hidden"
    ];

    Test.Hidden = class extends Ice.Value
    {
        constructor(f = null)
        {
            super();
            this.f = f;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.f);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.f = obj, Test.Forward);
        }
    };

    Slice.defineValue(Test.Hidden, iceC_Test_Hidden_ids[1], false);

    const iceC_Test_Forward_ids = [
        "::Ice::Object",
        "::Test::Forward"
    ];

    Test.Forward = class extends Ice.Value
    {
        constructor(h = null)
        {
            super();
            this.h = h;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeValue(this.h);
        }

        _iceReadMemberImpl(istr)
        {
            istr.readValue(obj => this.h = obj, Test.Hidden);
        }
    };

    Slice.defineValue(Test.Forward, iceC_Test_Forward_ids[1], false);
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
