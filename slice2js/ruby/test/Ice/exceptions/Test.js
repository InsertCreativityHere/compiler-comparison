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

import { Ice } from "ice";


export const Test = {};

Test.Mod = Test.Mod || {};

const iceC_Test_Empty_ids = [
    "::Ice::Object",
    "::Test::Empty"
];

Test.Empty = class extends Ice.Object
{
};

Test.EmptyPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.EmptyPrx", Test.EmptyPrx);

Ice.defineOperations(
    Test.Empty,
    Test.EmptyPrx,
    iceC_Test_Empty_ids,
    "::Test::Empty");

Test.A = class extends Ice.UserException
{
    constructor(aMem = 0, _cause = "")
    {
        super(_cause);
        this.aMem = aMem;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::Test::A";
    }

    _mostDerivedType()
    {
        return Test.A;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeInt(this.aMem);
    }

    _readMemberImpl(istr)
    {
        this.aMem = istr.readInt();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.A",
    Test.A);

Test.B = class extends Test.A
{
    constructor(aMem, bMem = 0, _cause = "")
    {
        super(aMem, _cause);
        this.bMem = bMem;
    }

    static get _parent()
    {
        return Test.A;
    }

    static get _id()
    {
        return "::Test::B";
    }

    _mostDerivedType()
    {
        return Test.B;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeInt(this.bMem);
    }

    _readMemberImpl(istr)
    {
        this.bMem = istr.readInt();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.B",
    Test.B);

Test.C = class extends Test.B
{
    constructor(aMem, bMem, cMem = 0, _cause = "")
    {
        super(aMem, bMem, _cause);
        this.cMem = cMem;
    }

    static get _parent()
    {
        return Test.B;
    }

    static get _id()
    {
        return "::Test::C";
    }

    _mostDerivedType()
    {
        return Test.C;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeInt(this.cMem);
    }

    _readMemberImpl(istr)
    {
        this.cMem = istr.readInt();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.C",
    Test.C);

Test.D = class extends Ice.UserException
{
    constructor(dMem = 0, _cause = "")
    {
        super(_cause);
        this.dMem = dMem;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::Test::D";
    }

    _mostDerivedType()
    {
        return Test.D;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeInt(this.dMem);
    }

    _readMemberImpl(istr)
    {
        this.dMem = istr.readInt();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.D",
    Test.D);

Test.Mod.A = class extends Test.A
{
    constructor(aMem, a2Mem = 0, _cause = "")
    {
        super(aMem, _cause);
        this.a2Mem = a2Mem;
    }

    static get _parent()
    {
        return Test.A;
    }

    static get _id()
    {
        return "::Test::Mod::A";
    }

    _mostDerivedType()
    {
        return Test.Mod.A;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeInt(this.a2Mem);
    }

    _readMemberImpl(istr)
    {
        this.a2Mem = istr.readInt();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.Mod.A",
    Test.Mod.A);

const iceC_Test_Thrower_ids = [
    "::Ice::Object",
    "::Test::Thrower"
];

Test.Thrower = class extends Ice.Object
{
};

Test.ThrowerPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.ThrowerPrx", Test.ThrowerPrx);

Ice.defineOperations(
    Test.Thrower,
    Test.ThrowerPrx,
    iceC_Test_Thrower_ids,
    "::Test::Thrower",
    {
        "shutdown": [, , , , , , , , ],
        "supportsUndeclaredExceptions": [, , , [1], , , , , ],
        "supportsAssertException": [, , , [1], , , , , ],
        "throwAasA": [, , , , [[3]], ,
        [
            Test.A
        ], , ],
        "throwAorDasAorD": [, , , , [[3]], ,
        [
            Test.A,
            Test.D
        ], , ],
        "throwBasA": [, , , , [[3], [3]], ,
        [
            Test.A
        ], , ],
        "throwCasA": [, , , , [[3], [3], [3]], ,
        [
            Test.A
        ], , ],
        "throwBasB": [, , , , [[3], [3]], ,
        [
            Test.B
        ], , ],
        "throwCasB": [, , , , [[3], [3], [3]], ,
        [
            Test.B
        ], , ],
        "throwCasC": [, , , , [[3], [3], [3]], ,
        [
            Test.C
        ], , ],
        "throwModA": [, , , , [[3], [3]], ,
        [
            Test.Mod.A
        ], , ],
        "throwUndeclaredA": [, , , , [[3]], , , , ],
        "throwUndeclaredB": [, , , , [[3], [3]], , , , ],
        "throwUndeclaredC": [, , , , [[3], [3], [3]], , , , ],
        "throwLocalException": [, , , , , , , , ],
        "throwNonIceException": [, , , , , , , , ],
        "throwAssertException": [, , , , , , , , ],
        "throwMemoryLimitException": [, , , [Ice.ByteSeqHelper], [[Ice.ByteSeqHelper]], , , , ],
        "throwLocalExceptionIdempotent": [, 2, , , , , , , ]
    });

const iceC_Test_WrongOperation_ids = [
    "::Ice::Object",
    "::Test::WrongOperation"
];

Test.WrongOperation = class extends Ice.Object
{
};

Test.WrongOperationPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.WrongOperationPrx", Test.WrongOperationPrx);

Ice.defineOperations(
    Test.WrongOperation,
    Test.WrongOperationPrx,
    iceC_Test_WrongOperation_ids,
    "::Test::WrongOperation",
    {
        "noSuchOperation": [, , , , , , , , ]
    });
