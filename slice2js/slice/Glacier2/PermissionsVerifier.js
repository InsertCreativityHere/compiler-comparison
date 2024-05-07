//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `PermissionsVerifier.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

/* slice2js browser-bundle-skip */
const _ModuleRegistry = require("../Ice/ModuleRegistry").Ice._ModuleRegistry;
const Glacier2 = require("./SSLInfo").Glacier2;
require("../Ice/Object");
require("../Ice/Value");
require("../Ice/ObjectPrx");
require("../Ice/Operation");
require("../Ice/Exception");
require("../Ice/Long");
require("../Ice/HashMap");
require("../Ice/HashUtil");
require("../Ice/ArrayUtil");
require("../Ice/StreamHelpers");
const Ice = _ModuleRegistry.module("Ice");

const Slice = Ice.Slice;
/* slice2js browser-bundle-skip-end */

/**
 *  This exception is raised if a client is denied the ability to create a session with the router.
 **/
Glacier2.PermissionDeniedException = class extends Ice.UserException
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
        return "::Glacier2::PermissionDeniedException";
    }

    _mostDerivedType()
    {
        return Glacier2.PermissionDeniedException;
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

const iceC_Glacier2_PermissionsVerifier_ids = [
    "::Glacier2::PermissionsVerifier",
    "::Ice::Object"
];

/**
 *  The Glacier2 permissions verifier. This is called through the process of establishing a session.
 *  @see Router
 **/
Glacier2.PermissionsVerifier = class extends Ice.Object
{
};

Glacier2.PermissionsVerifierPrx = class extends Ice.ObjectPrx
{
};

Slice.defineOperations(Glacier2.PermissionsVerifier, Glacier2.PermissionsVerifierPrx, iceC_Glacier2_PermissionsVerifier_ids, "::Glacier2::PermissionsVerifier",
{
    "checkPermissions": [, 2, 2, [1], [[7], [7]], [[7]],
    [
        Glacier2.PermissionDeniedException
    ], , ]
});

const iceC_Glacier2_SSLPermissionsVerifier_ids = [
    "::Glacier2::SSLPermissionsVerifier",
    "::Ice::Object"
];

/**
 *  The SSL Glacier2 permissions verifier. This is called through the process of establishing a session.
 *  @see Router
 **/
Glacier2.SSLPermissionsVerifier = class extends Ice.Object
{
};

Glacier2.SSLPermissionsVerifierPrx = class extends Ice.ObjectPrx
{
};

Slice.defineOperations(Glacier2.SSLPermissionsVerifier, Glacier2.SSLPermissionsVerifierPrx, iceC_Glacier2_SSLPermissionsVerifier_ids, "::Glacier2::SSLPermissionsVerifier",
{
    "authorize": [, 2, 2, [1], [[Glacier2.SSLInfo]], [[7]],
    [
        Glacier2.PermissionDeniedException
    ], , ]
});
/* slice2js browser-bundle-skip */
exports.Glacier2 = Glacier2;
/* slice2js browser-bundle-skip-end */
