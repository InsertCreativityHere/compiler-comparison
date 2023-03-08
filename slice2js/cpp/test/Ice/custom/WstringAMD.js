//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `WstringAMD.ice'
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

    let Test1 = _ModuleRegistry.module("Test1");

    Slice.defineSequence(Test1, "WstringSeqHelper", "Ice.StringHelper", false);

    Slice.defineDictionary(Test1, "WstringWStringDict", "WstringWStringDictHelper", "Ice.StringHelper", "Ice.StringHelper", false, undefined, undefined);

    Test1.WstringStruct = class
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

    Slice.defineStruct(Test1.WstringStruct, true, true);

    Test1.WstringException = class extends Ice.UserException
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
            return "::Test1::WstringException";
        }

        _mostDerivedType()
        {
            return Test1.WstringException;
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

    const iceC_Test1_WstringClass_ids = [
        "::Ice::Object",
        "::Test1::WstringClass"
    ];

    Test1.WstringClass = class extends Ice.Object
    {
    };

    Test1.WstringClassPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test1.WstringClass, Test1.WstringClassPrx, iceC_Test1_WstringClass_ids, 1,
    {
        "opString": [, , , , [7], [[7]], [[7]], , , ],
        "opStruct": [, , , , [Test1.WstringStruct], [[Test1.WstringStruct]], [[Test1.WstringStruct]], , , ],
        "throwExcept": [, , , , , [[7]], ,
        [
            Test1.WstringException
        ], , ]
    });

    let Test2 = _ModuleRegistry.module("Test2");

    Slice.defineSequence(Test2, "WstringSeqHelper", "Ice.StringHelper", false);

    Slice.defineDictionary(Test2, "WstringWStringDict", "WstringWStringDictHelper", "Ice.StringHelper", "Ice.StringHelper", false, undefined, undefined);

    Test2.WstringStruct = class
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

    Slice.defineStruct(Test2.WstringStruct, true, true);

    Test2.WstringException = class extends Ice.UserException
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
            return "::Test2::WstringException";
        }

        _mostDerivedType()
        {
            return Test2.WstringException;
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

    const iceC_Test2_WstringClass_ids = [
        "::Ice::Object",
        "::Test2::WstringClass"
    ];

    Test2.WstringClass = class extends Ice.Object
    {
    };

    Test2.WstringClassPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test2.WstringClass, Test2.WstringClassPrx, iceC_Test2_WstringClass_ids, 1,
    {
        "opString": [, , , , [7], [[7]], [[7]], , , ],
        "opStruct": [, , , , [Test2.WstringStruct], [[Test2.WstringStruct]], [[Test2.WstringStruct]], , , ],
        "throwExcept": [, , , , , [[7]], ,
        [
            Test2.WstringException
        ], , ]
    });
    exports.Test1 = Test1;
    exports.Test2 = Test2;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
