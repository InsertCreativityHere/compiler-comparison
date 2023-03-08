//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ConnectionInfo.ice'
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
require("../Ice/Connection");
const Ice = _ModuleRegistry.module("Ice");

const Slice = Ice.Slice;
/* slice2js browser-bundle-skip-end */
/* slice2js browser-bundle-skip */

let IceIAP = _ModuleRegistry.module("IceIAP");
/* slice2js browser-bundle-skip-end */

/**
 * Provides access to the connection details of an IAP connection
 *
 **/
IceIAP.ConnectionInfo = class extends Ice.ConnectionInfo
{
    constructor(underlying, incoming, adapterName, connectionId, name = "", manufacturer = "", modelNumber = "", firmwareRevision = "", hardwareRevision = "", protocol = "")
    {
        super(underlying, incoming, adapterName, connectionId);
        this.name = name;
        this.manufacturer = manufacturer;
        this.modelNumber = modelNumber;
        this.firmwareRevision = firmwareRevision;
        this.hardwareRevision = hardwareRevision;
        this.protocol = protocol;
    }
};

/* slice2js browser-bundle-skip */
exports.IceIAP = IceIAP;
/* slice2js browser-bundle-skip-end */
