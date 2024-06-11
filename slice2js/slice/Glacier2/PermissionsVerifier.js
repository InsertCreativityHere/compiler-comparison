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

import * as Ice_Exception from "../Ice/Exception.js";
import * as Ice_Long from "../Ice/Long.js";
import * as Ice_Object from "../Ice/Object.js";
import * as Ice_ObjectPrx from "../Ice/ObjectPrx.js";
import * as Ice_Operation from "../Ice/Operation.js";
import * as Ice_Stream from "../Ice/Stream.js";
import * as Ice_StreamHelpers from "../Ice/StreamHelpers.js";
import * as Ice_TypeRegistry from "../Ice/TypeRegistry.js";
import * as Ice_Value from "../Ice/Value.js";

const Ice = {
    ...Ice_Exception,
    ...Ice_Long,
    ...Ice_Object,
    ...Ice_ObjectPrx,
    ...Ice_Operation,
    ...Ice_Stream,
    ...Ice_StreamHelpers,
    ...Ice_TypeRegistry,
    ...Ice_Value,
};

import { 
    Glacier2 as Glacier2_SSLInfo, } from "./SSLInfo.js"

const Glacier2 = {
    ...Glacier2_SSLInfo,
};

export { Glacier2 };

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
Ice.TypeRegistry.declareUserExceptionType(
    "Glacier2.PermissionDeniedException",
    Glacier2.PermissionDeniedException);

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
Ice.TypeRegistry.declareProxyType("Glacier2.PermissionsVerifierPrx", Glacier2.PermissionsVerifierPrx);

Ice.defineOperations(
    Glacier2.PermissionsVerifier,
    Glacier2.PermissionsVerifierPrx,
    iceC_Glacier2_PermissionsVerifier_ids,
    "::Glacier2::PermissionsVerifier",
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
Ice.TypeRegistry.declareProxyType("Glacier2.SSLPermissionsVerifierPrx", Glacier2.SSLPermissionsVerifierPrx);

Ice.defineOperations(
    Glacier2.SSLPermissionsVerifier,
    Glacier2.SSLPermissionsVerifierPrx,
    iceC_Glacier2_SSLPermissionsVerifier_ids,
    "::Glacier2::SSLPermissionsVerifier",
    {
        "authorize": [, 2, 2, [1], [[Glacier2.SSLInfo]], [[7]],
        [
            Glacier2.PermissionDeniedException
        ], , ]
    });
