//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `SubscriberRecord.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


using _System = global::System;

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
    public partial class SubscriberRecordKey : global::System.ICloneable
    {
        #region Slice data members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public global::Ice.Identity topic;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public global::Ice.Identity id;

        #endregion

        partial void ice_initialize();

        #region Constructors

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public SubscriberRecordKey()
        {
            this.topic = new global::Ice.Identity();
            this.id = new global::Ice.Identity();
            ice_initialize();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public SubscriberRecordKey(global::Ice.Identity topic, global::Ice.Identity id)
        {
            this.topic = topic;
            this.id = id;
            ice_initialize();
        }

        #endregion

        #region ICloneable members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public object Clone()
        {
            return MemberwiseClone();
        }

        #endregion

        #region Object members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public override int GetHashCode()
        {
            int h_ = 5381;
            global::Ice.Internal.HashUtil.hashAdd(ref h_, "::IceStorm::SubscriberRecordKey");
            global::Ice.Internal.HashUtil.hashAdd(ref h_, topic);
            global::Ice.Internal.HashUtil.hashAdd(ref h_, id);
            return h_;
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public override bool Equals(object other)
        {
            if(object.ReferenceEquals(this, other))
            {
                return true;
            }
            if(other == null)
            {
                return false;
            }
            if(GetType() != other.GetType())
            {
                return false;
            }
            SubscriberRecordKey o = (SubscriberRecordKey)other;
            if(this.topic == null)
            {
                if(o.topic != null)
                {
                    return false;
                }
            }
            else
            {
                if(!this.topic.Equals(o.topic))
                {
                    return false;
                }
            }
            if(this.id == null)
            {
                if(o.id != null)
                {
                    return false;
                }
            }
            else
            {
                if(!this.id.Equals(o.id))
                {
                    return false;
                }
            }
            return true;
        }

        #endregion

        #region Comparison members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static bool operator==(SubscriberRecordKey lhs, SubscriberRecordKey rhs)
        {
            return Equals(lhs, rhs);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static bool operator!=(SubscriberRecordKey lhs, SubscriberRecordKey rhs)
        {
            return !Equals(lhs, rhs);
        }

        #endregion

        #region Marshaling support

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public void ice_writeMembers(global::Ice.OutputStream ostr)
        {
            global::Ice.Identity.ice_write(ostr, this.topic);
            global::Ice.Identity.ice_write(ostr, this.id);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public void ice_readMembers(global::Ice.InputStream istr)
        {
            this.topic = global::Ice.Identity.ice_read(istr);
            this.id = global::Ice.Identity.ice_read(istr);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static void ice_write(global::Ice.OutputStream ostr, SubscriberRecordKey v)
        {
            if(v == null)
            {
                _nullMarshalValue.ice_writeMembers(ostr);
            }
            else
            {
                v.ice_writeMembers(ostr);
            }
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static SubscriberRecordKey ice_read(global::Ice.InputStream istr)
        {
            var v = new SubscriberRecordKey();
            v.ice_readMembers(istr);
            return v;
        }

        private static readonly SubscriberRecordKey _nullMarshalValue = new SubscriberRecordKey();

        #endregion
    }

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
    public partial class SubscriberRecord : global::System.ICloneable
    {
        #region Slice data members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public string topicName;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public global::Ice.Identity id;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public bool link;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public global::Ice.ObjectPrx obj;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public global::System.Collections.Generic.Dictionary<string, string> theQoS;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public int cost;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public TopicPrx theTopic;

        #endregion

        partial void ice_initialize();

        #region Constructors

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public SubscriberRecord()
        {
            this.topicName = "";
            this.id = new global::Ice.Identity();
            ice_initialize();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public SubscriberRecord(string topicName, global::Ice.Identity id, bool link, global::Ice.ObjectPrx obj, global::System.Collections.Generic.Dictionary<string, string> theQoS, int cost, TopicPrx theTopic)
        {
            this.topicName = topicName;
            this.id = id;
            this.link = link;
            this.obj = obj;
            this.theQoS = theQoS;
            this.cost = cost;
            this.theTopic = theTopic;
            ice_initialize();
        }

        #endregion

        #region ICloneable members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public object Clone()
        {
            return MemberwiseClone();
        }

        #endregion

        #region Object members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public override int GetHashCode()
        {
            int h_ = 5381;
            global::Ice.Internal.HashUtil.hashAdd(ref h_, "::IceStorm::SubscriberRecord");
            global::Ice.Internal.HashUtil.hashAdd(ref h_, topicName);
            global::Ice.Internal.HashUtil.hashAdd(ref h_, id);
            global::Ice.Internal.HashUtil.hashAdd(ref h_, link);
            global::Ice.Internal.HashUtil.hashAdd(ref h_, obj);
            global::Ice.Internal.HashUtil.hashAdd(ref h_, theQoS);
            global::Ice.Internal.HashUtil.hashAdd(ref h_, cost);
            global::Ice.Internal.HashUtil.hashAdd(ref h_, theTopic);
            return h_;
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public override bool Equals(object other)
        {
            if(object.ReferenceEquals(this, other))
            {
                return true;
            }
            if(other == null)
            {
                return false;
            }
            if(GetType() != other.GetType())
            {
                return false;
            }
            SubscriberRecord o = (SubscriberRecord)other;
            if(this.topicName == null)
            {
                if(o.topicName != null)
                {
                    return false;
                }
            }
            else
            {
                if(!this.topicName.Equals(o.topicName))
                {
                    return false;
                }
            }
            if(this.id == null)
            {
                if(o.id != null)
                {
                    return false;
                }
            }
            else
            {
                if(!this.id.Equals(o.id))
                {
                    return false;
                }
            }
            if(!this.link.Equals(o.link))
            {
                return false;
            }
            if(this.obj == null)
            {
                if(o.obj != null)
                {
                    return false;
                }
            }
            else
            {
                if(!this.obj.Equals(o.obj))
                {
                    return false;
                }
            }
            if(this.theQoS == null)
            {
                if(o.theQoS != null)
                {
                    return false;
                }
            }
            else
            {
                if(!global::Ice.UtilInternal.Collections.DictionaryEquals(this.theQoS, o.theQoS))
                {
                    return false;
                }
            }
            if(!this.cost.Equals(o.cost))
            {
                return false;
            }
            if(this.theTopic == null)
            {
                if(o.theTopic != null)
                {
                    return false;
                }
            }
            else
            {
                if(!this.theTopic.Equals(o.theTopic))
                {
                    return false;
                }
            }
            return true;
        }

        #endregion

        #region Comparison members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static bool operator==(SubscriberRecord lhs, SubscriberRecord rhs)
        {
            return Equals(lhs, rhs);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static bool operator!=(SubscriberRecord lhs, SubscriberRecord rhs)
        {
            return !Equals(lhs, rhs);
        }

        #endregion

        #region Marshaling support

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public void ice_writeMembers(global::Ice.OutputStream ostr)
        {
            ostr.writeString(this.topicName);
            global::Ice.Identity.ice_write(ostr, this.id);
            ostr.writeBool(this.link);
            ostr.writeProxy(this.obj);
            QoSHelper.write(ostr, this.theQoS);
            ostr.writeInt(this.cost);
            TopicPrxHelper.write(ostr, this.theTopic);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public void ice_readMembers(global::Ice.InputStream istr)
        {
            this.topicName = istr.readString();
            this.id = global::Ice.Identity.ice_read(istr);
            this.link = istr.readBool();
            this.obj = istr.readProxy();
            this.theQoS = QoSHelper.read(istr);
            this.cost = istr.readInt();
            this.theTopic = TopicPrxHelper.read(istr);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static void ice_write(global::Ice.OutputStream ostr, SubscriberRecord v)
        {
            if(v == null)
            {
                _nullMarshalValue.ice_writeMembers(ostr);
            }
            else
            {
                v.ice_writeMembers(ostr);
            }
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static SubscriberRecord ice_read(global::Ice.InputStream istr)
        {
            var v = new SubscriberRecord();
            v.ice_readMembers(istr);
            return v;
        }

        private static readonly SubscriberRecord _nullMarshalValue = new SubscriberRecord();

        #endregion
    }
}

namespace IceStorm
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public sealed class SubscriberRecordSeqHelper
    {
        public static void write(global::Ice.OutputStream ostr, SubscriberRecord[] v)
        {
            if(v == null)
            {
                ostr.writeSize(0);
            }
            else
            {
                ostr.writeSize(v.Length);
                for(int ix = 0; ix < v.Length; ++ix)
                {
                    (v[ix] == null ? new SubscriberRecord() : v[ix]).ice_writeMembers(ostr);
                }
            }
        }

        public static SubscriberRecord[] read(global::Ice.InputStream istr)
        {
            SubscriberRecord[] v;
            {
                int szx = istr.readAndCheckSeqSize(13);
                v = new SubscriberRecord[szx];
                for(int ix = 0; ix < szx; ++ix)
                {
                    v[ix] = new SubscriberRecord();
                    v[ix].ice_readMembers(istr);
                }
            }
            return v;
        }
    }
}
