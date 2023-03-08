//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ServerPrivateAMD.ice'
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
    const Test = require("TestAMD").Test;
    const Slice = Ice.Slice;

    Test.UnknownDerived = class extends Test.Base
    {
        constructor(b, ud = "", _cause = "")
        {
            super(b, _cause);
            this.ud = ud;
        }

        static get _parent()
        {
            return Test.Base;
        }

        static get _id()
        {
            return "::Test::UnknownDerived";
        }

        _mostDerivedType()
        {
            return Test.UnknownDerived;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeString(this.ud);
        }

        _readMemberImpl(istr)
        {
            this.ud = istr.readString();
        }
    };

    Test.UnknownIntermediate = class extends Test.Base
    {
        constructor(b, ui = "", _cause = "")
        {
            super(b, _cause);
            this.ui = ui;
        }

        static get _parent()
        {
            return Test.Base;
        }

        static get _id()
        {
            return "::Test::UnknownIntermediate";
        }

        _mostDerivedType()
        {
            return Test.UnknownIntermediate;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeString(this.ui);
        }

        _readMemberImpl(istr)
        {
            this.ui = istr.readString();
        }
    };

    Test.UnknownMostDerived1 = class extends Test.KnownIntermediate
    {
        constructor(b, ki, umd1 = "", _cause = "")
        {
            super(b, ki, _cause);
            this.umd1 = umd1;
        }

        static get _parent()
        {
            return Test.KnownIntermediate;
        }

        static get _id()
        {
            return "::Test::UnknownMostDerived1";
        }

        _mostDerivedType()
        {
            return Test.UnknownMostDerived1;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeString(this.umd1);
        }

        _readMemberImpl(istr)
        {
            this.umd1 = istr.readString();
        }
    };

    Test.UnknownMostDerived2 = class extends Test.UnknownIntermediate
    {
        constructor(b, ui, umd2 = "", _cause = "")
        {
            super(b, ui, _cause);
            this.umd2 = umd2;
        }

        static get _parent()
        {
            return Test.UnknownIntermediate;
        }

        static get _id()
        {
            return "::Test::UnknownMostDerived2";
        }

        _mostDerivedType()
        {
            return Test.UnknownMostDerived2;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeString(this.umd2);
        }

        _readMemberImpl(istr)
        {
            this.umd2 = istr.readString();
        }
    };

    const iceC_Test_SPreservedClass_ids = [
        "::Ice::Object",
        "::Test::BaseClass",
        "::Test::SPreservedClass"
    ];

    Test.SPreservedClass = class extends Test.BaseClass
    {
        constructor(bc, spc = "")
        {
            super(bc);
            this.spc = spc;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeString(this.spc);
        }

        _iceReadMemberImpl(istr)
        {
            this.spc = istr.readString();
        }
    };

    Slice.defineValue(Test.SPreservedClass, iceC_Test_SPreservedClass_ids[2], false);

    Test.SPreserved1 = class extends Test.KnownPreservedDerived
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
            return "::Test::SPreserved1";
        }

        _mostDerivedType()
        {
            return Test.SPreserved1;
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

    Test.SPreserved2 = class extends Test.SPreserved1
    {
        constructor(b, kp, kpd, p1, p2 = null, _cause = "")
        {
            super(b, kp, kpd, p1, _cause);
            this.p2 = p2;
        }

        static get _parent()
        {
            return Test.SPreserved1;
        }

        static get _id()
        {
            return "::Test::SPreserved2";
        }

        _mostDerivedType()
        {
            return Test.SPreserved2;
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
