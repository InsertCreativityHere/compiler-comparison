// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";


export const Test = {};

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

    static get _ice_id()
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
Ice.TypeRegistry.declareUserExceptionType(
    "Test.Base",
    Test.Base);

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

    static get _ice_id()
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
Ice.TypeRegistry.declareUserExceptionType(
    "Test.KnownDerived",
    Test.KnownDerived);

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

    static get _ice_id()
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
Ice.TypeRegistry.declareUserExceptionType(
    "Test.KnownIntermediate",
    Test.KnownIntermediate);

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

    static get _ice_id()
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
Ice.TypeRegistry.declareUserExceptionType(
    "Test.KnownMostDerived",
    Test.KnownMostDerived);

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
Ice.TypeRegistry.declareProxyType("Test.TestIntfPrx", Test.TestIntfPrx);

Ice.defineOperations(
    Test.TestIntf,
    Test.TestIntfPrx,
    iceC_Test_TestIntf_ids,
    "::Test::TestIntf",
    {
        "baseAsBase": [, , , , , ,
        [
            Test.Base
        ], , ],
        "unknownDerivedAsBase": [, , 0, , , ,
        [
            Test.Base
        ], , ],
        "knownDerivedAsBase": [, , , , , ,
        [
            Test.Base
        ], , ],
        "knownDerivedAsKnownDerived": [, , , , , ,
        [
            Test.KnownDerived
        ], , ],
        "unknownIntermediateAsBase": [, , , , , ,
        [
            Test.Base
        ], , ],
        "knownIntermediateAsBase": [, , , , , ,
        [
            Test.Base
        ], , ],
        "knownMostDerivedAsBase": [, , , , , ,
        [
            Test.Base
        ], , ],
        "knownIntermediateAsKnownIntermediate": [, , , , , ,
        [
            Test.KnownIntermediate
        ], , ],
        "knownMostDerivedAsKnownIntermediate": [, , , , , ,
        [
            Test.KnownIntermediate
        ], , ],
        "knownMostDerivedAsKnownMostDerived": [, , , , , ,
        [
            Test.KnownMostDerived
        ], , ],
        "unknownMostDerived1AsBase": [, , , , , ,
        [
            Test.Base
        ], , ],
        "unknownMostDerived1AsKnownIntermediate": [, , , , , ,
        [
            Test.KnownIntermediate
        ], , ],
        "unknownMostDerived2AsBase": [, , , , , ,
        [
            Test.Base
        ], , ],
        "shutdown": [, , , , , , , , ]
    });
