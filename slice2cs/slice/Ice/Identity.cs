//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Identity.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


using _System = global::System;

#pragma warning disable 1591

namespace Ice
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
    [global::System.Serializable]
    public partial class Identity : global::System.ICloneable
    {
        #region Slice data members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public string name;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public string category;

        #endregion

        partial void ice_initialize();

        #region Constructors

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public Identity()
        {
            this.name = "";
            this.category = "";
            ice_initialize();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public Identity(string name, string category)
        {
            this.name = name;
            this.category = category;
            ice_initialize();
        }

        #endregion

        #region ICloneable members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public object Clone()
        {
            return MemberwiseClone();
        }

        #endregion

        #region Object members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public override int GetHashCode()
        {
            int h_ = 5381;
            global::IceInternal.HashUtil.hashAdd(ref h_, "::Ice::Identity");
            global::IceInternal.HashUtil.hashAdd(ref h_, name);
            global::IceInternal.HashUtil.hashAdd(ref h_, category);
            return h_;
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
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
            Identity o = (Identity)other;
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
            if(this.category == null)
            {
                if(o.category != null)
                {
                    return false;
                }
            }
            else
            {
                if(!this.category.Equals(o.category))
                {
                    return false;
                }
            }
            return true;
        }

        #endregion

        #region Comparison members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public static bool operator==(Identity lhs, Identity rhs)
        {
            return Equals(lhs, rhs);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public static bool operator!=(Identity lhs, Identity rhs)
        {
            return !Equals(lhs, rhs);
        }

        #endregion

        #region Marshaling support

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public void ice_writeMembers(OutputStream ostr)
        {
            ostr.writeString(this.name);
            ostr.writeString(this.category);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public void ice_readMembers(InputStream istr)
        {
            this.name = istr.readString();
            this.category = istr.readString();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public static void ice_write(OutputStream ostr, Identity v)
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

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public static Identity ice_read(InputStream istr)
        {
            var v = new Identity();
            v.ice_readMembers(istr);
            return v;
        }

        private static readonly Identity _nullMarshalValue = new Identity();

        #endregion
    }
}

namespace Ice
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public sealed class IdentitySeqHelper
    {
        public static void write(OutputStream ostr, Identity[] v)
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
                    (v[ix] == null ? new Identity() : v[ix]).ice_writeMembers(ostr);
                }
            }
        }

        public static Identity[] read(InputStream istr)
        {
            Identity[] v;
            {
                int szx = istr.readAndCheckSeqSize(2);
                v = new Identity[szx];
                for(int ix = 0; ix < szx; ++ix)
                {
                    v[ix] = new Identity();
                    v[ix].ice_readMembers(istr);
                }
            }
            return v;
        }
    }
}
