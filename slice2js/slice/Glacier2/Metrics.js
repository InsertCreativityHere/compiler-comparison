//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Metrics.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

/* slice2js browser-bundle-skip */
(function(module, require, exports)
{
/* slice2js browser-bundle-skip-end */
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
    const Ice = _ModuleRegistry.module("Ice");

    const IceMX = require("../Ice/Metrics").IceMX;
    const Slice = Ice.Slice;
/* slice2js browser-bundle-skip-end */

    const iceC_IceMX_SessionMetrics_ids = [
        "::Ice::Object",
        "::IceMX::Metrics",
        "::IceMX::SessionMetrics"
    ];

    /**
     * Provides information on Glacier2 sessions.
     *
     **/
    IceMX.SessionMetrics = class extends IceMX.Metrics
    {
        constructor(id, total, current, totalLifetime, failures, forwardedClient = 0, forwardedServer = 0, routingTableSize = 0, queuedClient = 0, queuedServer = 0, overriddenClient = 0, overriddenServer = 0)
        {
            super(id, total, current, totalLifetime, failures);
            this.forwardedClient = forwardedClient;
            this.forwardedServer = forwardedServer;
            this.routingTableSize = routingTableSize;
            this.queuedClient = queuedClient;
            this.queuedServer = queuedServer;
            this.overriddenClient = overriddenClient;
            this.overriddenServer = overriddenServer;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.forwardedClient);
            ostr.writeInt(this.forwardedServer);
            ostr.writeInt(this.routingTableSize);
            ostr.writeInt(this.queuedClient);
            ostr.writeInt(this.queuedServer);
            ostr.writeInt(this.overriddenClient);
            ostr.writeInt(this.overriddenServer);
        }

        _iceReadMemberImpl(istr)
        {
            this.forwardedClient = istr.readInt();
            this.forwardedServer = istr.readInt();
            this.routingTableSize = istr.readInt();
            this.queuedClient = istr.readInt();
            this.queuedServer = istr.readInt();
            this.overriddenClient = istr.readInt();
            this.overriddenServer = istr.readInt();
        }
    };

    Slice.defineValue(IceMX.SessionMetrics, iceC_IceMX_SessionMetrics_ids[2], false);
/* slice2js browser-bundle-skip */
    exports.IceMX = IceMX;
/* slice2js browser-bundle-skip-end */
/* slice2js browser-bundle-skip */
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
/* slice2js browser-bundle-skip-end */
