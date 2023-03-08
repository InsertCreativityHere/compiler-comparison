//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
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
    const Test = require("Test").Test;
    const Slice = Ice.Slice;

    const iceC_Test_PreservedClass_ids = [
        "::Ice::Object",
        "::Test::BaseClass",
        "::Test::PreservedClass"
    ];

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

    Slice.defineValue(Test.PreservedClass, iceC_Test_PreservedClass_ids[2], false);

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
