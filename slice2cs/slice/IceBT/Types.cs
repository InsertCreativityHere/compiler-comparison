//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Types.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


using _System = global::System;

#pragma warning disable 1591

namespace IceBT
{
    /// <summary>
    /// Indicates a failure in the Bluetooth plug-in.
    /// </summary>

    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1032")]
    [global::System.Serializable]
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
    public partial class BluetoothException : global::Ice.LocalException
    {
        #region Slice data members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public string reason;

        #endregion

        #region Constructors

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        private void _initDM()
        {
            this.reason = "";
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public BluetoothException()
        {
            _initDM();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public BluetoothException(global::System.Exception ex) : base(ex)
        {
            _initDM();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public BluetoothException(global::System.Runtime.Serialization.SerializationInfo info, global::System.Runtime.Serialization.StreamingContext context) : base(info, context)
        {
            this.reason = info.GetString("reason");
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        private void _initDM(string reason)
        {
            this.reason = reason;
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public BluetoothException(string reason)
        {
            _initDM(reason);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public BluetoothException(string reason, global::System.Exception ex) : base(ex)
        {
            _initDM(reason);
        }

        #endregion

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public override string ice_id()
        {
            return "::IceBT::BluetoothException";
        }

        #region Object members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public override int GetHashCode()
        {
            int h_ = 5381;
            global::IceInternal.HashUtil.hashAdd(ref h_, "::IceBT::BluetoothException");
            global::IceInternal.HashUtil.hashAdd(ref h_, reason);
            return h_;
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public override bool Equals(object other)
        {
            if(other == null)
            {
                return false;
            }
            if(object.ReferenceEquals(this, other))
            {
                return true;
            }
            BluetoothException o = other as BluetoothException;
            if(o == null)
            {
                return false;
            }
            if(this.reason == null)
            {
                if(o.reason != null)
                {
                    return false;
                }
            }
            else
            {
                if(!this.reason.Equals(o.reason))
                {
                    return false;
                }
            }
            return true;
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public override void GetObjectData(global::System.Runtime.Serialization.SerializationInfo info, global::System.Runtime.Serialization.StreamingContext context)
        {
            info.AddValue("reason", this.reason == null ? "" : this.reason);

            base.GetObjectData(info, context);
        }

        #endregion

        #region Comparison members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public static bool operator==(BluetoothException lhs, BluetoothException rhs)
        {
            return Equals(lhs, rhs);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public static bool operator!=(BluetoothException lhs, BluetoothException rhs)
        {
            return !Equals(lhs, rhs);
        }

        #endregion
    }
}
