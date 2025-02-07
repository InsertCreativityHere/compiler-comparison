// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Derived.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

#nullable enable

[assembly:Ice.Slice("Derived.ice")]

#pragma warning disable CS1591 // Missing XML Comment
#pragma warning disable CS1573 // Parameter has no matching param tag in the XML comment
#pragma warning disable CS0612 // Type or member is obsolete
#pragma warning disable CS0618 // Type or member is obsolete
#pragma warning disable CS0619 // Type or member is obsolete

namespace Test
{
    [Ice.SliceTypeId("::Test::Derived")]
    public partial class Derived : Base
    {
        public string b = "";

        partial void ice_initialize();

        public Derived(S theS, string str, string b) : base(theS, str)
        {
            global::System.ArgumentNullException.ThrowIfNull(b);
            this.b = b;
            ice_initialize();
        }

        public Derived(S theS) : base(theS)
        {
            ice_initialize();
        }

        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Derived()
        {
            ice_initialize();
        }

        public static new string ice_staticId() => "::Test::Derived";
        public override string ice_id() => ice_staticId();

        protected override void iceWriteImpl(Ice.OutputStream ostr_)
        {
            ostr_.startSlice(ice_staticId(), -1, false);
            ostr_.writeString(b);
            ostr_.endSlice();
            base.iceWriteImpl(ostr_);
        }

        protected override void iceReadImpl(Ice.InputStream istr_)
        {
            istr_.startSlice();
            b = istr_.readString();
            istr_.endSlice();
            base.iceReadImpl(istr_);
        }
    }
}
