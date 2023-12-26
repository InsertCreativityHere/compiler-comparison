//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `PropertiesAdmin.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

/* slice2js browser-bundle-skip */
const _ModuleRegistry = require("../Ice/ModuleRegistry").Ice._ModuleRegistry;
require("../Ice/Object");
require("../Ice/Value");
require("../Ice/ObjectPrx");
require("../Ice/Operation");
require("../Ice/Long");
require("../Ice/HashMap");
require("../Ice/HashUtil");
require("../Ice/ArrayUtil");
require("../Ice/StreamHelpers");
require("../PropertyDict");
const Ice = _ModuleRegistry.module("Ice");

const Slice = Ice.Slice;
/* slice2js browser-bundle-skip-end */

const iceC_Ice_PropertiesAdmin_ids = [
    "::Ice::Object",
    "::Ice::PropertiesAdmin"
];

/**
 *  The PropertiesAdmin interface provides remote access to the properties of a communicator.
 **/
Ice.PropertiesAdmin = class extends Ice.Object
{
};

Ice.PropertiesAdminPrx = class extends Ice.ObjectPrx
{
};

Slice.defineOperations(Ice.PropertiesAdmin, Ice.PropertiesAdminPrx, iceC_Ice_PropertiesAdmin_ids, 1,
{
    "getProperty": [, , , , [7], [[7]], , , , ],
    "getPropertiesForPrefix": [, , , , ["Ice.PropertyDictHelper"], [[7]], , , , ],
    "setProperties": [, , , , , [["Ice.PropertyDictHelper"]], , , , ]
});
/* slice2js browser-bundle-skip */
exports.Ice = Ice;
/* slice2js browser-bundle-skip-end */
