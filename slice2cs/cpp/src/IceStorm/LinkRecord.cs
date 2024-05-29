//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `LinkRecord.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#nullable enable

[assembly:Ice.Slice("LinkRecord.ice")]

#pragma warning disable 1591

namespace IceStorm
{
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1704")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1707")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1709")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1710")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1711")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1715")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1716")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1720")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1722")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1724")]
    public sealed partial record class LinkRecord
    {
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public TopicLinkPrx? obj;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public int cost;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public TopicPrx? theTopic;

        partial void ice_initialize();

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public LinkRecord()
        {
            ice_initialize();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public LinkRecord(TopicLinkPrx? obj, int cost, TopicPrx? theTopic)
        {
            this.obj = obj;
            this.cost = cost;
            this.theTopic = theTopic;
            ice_initialize();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public LinkRecord(Ice.InputStream istr)
        {
            this.obj = TopicLinkPrxHelper.read(istr);
            this.cost = istr.readInt();
            this.theTopic = TopicPrxHelper.read(istr);
            ice_initialize();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public void ice_writeMembers(Ice.OutputStream ostr)
        {
            TopicLinkPrxHelper.write(ostr, this.obj);
            ostr.writeInt(this.cost);
            TopicPrxHelper.write(ostr, this.theTopic);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static void ice_write(Ice.OutputStream ostr, LinkRecord v)
        {
            v.ice_writeMembers(ostr);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static LinkRecord ice_read(Ice.InputStream istr) => new(istr);
    }
}
