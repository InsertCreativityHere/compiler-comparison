//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `DBTypes.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#nullable enable

[assembly:Ice.Slice("DBTypes.ice")]

#pragma warning disable 1591

namespace IceGrid
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
    public sealed partial class AllData : global::System.IEquatable<AllData>
    {
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public ApplicationInfo[] applications;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public AdapterInfo[] adapters;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public ObjectInfo[] objects;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public ObjectInfo[] internalObjects;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public global::System.Collections.Generic.Dictionary<string, long> serials;

        partial void ice_initialize();

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public AllData(ApplicationInfo[] applications, AdapterInfo[] adapters, ObjectInfo[] objects, ObjectInfo[] internalObjects, global::System.Collections.Generic.Dictionary<string, long> serials)
        {
            global::System.ArgumentNullException.ThrowIfNull(applications);
            this.applications = applications;
            global::System.ArgumentNullException.ThrowIfNull(adapters);
            this.adapters = adapters;
            global::System.ArgumentNullException.ThrowIfNull(objects);
            this.objects = objects;
            global::System.ArgumentNullException.ThrowIfNull(internalObjects);
            this.internalObjects = internalObjects;
            global::System.ArgumentNullException.ThrowIfNull(serials);
            this.serials = serials;
            ice_initialize();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public AllData(Ice.InputStream istr)
        {
            this.applications = ApplicationInfoSeqHelper.read(istr);
            this.adapters = AdapterInfoSeqHelper.read(istr);
            this.objects = ObjectInfoSeqHelper.read(istr);
            this.internalObjects = ObjectInfoSeqHelper.read(istr);
            this.serials = StringLongDictHelper.read(istr);
            ice_initialize();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public AllData Clone() => (AllData)MemberwiseClone();

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public override int GetHashCode()
        {
            var hash = new global::System.HashCode();
            Ice.UtilInternal.Collections.HashCodeAdd(ref hash, this.applications);
            Ice.UtilInternal.Collections.HashCodeAdd(ref hash, this.adapters);
            Ice.UtilInternal.Collections.HashCodeAdd(ref hash, this.objects);
            Ice.UtilInternal.Collections.HashCodeAdd(ref hash, this.internalObjects);
            Ice.UtilInternal.Collections.HashCodeAdd(ref hash, this.serials);
            return hash.ToHashCode();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public override bool Equals(object? other) => Equals(other as AllData);

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public bool Equals(AllData? other)
        {
            if (ReferenceEquals(this, other))
            {
                return true;
            }
            return other is not null && 
                Ice.UtilInternal.Collections.NullableSequenceEqual(this.applications, other.applications) && 
                Ice.UtilInternal.Collections.NullableSequenceEqual(this.adapters, other.adapters) && 
                Ice.UtilInternal.Collections.NullableSequenceEqual(this.objects, other.objects) && 
                Ice.UtilInternal.Collections.NullableSequenceEqual(this.internalObjects, other.internalObjects) && 
                Ice.UtilInternal.Collections.DictionaryEquals(this.serials, other.serials);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static bool operator ==(AllData? lhs, AllData? rhs) => lhs is not null ? lhs.Equals(rhs) : rhs is null;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static bool operator !=(AllData? lhs, AllData? rhs) => !(lhs == rhs);

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public void ice_writeMembers(Ice.OutputStream ostr)
        {
            ApplicationInfoSeqHelper.write(ostr, this.applications);
            AdapterInfoSeqHelper.write(ostr, this.adapters);
            ObjectInfoSeqHelper.write(ostr, this.objects);
            ObjectInfoSeqHelper.write(ostr, this.internalObjects);
            StringLongDictHelper.write(ostr, this.serials);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static void ice_write(Ice.OutputStream ostr, AllData v)
        {
            v.ice_writeMembers(ostr);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static AllData ice_read(Ice.InputStream istr) => new(istr);
    }
}

namespace IceGrid
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public sealed class StringLongDictHelper
    {
        public static void write(Ice.OutputStream ostr,
                                 global::System.Collections.Generic.Dictionary<string, long> v)
        {
            if(v == null)
            {
                ostr.writeSize(0);
            }
            else
            {
                ostr.writeSize(v.Count);
                foreach(global::System.Collections.Generic.KeyValuePair<string, long> e in v)
                {
                    ostr.writeString(e.Key);
                    ostr.writeLong(e.Value);
                }
            }
        }

        public static global::System.Collections.Generic.Dictionary<string, long> read(Ice.InputStream istr)
        {
            int sz = istr.readSize();
            global::System.Collections.Generic.Dictionary<string, long> r = new global::System.Collections.Generic.Dictionary<string, long>();
            for(int i = 0; i < sz; ++i)
            {
                string k;
                k = istr.readString();
                long v;
                v = istr.readLong();
                r[k] = v;
            }
            return r;
        }
    }
}
