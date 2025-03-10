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
    [Ice.SliceTypeId("::IceMX::TopicMetrics")]
    public partial class TopicMetrics : Metrics
    {
        public long published = 0L;

        public long forwarded = 0L;

        partial void ice_initialize();

        public TopicMetrics(string id, long total, int current, long totalLifetime, int failures, long published, long forwarded) : base(id, total, current, totalLifetime, failures)
        {
            this.published = published;
            this.forwarded = forwarded;
            ice_initialize();
        }

        public TopicMetrics()
        {
            ice_initialize();
        }

        public static new string ice_staticId() => "::IceMX::TopicMetrics";
        public override string ice_id() => ice_staticId();

        protected override void iceWriteImpl(Ice.OutputStream ostr_)
        {
            ostr_.startSlice(ice_staticId(), -1, false);
            ostr_.writeLong(published);
            ostr_.writeLong(forwarded);
            ostr_.endSlice();
            base.iceWriteImpl(ostr_);
        }

        protected override void iceReadImpl(Ice.InputStream istr_)
        {
            istr_.startSlice();
            published = istr_.readLong();
            forwarded = istr_.readLong();
            istr_.endSlice();
            base.iceReadImpl(istr_);
        }
    }

    [Ice.SliceTypeId("::IceMX::SubscriberMetrics")]
    public partial class SubscriberMetrics : Metrics
    {
        public int queued = 0;

        public int outstanding = 0;

        public long delivered = 0L;

        partial void ice_initialize();

        public SubscriberMetrics(string id, long total, int current, long totalLifetime, int failures, int queued, int outstanding, long delivered) : base(id, total, current, totalLifetime, failures)
        {
            this.queued = queued;
            this.outstanding = outstanding;
            this.delivered = delivered;
            ice_initialize();
        }

        public SubscriberMetrics()
        {
            ice_initialize();
        }

        public static new string ice_staticId() => "::IceMX::SubscriberMetrics";
        public override string ice_id() => ice_staticId();

        protected override void iceWriteImpl(Ice.OutputStream ostr_)
        {
            ostr_.startSlice(ice_staticId(), -1, false);
            ostr_.writeInt(queued);
            ostr_.writeInt(outstanding);
            ostr_.writeLong(delivered);
            ostr_.endSlice();
            base.iceWriteImpl(ostr_);
        }

        protected override void iceReadImpl(Ice.InputStream istr_)
        {
            istr_.startSlice();
            queued = istr_.readInt();
            outstanding = istr_.readInt();
            delivered = istr_.readLong();
            istr_.endSlice();
            base.iceReadImpl(istr_);
        }
    }
}
