//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServerPrivate.ice'
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
        "op": [, , , ["Test.AlsoEmpty", true], , , , , true]
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
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
