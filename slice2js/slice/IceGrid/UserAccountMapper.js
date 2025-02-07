// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'UserAccountMapper.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

/* eslint-disable */
/* jshint ignore: start */

import * as Ice_Long from "../Ice/Long.js";
import * as Ice_Object from "../Ice/Object.js";
import * as Ice_ObjectPrx from "../Ice/ObjectPrx.js";
import * as Ice_Operation from "../Ice/Operation.js";
import * as Ice_StreamHelpers from "../Ice/StreamHelpers.js";
import * as Ice_TypeRegistry from "../Ice/TypeRegistry.js";
import * as Ice_UserException from "../Ice/UserException.js";
import * as Ice_Value from "../Ice/Value.js";

const Ice = {
    ...Ice_Long,
    ...Ice_Object,
    ...Ice_ObjectPrx,
    ...Ice_Operation,
    ...Ice_StreamHelpers,
    ...Ice_TypeRegistry,
    ...Ice_UserException,
    ...Ice_Value,
};


export const IceGrid = {};

/**
 * This exception is raised if a user account for a given session identifier can't be found.
 **/
IceGrid.UserAccountNotFoundException = class extends Ice.UserException
{
    constructor(_cause = "")
    {
        super(_cause);
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _ice_id()
    {
        return "::IceGrid::UserAccountNotFoundException";
    }

    _mostDerivedType()
    {
        return IceGrid.UserAccountNotFoundException;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "IceGrid.UserAccountNotFoundException",
    IceGrid.UserAccountNotFoundException);

const iceC_IceGrid_UserAccountMapper_ids = [
    "::Ice::Object",
    "::IceGrid::UserAccountMapper"
];

/**
 * A user account mapper object is used by IceGrid nodes to map session identifiers to user accounts.
 **/
IceGrid.UserAccountMapper = class extends Ice.Object
{
};

/**
 * A user account mapper object is used by IceGrid nodes to map session identifiers to user accounts.
 **/
IceGrid.UserAccountMapperPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceGrid.UserAccountMapperPrx", IceGrid.UserAccountMapperPrx);

Ice.defineOperations(
    IceGrid.UserAccountMapper,
    IceGrid.UserAccountMapperPrx,
    iceC_IceGrid_UserAccountMapper_ids,
    "::IceGrid::UserAccountMapper",
    {
        "getUserAccount": [, , , [7], [[7]], ,
        [
            IceGrid.UserAccountNotFoundException
        ], , ]
    });
