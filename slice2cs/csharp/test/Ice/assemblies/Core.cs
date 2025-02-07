// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Core.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

#nullable enable

[assembly:Ice.Slice("Core.ice")]

#pragma warning disable CS1591 // Missing XML Comment
#pragma warning disable CS1573 // Parameter has no matching param tag in the XML comment
#pragma warning disable CS0612 // Type or member is obsolete
#pragma warning disable CS0618 // Type or member is obsolete
#pragma warning disable CS0619 // Type or member is obsolete

namespace Core
{
    [Ice.SliceTypeId("::Core::ArgumentException")]
    public partial class ArgumentException : Ice.UserException
    {
        public override string ice_id() => "::Core::ArgumentException";

        protected override void iceWriteImpl(Ice.OutputStream ostr_)
        {
            ostr_.startSlice("::Core::ArgumentException", -1, true);
            ostr_.endSlice();
        }

        protected override void iceReadImpl(Ice.InputStream istr_)
        {
            istr_.startSlice();
            istr_.endSlice();
        }
    }
}
