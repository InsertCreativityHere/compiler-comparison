//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


using _System = global::System;

#pragma warning disable 1591

namespace Test
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
    public partial class S1 : global::System.ICloneable
    {
        #region Slice data members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public string name;

        #endregion

        partial void ice_initialize();

        #region Constructors

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public S1()
        {
            this.name = "";
            ice_initialize();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public S1(string name)
        {
            this.name = name;
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
            global::Ice.Internal.HashUtil.hashAdd(ref h_, "::Test::S1");
            global::Ice.Internal.HashUtil.hashAdd(ref h_, name);
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
            S1 o = (S1)other;
            if(this.name == null)
            {
                if(o.name != null)
                {
                    return false;
                }
            }
            else
            {
                if(!this.name.Equals(o.name))
                {
                    return false;
                }
            }
            return true;
        }

        #endregion

        #region Comparison members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static bool operator==(S1 lhs, S1 rhs)
        {
            return Equals(lhs, rhs);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static bool operator!=(S1 lhs, S1 rhs)
        {
            return !Equals(lhs, rhs);
        }

        #endregion

        #region Marshaling support

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public void ice_writeMembers(global::Ice.OutputStream ostr)
        {
            ostr.writeString(this.name);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public void ice_readMembers(global::Ice.InputStream istr)
        {
            this.name = istr.readString();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static void ice_write(global::Ice.OutputStream ostr, S1 v)
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
        public static S1 ice_read(global::Ice.InputStream istr)
        {
            var v = new S1();
            v.ice_readMembers(istr);
            return v;
        }

        private static readonly S1 _nullMarshalValue = new S1();

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
    public partial class S2 : global::System.ICloneable
    {
        #region Slice data members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public bool bo;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public byte by;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public short sh;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public int i;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public long l;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public string str;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public int[] seq;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public S1 s;

        #endregion

        partial void ice_initialize();

        #region Constructors

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public S2()
        {
            this.str = "";
            this.s = new S1();
            ice_initialize();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public S2(bool bo, byte by, short sh, int i, long l, string str, int[] seq, S1 s)
        {
            this.bo = bo;
            this.by = by;
            this.sh = sh;
            this.i = i;
            this.l = l;
            this.str = str;
            this.seq = seq;
            this.s = s;
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
            global::Ice.Internal.HashUtil.hashAdd(ref h_, "::Test::S2");
            global::Ice.Internal.HashUtil.hashAdd(ref h_, bo);
            global::Ice.Internal.HashUtil.hashAdd(ref h_, by);
            global::Ice.Internal.HashUtil.hashAdd(ref h_, sh);
            global::Ice.Internal.HashUtil.hashAdd(ref h_, i);
            global::Ice.Internal.HashUtil.hashAdd(ref h_, l);
            global::Ice.Internal.HashUtil.hashAdd(ref h_, str);
            global::Ice.Internal.HashUtil.hashAdd(ref h_, seq);
            global::Ice.Internal.HashUtil.hashAdd(ref h_, s);
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
            S2 o = (S2)other;
            if(!this.bo.Equals(o.bo))
            {
                return false;
            }
            if(!this.by.Equals(o.by))
            {
                return false;
            }
            if(!this.sh.Equals(o.sh))
            {
                return false;
            }
            if(!this.i.Equals(o.i))
            {
                return false;
            }
            if(!this.l.Equals(o.l))
            {
                return false;
            }
            if(this.str == null)
            {
                if(o.str != null)
                {
                    return false;
                }
            }
            else
            {
                if(!this.str.Equals(o.str))
                {
                    return false;
                }
            }
            if(this.seq == null)
            {
                if(o.seq != null)
                {
                    return false;
                }
            }
            else
            {
                if(!Ice.UtilInternal.Arrays.Equals(this.seq, o.seq))
                {
                    return false;
                }
            }
            if(this.s == null)
            {
                if(o.s != null)
                {
                    return false;
                }
            }
            else
            {
                if(!this.s.Equals(o.s))
                {
                    return false;
                }
            }
            return true;
        }

        #endregion

        #region Comparison members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static bool operator==(S2 lhs, S2 rhs)
        {
            return Equals(lhs, rhs);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static bool operator!=(S2 lhs, S2 rhs)
        {
            return !Equals(lhs, rhs);
        }

        #endregion

        #region Marshaling support

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public void ice_writeMembers(global::Ice.OutputStream ostr)
        {
            ostr.writeBool(this.bo);
            ostr.writeByte(this.by);
            ostr.writeShort(this.sh);
            ostr.writeInt(this.i);
            ostr.writeLong(this.l);
            ostr.writeString(this.str);
            IntSeqHelper.write(ostr, this.seq);
            S1.ice_write(ostr, this.s);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public void ice_readMembers(global::Ice.InputStream istr)
        {
            this.bo = istr.readBool();
            this.by = istr.readByte();
            this.sh = istr.readShort();
            this.i = istr.readInt();
            this.l = istr.readLong();
            this.str = istr.readString();
            this.seq = IntSeqHelper.read(istr);
            this.s = S1.ice_read(istr);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static void ice_write(global::Ice.OutputStream ostr, S2 v)
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
        public static S2 ice_read(global::Ice.InputStream istr)
        {
            var v = new S2();
            v.ice_readMembers(istr);
            return v;
        }

        private static readonly S2 _nullMarshalValue = new S2();

        #endregion
    }

    [global::System.Runtime.InteropServices.ComVisible(false)]
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
    public partial class C : global::Ice.Value
    {
        #region Slice data members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public string name;

        #endregion

        partial void ice_initialize();

        #region Constructors

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public C()
        {
            this.name = "";
            ice_initialize();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public C(string name)
        {
            this.name = name;
            ice_initialize();
        }

        #endregion

        private const string _id = "::Test::C";

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static new string ice_staticId()
        {
            return _id;
        }
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public override string ice_id()
        {
            return _id;
        }

        #region Marshaling support

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        protected override void iceWriteImpl(global::Ice.OutputStream ostr_)
        {
            ostr_.startSlice(ice_staticId(), -1, true);
            ostr_.writeString(name);
            ostr_.endSlice();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        protected override void iceReadImpl(global::Ice.InputStream istr_)
        {
            istr_.startSlice();
            name = istr_.readString();
            istr_.endSlice();
        }

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
    public partial class S3 : global::System.ICloneable
    {
        #region Slice data members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public C obj;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public global::System.Collections.Generic.Dictionary<string, string> sd;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public global::Ice.ObjectPrx prx;

        #endregion

        partial void ice_initialize();

        #region Constructors

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public S3()
        {
            ice_initialize();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public S3(C obj, global::System.Collections.Generic.Dictionary<string, string> sd, global::Ice.ObjectPrx prx)
        {
            this.obj = obj;
            this.sd = sd;
            this.prx = prx;
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
            global::Ice.Internal.HashUtil.hashAdd(ref h_, "::Test::S3");
            global::Ice.Internal.HashUtil.hashAdd(ref h_, obj);
            global::Ice.Internal.HashUtil.hashAdd(ref h_, sd);
            global::Ice.Internal.HashUtil.hashAdd(ref h_, prx);
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
            S3 o = (S3)other;
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
            if(this.sd == null)
            {
                if(o.sd != null)
                {
                    return false;
                }
            }
            else
            {
                if(!global::Ice.UtilInternal.Collections.DictionaryEquals(this.sd, o.sd))
                {
                    return false;
                }
            }
            if(this.prx == null)
            {
                if(o.prx != null)
                {
                    return false;
                }
            }
            else
            {
                if(!this.prx.Equals(o.prx))
                {
                    return false;
                }
            }
            return true;
        }

        #endregion

        #region Comparison members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static bool operator==(S3 lhs, S3 rhs)
        {
            return Equals(lhs, rhs);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static bool operator!=(S3 lhs, S3 rhs)
        {
            return !Equals(lhs, rhs);
        }

        #endregion

        #region Marshaling support

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public void ice_writeMembers(global::Ice.OutputStream ostr)
        {
            ostr.writeValue(this.obj);
            StringDictHelper.write(ostr, this.sd);
            ostr.writeProxy(this.prx);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public void ice_readMembers(global::Ice.InputStream istr)
        {
            istr.readValue((C v) => { this.obj = v; });
            this.sd = StringDictHelper.read(istr);
            this.prx = istr.readProxy();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static void ice_write(global::Ice.OutputStream ostr, S3 v)
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
        public static S3 ice_read(global::Ice.InputStream istr)
        {
            var v = new S3();
            v.ice_readMembers(istr);
            return v;
        }

        private static readonly S3 _nullMarshalValue = new S3();

        #endregion
    }
}

namespace Test
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public sealed class IntSeqHelper
    {
        public static void write(global::Ice.OutputStream ostr, int[] v)
        {
            ostr.writeIntSeq(v);
        }

        public static int[] read(global::Ice.InputStream istr)
        {
            int[] v;
            v = istr.readIntSeq();
            return v;
        }
    }

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public sealed class StringDictHelper
    {
        public static void write(global::Ice.OutputStream ostr,
                                 global::System.Collections.Generic.Dictionary<string, string> v)
        {
            if(v == null)
            {
                ostr.writeSize(0);
            }
            else
            {
                ostr.writeSize(v.Count);
                foreach(global::System.Collections.Generic.KeyValuePair<string, string> e in v)
                {
                    ostr.writeString(e.Key);
                    ostr.writeString(e.Value);
                }
            }
        }

        public static global::System.Collections.Generic.Dictionary<string, string> read(global::Ice.InputStream istr)
        {
            int sz = istr.readSize();
            global::System.Collections.Generic.Dictionary<string, string> r = new global::System.Collections.Generic.Dictionary<string, string>();
            for(int i = 0; i < sz; ++i)
            {
                string k;
                k = istr.readString();
                string v;
                v = istr.readString();
                r[k] = v;
            }
            return r;
        }
    }
}
