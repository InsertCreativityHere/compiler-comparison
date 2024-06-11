//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Core.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";


export const Core = {};

Core.ArgumentException = class extends Ice.UserException
{
    constructor(_cause = "")
    {
        super(_cause);
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::Core::ArgumentException";
    }

    _mostDerivedType()
    {
        return Core.ArgumentException;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Core.ArgumentException",
    Core.ArgumentException);
