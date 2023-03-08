//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Communicator.ice'
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
require("../Ice/EnumBase");
require("../Ice/Long");
require("../Ice/HashMap");
require("../Ice/HashUtil");
require("../Ice/ArrayUtil");
require("../Ice/StreamHelpers");
require("../LoggerF");
require("../InstrumentationF");
require("../ObjectAdapterF");
require("../ObjectFactory");
require("../ValueFactory");
require("../Router");
require("../Locator");
require("../PluginF");
require("../ImplicitContextF");
require("../Current");
require("../Properties");
require("../FacetMap");
require("../Connection");
const Ice = _ModuleRegistry.module("Ice");

const Slice = Ice.Slice;
/* slice2js browser-bundle-skip-end */

/**
 * The output mode for xxxToString method such as identityToString and proxyToString.
 * The actual encoding format for the string is the same for all modes: you
 * don't need to specify an encoding format or mode when reading such a string.
 *
 **/
Ice.ToStringMode = Slice.defineEnum([
    ['Unicode', 0], ['ASCII', 1], ['Compat', 2]]);
/* slice2js browser-bundle-skip */
exports.Ice = Ice;
/* slice2js browser-bundle-skip-end */
