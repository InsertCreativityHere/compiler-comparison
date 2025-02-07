// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Metrics.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

#nullable enable

[assembly:Ice.Slice("Metrics.ice")]

#pragma warning disable CS1591 // Missing XML Comment
#pragma warning disable CS1573 // Parameter has no matching param tag in the XML comment
#pragma warning disable CS0612 // Type or member is obsolete
#pragma warning disable CS0618 // Type or member is obsolete
#pragma warning disable CS0619 // Type or member is obsolete

namespace IceMX
{
    [Ice.SliceTypeId("::IceMX::SessionMetrics")]
    public partial class SessionMetrics : Metrics
    {
        public int forwardedClient = 0;

        public int forwardedServer = 0;

        public int routingTableSize = 0;

        public int queuedClient = 0;

        public int queuedServer = 0;

        public int overriddenClient = 0;

        public int overriddenServer = 0;

        partial void ice_initialize();

        public SessionMetrics(string id, long total, int current, long totalLifetime, int failures, int forwardedClient, int forwardedServer, int routingTableSize, int queuedClient, int queuedServer, int overriddenClient, int overriddenServer) : base(id, total, current, totalLifetime, failures)
        {
            this.forwardedClient = forwardedClient;
            this.forwardedServer = forwardedServer;
            this.routingTableSize = routingTableSize;
            this.queuedClient = queuedClient;
            this.queuedServer = queuedServer;
            this.overriddenClient = overriddenClient;
            this.overriddenServer = overriddenServer;
            ice_initialize();
        }

        public SessionMetrics()
        {
            ice_initialize();
        }

        public static new string ice_staticId() => "::IceMX::SessionMetrics";
        public override string ice_id() => ice_staticId();

        protected override void iceWriteImpl(Ice.OutputStream ostr_)
        {
            ostr_.startSlice(ice_staticId(), -1, false);
            ostr_.writeInt(forwardedClient);
            ostr_.writeInt(forwardedServer);
            ostr_.writeInt(routingTableSize);
            ostr_.writeInt(queuedClient);
            ostr_.writeInt(queuedServer);
            ostr_.writeInt(overriddenClient);
            ostr_.writeInt(overriddenServer);
            ostr_.endSlice();
            base.iceWriteImpl(ostr_);
        }

        protected override void iceReadImpl(Ice.InputStream istr_)
        {
            istr_.startSlice();
            forwardedClient = istr_.readInt();
            forwardedServer = istr_.readInt();
            routingTableSize = istr_.readInt();
            queuedClient = istr_.readInt();
            queuedServer = istr_.readInt();
            overriddenClient = istr_.readInt();
            overriddenServer = istr_.readInt();
            istr_.endSlice();
            base.iceReadImpl(istr_);
        }
    }
}
