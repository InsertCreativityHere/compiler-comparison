//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ClientPrivate.ice'
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

    Test.Base = class extends Ice.UserException
    {
        constructor(b = "", _cause = "")
        {
            super(_cause);
            this.b = b;
        }

        static get _parent()
        {
            return Ice.UserException;
        }

        static get _id()
        {
            return "::Test::Base";
        }

        _mostDerivedType()
        {
            return Test.Base;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeString(this.b);
        }

        _readMemberImpl(istr)
        {
            this.b = istr.readString();
        }
    };

    Test.KnownDerived = class extends Test.Base
    {
        constructor(b, kd = "", _cause = "")
        {
            super(b, _cause);
            this.kd = kd;
        }

        static get _parent()
        {
            return Test.Base;
        }

        static get _id()
        {
            return "::Test::KnownDerived";
        }

        _mostDerivedType()
        {
            return Test.KnownDerived;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeString(this.kd);
        }

        _readMemberImpl(istr)
        {
            this.kd = istr.readString();
        }
    };

    Test.KnownIntermediate = class extends Test.Base
    {
        constructor(b, ki = "", _cause = "")
        {
            super(b, _cause);
            this.ki = ki;
        }

        static get _parent()
        {
            return Test.Base;
        }

        static get _id()
        {
            return "::Test::KnownIntermediate";
        }

        _mostDerivedType()
        {
            return Test.KnownIntermediate;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeString(this.ki);
        }

        _readMemberImpl(istr)
        {
            this.ki = istr.readString();
        }
    };

    Test.KnownMostDerived = class extends Test.KnownIntermediate
    {
        constructor(b, ki, kmd = "", _cause = "")
        {
            super(b, ki, _cause);
            this.kmd = kmd;
        }

        static get _parent()
        {
            return Test.KnownIntermediate;
        }

        static get _id()
        {
            return "::Test::KnownMostDerived";
        }

        _mostDerivedType()
        {
            return Test.KnownMostDerived;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeString(this.kmd);
        }

        _readMemberImpl(istr)
        {
            this.kmd = istr.readString();
        }
    };

    Test.KnownPreserved = class extends Test.Base
    {
        constructor(b, kp = "", _cause = "")
        {
            super(b, _cause);
            this.kp = kp;
        }

        static get _parent()
        {
            return Test.Base;
        }

        static get _id()
        {
            return "::Test::KnownPreserved";
        }

        _mostDerivedType()
        {
            return Test.KnownPreserved;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeString(this.kp);
        }

        _readMemberImpl(istr)
        {
            this.kp = istr.readString();
        }
    };

    Test.KnownPreservedDerived = class extends Test.KnownPreserved
    {
        constructor(b, kp, kpd = "", _cause = "")
        {
            super(b, kp, _cause);
            this.kpd = kpd;
        }

        static get _parent()
        {
            return Test.KnownPreserved;
        }

        static get _id()
        {
            return "::Test::KnownPreservedDerived";
        }

        _mostDerivedType()
        {
            return Test.KnownPreservedDerived;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeString(this.kpd);
        }

        _readMemberImpl(istr)
        {
            this.kpd = istr.readString();
        }
    };

    Test.BaseClass = class extends Ice.Value
    {
        constructor(bc = "")
        {
            super();
            this.bc = bc;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeString(this.bc);
        }

        _iceReadMemberImpl(istr)
        {
            this.bc = istr.readString();
        }
    };

    Slice.defineValue(Test.BaseClass, "::Test::BaseClass");

    const iceC_Test_Relay_ids = [
        "::Ice::Object",
        "::Test::Relay"
    ];

    Test.Relay = class extends Ice.Object
    {
    };

    Test.RelayPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.Relay, Test.RelayPrx, iceC_Test_Relay_ids, "::Test::Relay",
    {
        "knownPreservedAsBase": [, , 2, , , ,
        [
            Test.Base
        ], , ],
        "knownPreservedAsKnownPreserved": [, , 2, , , ,
        [
            Test.KnownPreserved
        ], , ],
        "unknownPreservedAsBase": [, , 2, , , ,
        [
            Test.Base
        ], , ],
        "unknownPreservedAsKnownPreserved": [, , 2, , , ,
        [
            Test.KnownPreserved
        ], , ]
    });

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

    Slice.defineOperations(Test.TestIntf, Test.TestIntfPrx, iceC_Test_TestIntf_ids, "::Test::TestIntf",
    {
        "baseAsBase": [, , 2, , , ,
        [
            Test.Base
        ], , ],
        "unknownDerivedAsBase": [, , 2, , , ,
        [
            Test.Base
        ], , ],
        "knownDerivedAsBase": [, , 2, , , ,
        [
            Test.Base
        ], , ],
        "knownDerivedAsKnownDerived": [, , 2, , , ,
        [
            Test.KnownDerived
        ], , ],
        "unknownIntermediateAsBase": [, , 2, , , ,
        [
            Test.Base
        ], , ],
        "knownIntermediateAsBase": [, , 2, , , ,
        [
            Test.Base
        ], , ],
        "knownMostDerivedAsBase": [, , 2, , , ,
        [
            Test.Base
        ], , ],
        "knownIntermediateAsKnownIntermediate": [, , 2, , , ,
        [
            Test.KnownIntermediate
        ], , ],
        "knownMostDerivedAsKnownIntermediate": [, , 2, , , ,
        [
            Test.KnownIntermediate
        ], , ],
        "knownMostDerivedAsKnownMostDerived": [, , 2, , , ,
        [
            Test.KnownMostDerived
        ], , ],
        "unknownMostDerived1AsBase": [, , 2, , , ,
        [
            Test.Base
        ], , ],
        "unknownMostDerived1AsKnownIntermediate": [, , 2, , , ,
        [
            Test.KnownIntermediate
        ], , ],
        "unknownMostDerived2AsBase": [, , 2, , , ,
        [
            Test.Base
        ], , ],
        "unknownMostDerived2AsBaseCompact": [, , 1, , , ,
        [
            Test.Base
        ], , ],
        "knownPreservedAsBase": [, , 2, , , ,
        [
            Test.Base
        ], , ],
        "knownPreservedAsKnownPreserved": [, , 2, , , ,
        [
            Test.KnownPreserved
        ], , ],
        "relayKnownPreservedAsBase": [, , 2, , [["Test.RelayPrx"]], ,
        [
            Test.Base
        ], , ],
        "relayKnownPreservedAsKnownPreserved": [, , 2, , [["Test.RelayPrx"]], ,
        [
            Test.KnownPreserved
        ], , ],
        "unknownPreservedAsBase": [, , 2, , , ,
        [
            Test.Base
        ], , ],
        "unknownPreservedAsKnownPreserved": [, , 2, , , ,
        [
            Test.KnownPreserved
        ], , ],
        "relayUnknownPreservedAsBase": [, , 2, , [["Test.RelayPrx"]], ,
        [
            Test.Base
        ], , ],
        "relayUnknownPreservedAsKnownPreserved": [, , 2, , [["Test.RelayPrx"]], ,
        [
            Test.KnownPreserved
        ], , ],
        "shutdown": [, , 2, , , , , , ]
    });

    Test.PreservedClass = class extends Test.BaseClass
    {
        constructor(bc, pc = "")
        {
            super(bc);
            this.pc = pc;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeString(this.pc);
        }

        _iceReadMemberImpl(istr)
        {
            this.pc = istr.readString();
        }
    };

    Slice.defineValue(Test.PreservedClass, "::Test::PreservedClass");

    Test.Preserved1 = class extends Test.KnownPreservedDerived
    {
        constructor(b, kp, kpd, p1 = null, _cause = "")
        {
            super(b, kp, kpd, _cause);
            this.p1 = p1;
        }

        static get _parent()
        {
            return Test.KnownPreservedDerived;
        }

        static get _id()
        {
            return "::Test::Preserved1";
        }

        _mostDerivedType()
        {
            return Test.Preserved1;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeValue(this.p1);
        }

        _readMemberImpl(istr)
        {
            istr.readValue(obj => this.p1 = obj, Test.BaseClass);
        }

        _usesClasses()
        {
            return true;
        }
    };

    Test.Preserved2 = class extends Test.Preserved1
    {
        constructor(b, kp, kpd, p1, p2 = null, _cause = "")
        {
            super(b, kp, kpd, p1, _cause);
            this.p2 = p2;
        }

        static get _parent()
        {
            return Test.Preserved1;
        }

        static get _id()
        {
            return "::Test::Preserved2";
        }

        _mostDerivedType()
        {
            return Test.Preserved2;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeValue(this.p2);
        }

        _readMemberImpl(istr)
        {
            istr.readValue(obj => this.p2 = obj, Test.BaseClass);
        }
    };
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
