// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

#nullable enable

[assembly:Ice.Slice("Test.ice")]

#pragma warning disable CS1591 // Missing XML Comment
#pragma warning disable CS1573 // Parameter has no matching param tag in the XML comment
#pragma warning disable CS0612 // Type or member is obsolete
#pragma warning disable CS0618 // Type or member is obsolete
#pragma warning disable CS0619 // Type or member is obsolete

namespace Test
{
    public sealed class SerialSmallHelper
    {
        public static void write(Ice.OutputStream ostr, byte[] v)
        {
            ostr.writeByteSeq(v);
        }

        public static byte[] read(Ice.InputStream istr)
        {
            byte[] v;
            v = istr.readByteSeq();
            return v;
        }
    }

    public sealed class SerialLargeHelper
    {
        public static void write(Ice.OutputStream ostr, byte[] v)
        {
            ostr.writeByteSeq(v);
        }

        public static byte[] read(Ice.InputStream istr)
        {
            byte[] v;
            v = istr.readByteSeq();
            return v;
        }
    }

    public sealed class SerialStructHelper
    {
        public static void write(Ice.OutputStream ostr, byte[] v)
        {
            ostr.writeByteSeq(v);
        }

        public static byte[] read(Ice.InputStream istr)
        {
            byte[] v;
            v = istr.readByteSeq();
            return v;
        }
    }

