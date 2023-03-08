//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `EndpointInfo.ice'
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
require("../Ice/Long");
require("../Ice/HashMap");
require("../Ice/HashUtil");
require("../Ice/ArrayUtil");
require("../Ice/StreamHelpers");
require("../Ice/Endpoint");
const Ice = _ModuleRegistry.module("Ice");

const Slice = Ice.Slice;
/* slice2js browser-bundle-skip-end */
/* slice2js browser-bundle-skip */

let IceBT = _ModuleRegistry.module("IceBT");
/* slice2js browser-bundle-skip-end */

/**
 * Provides access to Bluetooth endpoint information.
 *
 **/
IceBT.EndpointInfo = class extends Ice.EndpointInfo
{
    constructor(underlying, timeout, compress, addr = "", uuid = "")
    {
        super(underlying, timeout, compress);
        this.addr = addr;
        this.uuid = uuid;
    }
};

/* slice2js browser-bundle-skip */
exports.IceBT = IceBT;
/* slice2js browser-bundle-skip-end */
