//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Locator.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

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
import { Ice as Ice_Identity } from "./Identity.js"

const Ice = {
    ...Ice_Long,
    ...Ice_Object,
    ...Ice_ObjectPrx,
    ...Ice_Operation,
    ...Ice_StreamHelpers,
    ...Ice_TypeRegistry,
    ...Ice_UserException,
    ...Ice_Value,
    ...Ice_Identity,
};


export { Ice };

/**
 * This exception is raised if an adapter cannot be found.
 **/
Ice.AdapterNotFoundException = class extends Ice.UserException
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
        return "::Ice::AdapterNotFoundException";
    }

    _mostDerivedType()
    {
        return Ice.AdapterNotFoundException;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Ice.AdapterNotFoundException",
    Ice.AdapterNotFoundException);

/**
 * This exception is raised if the replica group provided by the server is invalid.
 **/
Ice.InvalidReplicaGroupIdException = class extends Ice.UserException
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
        return "::Ice::InvalidReplicaGroupIdException";
    }

    _mostDerivedType()
    {
        return Ice.InvalidReplicaGroupIdException;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Ice.InvalidReplicaGroupIdException",
    Ice.InvalidReplicaGroupIdException);

/**
 * This exception is raised if a server tries to set endpoints for an adapter that is already active.
 **/
Ice.AdapterAlreadyActiveException = class extends Ice.UserException
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
        return "::Ice::AdapterAlreadyActiveException";
    }

    _mostDerivedType()
    {
        return Ice.AdapterAlreadyActiveException;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Ice.AdapterAlreadyActiveException",
    Ice.AdapterAlreadyActiveException);

/**
 * This exception is raised if an object cannot be found.
 **/
Ice.ObjectNotFoundException = class extends Ice.UserException
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
        return "::Ice::ObjectNotFoundException";
    }

    _mostDerivedType()
    {
        return Ice.ObjectNotFoundException;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Ice.ObjectNotFoundException",
    Ice.ObjectNotFoundException);

/**
 * This exception is raised if a server cannot be found.
 **/
Ice.ServerNotFoundException = class extends Ice.UserException
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
        return "::Ice::ServerNotFoundException";
    }

    _mostDerivedType()
    {
        return Ice.ServerNotFoundException;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Ice.ServerNotFoundException",
    Ice.ServerNotFoundException);

const iceC_Ice_Locator_ids = [
    "::Ice::Locator",
    "::Ice::Object"
];

/**
 * The Ice locator interface. This interface is used by clients to lookup adapters and objects. It is also used by
 * servers to get the locator registry proxy. <p class="Note">The {@link Locator} interface is intended to be used
 * by Ice internals and by locator implementations. Regular user code should not attempt to use any functionality
 * of this interface directly.
 **/
Ice.Locator = class extends Ice.Object
{
};

/**
 * The Ice locator interface. This interface is used by clients to lookup adapters and objects. It is also used by
 * servers to get the locator registry proxy. <p class="Note">The {@link Locator} interface is intended to be used
 * by Ice internals and by locator implementations. Regular user code should not attempt to use any functionality
 * of this interface directly.
 **/
Ice.LocatorPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Ice.LocatorPrx", Ice.LocatorPrx);

Ice.defineOperations(
    Ice.Locator,
    Ice.LocatorPrx,
    iceC_Ice_Locator_ids,
    "::Ice::Locator",
    {
        "findObjectById": [, 2, , [9], [[Ice.Identity]], ,
        [
            Ice.ObjectNotFoundException
        ], , ],
        "findAdapterById": [, 2, , [9], [[7]], ,
        [
            Ice.AdapterNotFoundException
        ], , ],
        "getRegistry": [, 2, , ["Ice.LocatorRegistryPrx"], , , , , ]
    });

const iceC_Ice_LocatorRegistry_ids = [
    "::Ice::LocatorRegistry",
    "::Ice::Object"
];

/**
 * The Ice locator registry interface. This interface is used by servers to register adapter endpoints with the
 * locator. <p class="Note"> The {@link LocatorRegistry} interface is intended to be used by Ice internals and by
 * locator implementations. Regular user code should not attempt to use any functionality of this interface
 * directly.
 **/
Ice.LocatorRegistry = class extends Ice.Object
{
};

/**
 * The Ice locator registry interface. This interface is used by servers to register adapter endpoints with the
 * locator. <p class="Note"> The {@link LocatorRegistry} interface is intended to be used by Ice internals and by
 * locator implementations. Regular user code should not attempt to use any functionality of this interface
 * directly.
 **/
Ice.LocatorRegistryPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Ice.LocatorRegistryPrx", Ice.LocatorRegistryPrx);

Ice.defineOperations(
    Ice.LocatorRegistry,
    Ice.LocatorRegistryPrx,
    iceC_Ice_LocatorRegistry_ids,
    "::Ice::LocatorRegistry",
    {
        "setAdapterDirectProxy": [, 2, , , [[7], [9]], ,
        [
            Ice.AdapterNotFoundException,
            Ice.AdapterAlreadyActiveException
        ], , ],
        "setReplicatedAdapterDirectProxy": [, 2, , , [[7], [7], [9]], ,
        [
            Ice.AdapterNotFoundException,
            Ice.AdapterAlreadyActiveException,
            Ice.InvalidReplicaGroupIdException
        ], , ],
        "setServerProcessProxy": [, 2, , , [[7], ["Ice.ProcessPrx"]], ,
        [
            Ice.ServerNotFoundException
        ], , ]
    });

const iceC_Ice_LocatorFinder_ids = [
    "::Ice::LocatorFinder",
    "::Ice::Object"
];

/**
 * This interface should be implemented by services implementing the <code>Ice::Locator interface</code>. It should
 * be advertised through an Ice object with the identity <code>'Ice/LocatorFinder'</code>. This allows clients to
 * retrieve the locator proxy with just the endpoint information of the service.
 **/
Ice.LocatorFinder = class extends Ice.Object
{
};

/**
 * This interface should be implemented by services implementing the <code>Ice::Locator interface</code>. It should
 * be advertised through an Ice object with the identity <code>'Ice/LocatorFinder'</code>. This allows clients to
 * retrieve the locator proxy with just the endpoint information of the service.
 **/
Ice.LocatorFinderPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Ice.LocatorFinderPrx", Ice.LocatorFinderPrx);

Ice.defineOperations(
    Ice.LocatorFinder,
    Ice.LocatorFinderPrx,
    iceC_Ice_LocatorFinder_ids,
    "::Ice::LocatorFinder",
    {
        "getLocator": [, , , ["Ice.LocatorPrx"], , , , , ]
    });
