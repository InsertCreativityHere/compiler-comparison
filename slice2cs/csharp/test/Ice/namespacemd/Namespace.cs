//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `Namespace.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


using _System = global::System;

#pragma warning disable 1591

namespace Ice.namespacemd
{
    namespace WithNamespace
    {
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
        [global::System.Serializable]
        public partial class C1 : global::Ice.Value
        {
            #region Slice data members

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public int i;

            #endregion

            partial void ice_initialize();

            #region Constructors

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public C1()
            {
                ice_initialize();
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public C1(int i)
            {
                this.i = i;
                ice_initialize();
            }

            #endregion

            private const string _id = "::WithNamespace::C1";

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public static new string ice_staticId()
            {
                return _id;
            }
            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public override string ice_id()
            {
                return _id;
            }

            #region Marshaling support

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            protected override void iceWriteImpl(global::Ice.OutputStream ostr_)
            {
                ostr_.startSlice(ice_staticId(), -1, true);
                ostr_.writeInt(i);
                ostr_.endSlice();
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            protected override void iceReadImpl(global::Ice.InputStream istr_)
            {
                istr_.startSlice();
                i = istr_.readInt();
                istr_.endSlice();
            }

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
        [global::System.Serializable]
        public partial class C2 : C1
        {
            #region Slice data members

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public long l;

            #endregion

            partial void ice_initialize();

            #region Constructors

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public C2() : base()
            {
                ice_initialize();
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public C2(int i, long l) : base(i)
            {
                this.l = l;
                ice_initialize();
            }

            #endregion

            private const string _id = "::WithNamespace::C2";

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public static new string ice_staticId()
            {
                return _id;
            }
            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public override string ice_id()
            {
                return _id;
            }

            #region Marshaling support

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            protected override void iceWriteImpl(global::Ice.OutputStream ostr_)
            {
                ostr_.startSlice(ice_staticId(), -1, false);
                ostr_.writeLong(l);
                ostr_.endSlice();
                base.iceWriteImpl(ostr_);
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            protected override void iceReadImpl(global::Ice.InputStream istr_)
            {
                istr_.startSlice();
                l = istr_.readLong();
                istr_.endSlice();
                base.iceReadImpl(istr_);
            }

            #endregion
        }

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
        public partial class E1 : global::Ice.UserException
        {
            #region Slice data members

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public int i;

            #endregion

            #region Constructors

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            private void _initDM()
            {
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public E1()
            {
                _initDM();
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public E1(global::System.Exception ex) : base(ex)
            {
                _initDM();
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public E1(global::System.Runtime.Serialization.SerializationInfo info, global::System.Runtime.Serialization.StreamingContext context) : base(info, context)
            {
                this.i = info.GetInt32("i");
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            private void _initDM(int i)
            {
                this.i = i;
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public E1(int i)
            {
                _initDM(i);
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public E1(int i, global::System.Exception ex) : base(ex)
            {
                _initDM(i);
            }

            #endregion

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public override string ice_id()
            {
                return "::WithNamespace::E1";
            }

            #region Marshaling support

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            protected override void iceWriteImpl(global::Ice.OutputStream ostr_)
            {
                ostr_.startSlice("::WithNamespace::E1", -1, true);
                ostr_.writeInt(i);
                ostr_.endSlice();
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            protected override void iceReadImpl(global::Ice.InputStream istr_)
            {
                istr_.startSlice();
                i = istr_.readInt();
                istr_.endSlice();
            }

            #endregion
        }

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
        public partial class E2 : E1
        {
            #region Slice data members

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public long l;

            #endregion

            #region Constructors

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            private void _initDM()
            {
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public E2()
            {
                _initDM();
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public E2(global::System.Exception ex) : base(ex)
            {
                _initDM();
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public E2(global::System.Runtime.Serialization.SerializationInfo info, global::System.Runtime.Serialization.StreamingContext context) : base(info, context)
            {
                this.l = info.GetInt64("l");
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            private void _initDM(long l)
            {
                this.l = l;
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public E2(int i, long l) : base(i)
            {
                _initDM(l);
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public E2(int i, long l, global::System.Exception ex) : base(i, ex)
            {
                _initDM(l);
            }

            #endregion

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            public override string ice_id()
            {
                return "::WithNamespace::E2";
            }

            #region Marshaling support

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            protected override void iceWriteImpl(global::Ice.OutputStream ostr_)
            {
                ostr_.startSlice("::WithNamespace::E2", -1, false);
                ostr_.writeLong(l);
                ostr_.endSlice();
                base.iceWriteImpl(ostr_);
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
            protected override void iceReadImpl(global::Ice.InputStream istr_)
            {
                istr_.startSlice();
                l = istr_.readLong();
                istr_.endSlice();
                base.iceReadImpl(istr_);
            }

            #endregion
        }
    }
}

namespace Ice.TypeId.WithNamespace
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
    public abstract class C1
    {
        public abstract global::Ice.namespacemd.WithNamespace.C1 targetClass { get; }
    }

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
    public abstract class C2
    {
        public abstract global::Ice.namespacemd.WithNamespace.C2 targetClass { get; }
    }

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
    public abstract class E1
    {
        public abstract global::Ice.namespacemd.WithNamespace.E1 targetClass { get; }
    }

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
    public abstract class E2
    {
        public abstract global::Ice.namespacemd.WithNamespace.E2 targetClass { get; }
    }
}