    public interface MyClassPrx : Ice.ObjectPrx
    {
        void shutdown(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task shutdownAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        byte[] opSerialSmallJava(byte[] i, out byte[] o, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task<MyClass_OpSerialSmallJavaResult> opSerialSmallJavaAsync(byte[] i, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        byte[] opSerialLargeJava(byte[] i, out byte[] o, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task<MyClass_OpSerialLargeJavaResult> opSerialLargeJavaAsync(byte[] i, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        byte[] opSerialStructJava(byte[] i, out byte[] o, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task<MyClass_OpSerialStructJavaResult> opSerialStructJavaAsync(byte[] i, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
    }

    public sealed class MyClassPrxHelper : Ice.ObjectPrxHelperBase, MyClassPrx
    {
        public void shutdown(global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_shutdownAsync(context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public byte[] opSerialSmallJava(byte[] i, out byte[] o, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                var result_ = _iceI_opSerialSmallJavaAsync(i, context, null, global::System.Threading.CancellationToken.None, true).Result;
                o = result_.o;
                return result_.returnValue;
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public byte[] opSerialLargeJava(byte[] i, out byte[] o, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                var result_ = _iceI_opSerialLargeJavaAsync(i, context, null, global::System.Threading.CancellationToken.None, true).Result;
                o = result_.o;
                return result_.returnValue;
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public byte[] opSerialStructJava(byte[] i, out byte[] o, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                var result_ = _iceI_opSerialStructJavaAsync(i, context, null, global::System.Threading.CancellationToken.None, true).Result;
                o = result_.o;
                return result_.returnValue;
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public global::System.Threading.Tasks.Task shutdownAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_shutdownAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_shutdownAsync(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_shutdown(context, synchronous, completed);
            return completed.Task;
        }

        private const string _shutdown_name = "shutdown";

        private void _iceI_shutdown(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _shutdown_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous);
        }

        public global::System.Threading.Tasks.Task<MyClass_OpSerialSmallJavaResult> opSerialSmallJavaAsync(byte[] i, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_opSerialSmallJavaAsync(i, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<MyClass_OpSerialSmallJavaResult> _iceI_opSerialSmallJavaAsync(byte[] iceP_i, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_opSerialSmallJava_name);
            var completed = new Ice.Internal.OperationTaskCompletionCallback<MyClass_OpSerialSmallJavaResult>(progress, cancel);
            _iceI_opSerialSmallJava(iceP_i, context, synchronous, completed);
            return completed.Task;
        }

        private const string _opSerialSmallJava_name = "opSerialSmallJava";

        private void _iceI_opSerialSmallJava(byte[] iceP_i, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<MyClass_OpSerialSmallJavaResult>(completed);
            outAsync.invoke(
                _opSerialSmallJava_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    SerialSmallHelper.write(ostr, iceP_i);
                },
                read: (Ice.InputStream istr) =>
                {
                    var ret = new MyClass_OpSerialSmallJavaResult();
                    ret.o = SerialSmallHelper.read(istr);
                    ret.returnValue = SerialSmallHelper.read(istr);
                    return ret;
                });
        }

        public global::System.Threading.Tasks.Task<MyClass_OpSerialLargeJavaResult> opSerialLargeJavaAsync(byte[] i, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_opSerialLargeJavaAsync(i, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<MyClass_OpSerialLargeJavaResult> _iceI_opSerialLargeJavaAsync(byte[] iceP_i, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_opSerialLargeJava_name);
            var completed = new Ice.Internal.OperationTaskCompletionCallback<MyClass_OpSerialLargeJavaResult>(progress, cancel);
            _iceI_opSerialLargeJava(iceP_i, context, synchronous, completed);
            return completed.Task;
        }

        private const string _opSerialLargeJava_name = "opSerialLargeJava";

        private void _iceI_opSerialLargeJava(byte[] iceP_i, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<MyClass_OpSerialLargeJavaResult>(completed);
            outAsync.invoke(
                _opSerialLargeJava_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    SerialLargeHelper.write(ostr, iceP_i);
                },
                read: (Ice.InputStream istr) =>
                {
                    var ret = new MyClass_OpSerialLargeJavaResult();
                    ret.o = SerialLargeHelper.read(istr);
                    ret.returnValue = SerialLargeHelper.read(istr);
                    return ret;
                });
        }

        public global::System.Threading.Tasks.Task<MyClass_OpSerialStructJavaResult> opSerialStructJavaAsync(byte[] i, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_opSerialStructJavaAsync(i, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<MyClass_OpSerialStructJavaResult> _iceI_opSerialStructJavaAsync(byte[] iceP_i, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_opSerialStructJava_name);
            var completed = new Ice.Internal.OperationTaskCompletionCallback<MyClass_OpSerialStructJavaResult>(progress, cancel);
            _iceI_opSerialStructJava(iceP_i, context, synchronous, completed);
            return completed.Task;
        }

        private const string _opSerialStructJava_name = "opSerialStructJava";

        private void _iceI_opSerialStructJava(byte[] iceP_i, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<MyClass_OpSerialStructJavaResult>(completed);
            outAsync.invoke(
                _opSerialStructJava_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    SerialStructHelper.write(ostr, iceP_i);
                },
                read: (Ice.InputStream istr) =>
                {
                    var ret = new MyClass_OpSerialStructJavaResult();
                    ret.o = SerialStructHelper.read(istr);
                    ret.returnValue = SerialStructHelper.read(istr);
                    return ret;
                });
        }

        public static MyClassPrx createProxy(Ice.Communicator communicator, string proxyString) =>
            new MyClassPrxHelper(Ice.ObjectPrxHelper.createProxy(communicator, proxyString));

        public static MyClassPrx? checkedCast(Ice.ObjectPrx? b, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            b is not null && b.ice_isA(ice_staticId(), ctx) ? new MyClassPrxHelper(b) : null;

        public static MyClassPrx? checkedCast(Ice.ObjectPrx? b, string f, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            checkedCast(b?.ice_facet(f), ctx);

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static MyClassPrx? uncheckedCast(Ice.ObjectPrx? b) =>
            b is not null ? new MyClassPrxHelper(b) : null;

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static MyClassPrx? uncheckedCast(Ice.ObjectPrx? b, string f) =>
            uncheckedCast(b?.ice_facet(f));

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::MyClass"
        };

        public static string ice_staticId() => "::Test::MyClass";

        public static void write(Ice.OutputStream ostr, MyClassPrx? v)
        {
            ostr.writeProxy(v);
        }

        public static MyClassPrx? read(Ice.InputStream istr) =>
            istr.readProxy() is Ice.ObjectPrx proxy ? new MyClassPrxHelper(proxy) : null;

        protected override Ice.ObjectPrxHelperBase iceNewInstance(Ice.Internal.Reference reference) => new MyClassPrxHelper(reference);

        private MyClassPrxHelper(Ice.ObjectPrx proxy)
            : base(proxy)
        {
        }

        private MyClassPrxHelper(Ice.Internal.Reference reference)
            : base(reference)
        {
        }
    }

    public sealed class SLSHelper
    {
        public static void write(Ice.OutputStream ostr, byte[][] v)
        {
            if (v is null)
            {
                ostr.writeSize(0);
            }
            else
            {
                ostr.writeSize(v.Length);
                for(int ix = 0; ix < v.Length; ++ix)
                {
                    SerialLargeHelper.write(ostr, v[ix]);
                }
            }
        }

        public static byte[][] read(Ice.InputStream istr)
        {
            byte[][] v;
            {
                int szx = istr.readAndCheckSeqSize(1);
                v = new byte[szx][];
                for(int ix = 0; ix < szx; ++ix)
                {
                    v[ix] = SerialLargeHelper.read(istr);
                }
            }
            return v;
        }
    }

    public sealed class SLSSHelper
    {
        public static void write(Ice.OutputStream ostr, byte[][][] v)
        {
            if (v is null)
            {
                ostr.writeSize(0);
            }
            else
            {
                ostr.writeSize(v.Length);
                for(int ix = 0; ix < v.Length; ++ix)
                {
                    SLSHelper.write(ostr, v[ix]);
                }
            }
        }

        public static byte[][][] read(Ice.InputStream istr)
        {
            byte[][][] v;
            {
                int szx = istr.readAndCheckSeqSize(1);
                v = new byte[szx][][];
                for(int ix = 0; ix < szx; ++ix)
                {
                    v[ix] = SLSHelper.read(istr);
                }
            }
            return v;
        }
    }

    public sealed class SLDHelper
    {
        public static void write(Ice.OutputStream ostr,
                                 global::System.Collections.Generic.Dictionary<int, byte[]> v)
        {
            if(v == null)
            {
                ostr.writeSize(0);
            }
            else
            {
                ostr.writeSize(v.Count);
                foreach(global::System.Collections.Generic.KeyValuePair<int, byte[]> e in v)
                {
                    ostr.writeInt(e.Key);
                    SerialLargeHelper.write(ostr, e.Value);
                }
            }
        }

        public static global::System.Collections.Generic.Dictionary<int, byte[]> read(Ice.InputStream istr)
        {
            int sz = istr.readSize();
            global::System.Collections.Generic.Dictionary<int, byte[]> r = new global::System.Collections.Generic.Dictionary<int, byte[]>();
            for(int i = 0; i < sz; ++i)
            {
                int k;
                k = istr.readInt();
                byte[] v;
                v = SerialLargeHelper.read(istr);
                r[k] = v;
            }
            return r;
        }
    }

    public sealed class SLSDHelper
    {
        public static void write(Ice.OutputStream ostr,
                                 global::System.Collections.Generic.Dictionary<int, byte[][]> v)
        {
            if(v == null)
            {
                ostr.writeSize(0);
            }
            else
            {
                ostr.writeSize(v.Count);
                foreach(global::System.Collections.Generic.KeyValuePair<int, byte[][]> e in v)
                {
                    ostr.writeInt(e.Key);
                    SLSHelper.write(ostr, e.Value);
                }
            }
        }

        public static global::System.Collections.Generic.Dictionary<int, byte[][]> read(Ice.InputStream istr)
        {
            int sz = istr.readSize();
            global::System.Collections.Generic.Dictionary<int, byte[][]> r = new global::System.Collections.Generic.Dictionary<int, byte[][]>();
            for(int i = 0; i < sz; ++i)
            {
                int k;
                k = istr.readInt();
                byte[][] v;
                v = SLSHelper.read(istr);
                r[k] = v;
            }
            return r;
        }
    }

    public sealed partial record class Foo
    {
        public byte[] SLmem;

        public byte[][] SLSmem;

        partial void ice_initialize();

        public Foo(byte[] SLmem, byte[][] SLSmem)
        {
            global::System.ArgumentNullException.ThrowIfNull(SLmem);
            this.SLmem = SLmem;
            global::System.ArgumentNullException.ThrowIfNull(SLSmem);
            this.SLSmem = SLSmem;
            ice_initialize();
        }

        public Foo(Ice.InputStream istr)
        {
            this.SLmem = SerialLargeHelper.read(istr);
            this.SLSmem = SLSHelper.read(istr);
            ice_initialize();
        }

        public void ice_writeMembers(Ice.OutputStream ostr)
        {
            SerialLargeHelper.write(ostr, this.SLmem);
            SLSHelper.write(ostr, this.SLSmem);
        }

        public static void ice_write(Ice.OutputStream ostr, Foo v)
        {
            v.ice_writeMembers(ostr);
        }

        public static Foo ice_read(Ice.InputStream istr) => new(istr);
    }

    [Ice.SliceTypeId("::Test::Bar")]
    public partial class Bar : Ice.UserException
    {
        public byte[] SLmem;

        public byte[][] SLSmem;

        public Bar(byte[] SLmem, byte[][] SLSmem)
        {
            global::System.ArgumentNullException.ThrowIfNull(SLmem);
            this.SLmem = SLmem;
            global::System.ArgumentNullException.ThrowIfNull(SLSmem);
            this.SLSmem = SLSmem;
        }

        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Bar()
        {
            this.SLmem = null!;
            this.SLSmem = null!;
        }

        public override string ice_id() => "::Test::Bar";

        protected override void iceWriteImpl(Ice.OutputStream ostr_)
        {
            ostr_.startSlice("::Test::Bar", -1, true);
            SerialLargeHelper.write(ostr_, SLmem);
            SLSHelper.write(ostr_, SLSmem);
            ostr_.endSlice();
        }

        protected override void iceReadImpl(Ice.InputStream istr_)
        {
            istr_.startSlice();
            SLmem = SerialLargeHelper.read(istr_);
            SLSmem = SLSHelper.read(istr_);
            istr_.endSlice();
        }
    }

    [Ice.SliceTypeId("::Test::Baz")]
    public partial class Baz : Ice.Value
    {
        public byte[] SLmem;

        public byte[][] SLSmem;

        partial void ice_initialize();

        public Baz(byte[] SLmem, byte[][] SLSmem)
        {
            global::System.ArgumentNullException.ThrowIfNull(SLmem);
            this.SLmem = SLmem;
            global::System.ArgumentNullException.ThrowIfNull(SLSmem);
            this.SLSmem = SLSmem;
            ice_initialize();
        }

        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Baz()
        {
            this.SLmem = null!;
            this.SLSmem = null!;
            ice_initialize();
        }

        public static new string ice_staticId() => "::Test::Baz";
        public override string ice_id() => ice_staticId();

        protected override void iceWriteImpl(Ice.OutputStream ostr_)
        {
            ostr_.startSlice(ice_staticId(), -1, true);
            SerialLargeHelper.write(ostr_, SLmem);
            SLSHelper.write(ostr_, SLSmem);
            ostr_.endSlice();
        }

        protected override void iceReadImpl(Ice.InputStream istr_)
        {
            istr_.startSlice();
            SLmem = SerialLargeHelper.read(istr_);
            SLSmem = SLSHelper.read(istr_);
            istr_.endSlice();
        }
    }
}

namespace Test
{
    public record struct MyClass_OpSerialSmallJavaResult(byte[] returnValue, byte[] o);

    public record struct MyClass_OpSerialLargeJavaResult(byte[] returnValue, byte[] o);

    public record struct MyClass_OpSerialStructJavaResult(byte[] returnValue, byte[] o);
}

namespace Test
{
    [Ice.SliceTypeId("::Test::MyClass")]
    public partial interface MyClass : Ice.Object
    {
        void shutdown(Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_shutdownAsync(
            MyClass obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            obj.shutdown(request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        byte[] opSerialSmallJava(byte[] i, out byte[] o, Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_opSerialSmallJavaAsync(
            MyClass obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            byte[] iceP_i;
            iceP_i = SerialSmallHelper.read(istr);
            istr.endEncapsulation();
            byte[] iceP_o;
            var ret = obj.opSerialSmallJava(iceP_i, out iceP_o, request.current);
            var ostr = Ice.CurrentExtensions.startReplyStream(request.current);
            ostr.startEncapsulation(request.current.encoding, null);
            SerialSmallHelper.write(ostr, iceP_o);
            SerialSmallHelper.write(ostr, ret);
            ostr.endEncapsulation();
            return new(new Ice.OutgoingResponse(ostr));
        }

        byte[] opSerialLargeJava(byte[] i, out byte[] o, Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_opSerialLargeJavaAsync(
            MyClass obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            byte[] iceP_i;
            iceP_i = SerialLargeHelper.read(istr);
            istr.endEncapsulation();
            byte[] iceP_o;
            var ret = obj.opSerialLargeJava(iceP_i, out iceP_o, request.current);
            var ostr = Ice.CurrentExtensions.startReplyStream(request.current);
            ostr.startEncapsulation(request.current.encoding, null);
            SerialLargeHelper.write(ostr, iceP_o);
            SerialLargeHelper.write(ostr, ret);
            ostr.endEncapsulation();
            return new(new Ice.OutgoingResponse(ostr));
        }

        byte[] opSerialStructJava(byte[] i, out byte[] o, Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_opSerialStructJavaAsync(
            MyClass obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            byte[] iceP_i;
            iceP_i = SerialStructHelper.read(istr);
            istr.endEncapsulation();
            byte[] iceP_o;
            var ret = obj.opSerialStructJava(iceP_i, out iceP_o, request.current);
            var ostr = Ice.CurrentExtensions.startReplyStream(request.current);
            ostr.startEncapsulation(request.current.encoding, null);
            SerialStructHelper.write(ostr, iceP_o);
            SerialStructHelper.write(ostr, ret);
            ostr.endEncapsulation();
            return new(new Ice.OutgoingResponse(ostr));
        }
    }

    public abstract class MyClassDisp_ : Ice.ObjectImpl, MyClass
    {
        public abstract void shutdown(Ice.Current current);

        public abstract byte[] opSerialSmallJava(byte[] i, out byte[] o, Ice.Current current);

        public abstract byte[] opSerialLargeJava(byte[] i, out byte[] o, Ice.Current current);

        public abstract byte[] opSerialStructJava(byte[] i, out byte[] o, Ice.Current current);

        public override string ice_id(Ice.Current current) => ice_staticId();

        public static new string ice_staticId() => "::Test::MyClass";

        public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
            request.current.operation switch
            {
                "shutdown" => MyClass.iceD_shutdownAsync(this, request),
                "opSerialSmallJava" => MyClass.iceD_opSerialSmallJavaAsync(this, request),
                "opSerialLargeJava" => MyClass.iceD_opSerialLargeJavaAsync(this, request),
                "opSerialStructJava" => MyClass.iceD_opSerialStructJavaAsync(this, request),
                "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                _ => throw new Ice.OperationNotExistException()
            };
    }
}
