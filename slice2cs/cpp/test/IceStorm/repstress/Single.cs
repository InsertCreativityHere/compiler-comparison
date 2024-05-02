//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Single.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


using _System = global::System;

#pragma warning disable 1591

namespace Test
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
    public partial interface Single : global::Ice.Object, SingleOperations_
    {
    }
}

namespace Test
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public delegate void Callback_Single_event();
}

namespace Test
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public interface SinglePrx : global::Ice.ObjectPrx
    {
        void @event(int i, global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::System.Threading.Tasks.Task eventAsync(int i, global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken());
    }
}

namespace Test
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public interface SingleOperations_
    {
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        void @event(int i, global::Ice.Current current = null);
    }
}

namespace Test
{
    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public sealed class SinglePrxHelper : global::Ice.ObjectPrxHelperBase, SinglePrx
    {
        public SinglePrxHelper()
        {
        }

        #region Synchronous operations

        public void @event(int i, global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            try
            {
                _iceI_eventAsync(i, context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch(global::System.AggregateException ex_)
            {
                throw ex_.InnerException;
            }
        }

        #endregion

        #region Async Task operations

        public global::System.Threading.Tasks.Task eventAsync(int i, global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken())
        {
            return _iceI_eventAsync(i, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_eventAsync(int iceP_i, global::Ice.OptionalContext context, global::System.IProgress<bool> progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new global::Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_event(iceP_i, context, synchronous, completed);
            return completed.Task;
        }

        private const string _event_name = "event";

        private void _iceI_event(int iceP_i, global::System.Collections.Generic.Dictionary<string, string> context, bool synchronous, global::Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _event_name,
                global::Ice.OperationMode.Normal,
                global::Ice.FormatType.DefaultFormat,
                context,
                synchronous,
                write: (global::Ice.OutputStream ostr) =>
                {
                    ostr.writeInt(iceP_i);
                });
        }

        #endregion

        #region Checked and unchecked cast operations

        public static SinglePrx checkedCast(global::Ice.ObjectPrx b)
        {
            if(b == null)
            {
                return null;
            }
            SinglePrx r = b as SinglePrx;
            if((r == null) && b.ice_isA(ice_staticId()))
            {
                SinglePrxHelper h = new SinglePrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static SinglePrx checkedCast(global::Ice.ObjectPrx b, global::System.Collections.Generic.Dictionary<string, string> ctx)
        {
            if(b == null)
            {
                return null;
            }
            SinglePrx r = b as SinglePrx;
            if((r == null) && b.ice_isA(ice_staticId(), ctx))
            {
                SinglePrxHelper h = new SinglePrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static SinglePrx checkedCast(global::Ice.ObjectPrx b, string f)
        {
            if(b == null)
            {
                return null;
            }
            global::Ice.ObjectPrx bb = b.ice_facet(f);
            try
            {
                if(bb.ice_isA(ice_staticId()))
                {
                    SinglePrxHelper h = new SinglePrxHelper();
                    h.iceCopyFrom(bb);
                    return h;
                }
            }
            catch(global::Ice.FacetNotExistException)
            {
            }
            return null;
        }

        public static SinglePrx checkedCast(global::Ice.ObjectPrx b, string f, global::System.Collections.Generic.Dictionary<string, string> ctx)
        {
            if(b == null)
            {
                return null;
            }
            global::Ice.ObjectPrx bb = b.ice_facet(f);
            try
            {
                if(bb.ice_isA(ice_staticId(), ctx))
                {
                    SinglePrxHelper h = new SinglePrxHelper();
                    h.iceCopyFrom(bb);
                    return h;
                }
            }
            catch(global::Ice.FacetNotExistException)
            {
            }
            return null;
        }

        public static SinglePrx uncheckedCast(global::Ice.ObjectPrx b)
        {
            if(b == null)
            {
                return null;
            }
            SinglePrx r = b as SinglePrx;
            if(r == null)
            {
                SinglePrxHelper h = new SinglePrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static SinglePrx uncheckedCast(global::Ice.ObjectPrx b, string f)
        {
            if(b == null)
            {
                return null;
            }
            global::Ice.ObjectPrx bb = b.ice_facet(f);
            SinglePrxHelper h = new SinglePrxHelper();
            h.iceCopyFrom(bb);
            return h;
        }

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::Single"
        };

        public static string ice_staticId() => "::Test::Single";

        #endregion

        #region Marshaling support

        public static void write(global::Ice.OutputStream ostr, SinglePrx v)
        {
            ostr.writeProxy(v);
        }

        public static SinglePrx read(global::Ice.InputStream istr)
        {
            global::Ice.ObjectPrx proxy = istr.readProxy();
            if(proxy != null)
            {
                SinglePrxHelper result = new SinglePrxHelper();
                result.iceCopyFrom(proxy);
                return result;
            }
            return null;
        }

        #endregion
    }
}

namespace Test
{
    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public abstract class SingleDisp_ : global::Ice.ObjectImpl, Single
    {
        #region Slice operations

        public abstract void @event(int i, global::Ice.Current current = null);

        #endregion

        #region Slice type-related members

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::Single"
        };

        public override bool ice_isA(string s, global::Ice.Current current = null)
        {
            return global::System.Array.BinarySearch(_ids, s, Ice.UtilInternal.StringUtil.OrdinalStringComparer) >= 0;
        }

        public override string[] ice_ids(global::Ice.Current current = null)
        {
            return _ids;
        }

        public override string ice_id(global::Ice.Current current = null)
        {
            return ice_staticId();
        }

        public static new string ice_staticId()
        {
            return "::Test::Single";
        }

        #endregion

        #region Operation dispatch

        [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
        public static global::System.Threading.Tasks.Task<global::Ice.OutputStream>
        iceD_event(Single obj, global::Ice.Internal.Incoming inS, global::Ice.Current current)
        {
            global::Ice.ObjectImpl.iceCheckMode(global::Ice.OperationMode.Normal, current.mode);
            var istr = inS.startReadParams();
            int iceP_i;
            iceP_i = istr.readInt();
            inS.endReadParams();
            obj.@event(iceP_i, current);
            return inS.setResult(inS.writeEmptyParams());
        }

        private static readonly string[] _all =
        {
            "event",
            "ice_id",
            "ice_ids",
            "ice_isA",
            "ice_ping"
        };

        public override global::System.Threading.Tasks.Task<global::Ice.OutputStream>
        iceDispatch(global::Ice.Internal.Incoming inS, global::Ice.Current current)
        {
            int pos = global::System.Array.BinarySearch(_all, current.operation, global::Ice.UtilInternal.StringUtil.OrdinalStringComparer);
            if(pos < 0)
            {
                throw new global::Ice.OperationNotExistException(current.id, current.facet, current.operation);
            }

            switch(pos)
            {
                case 0:
                {
                    return iceD_event(this, inS, current);
                }
                case 1:
                {
                    return global::Ice.ObjectImpl.iceD_ice_id(this, inS, current);
                }
                case 2:
                {
                    return global::Ice.ObjectImpl.iceD_ice_ids(this, inS, current);
                }
                case 3:
                {
                    return global::Ice.ObjectImpl.iceD_ice_isA(this, inS, current);
                }
                case 4:
                {
                    return global::Ice.ObjectImpl.iceD_ice_ping(this, inS, current);
                }
            }

            global::System.Diagnostics.Debug.Assert(false);
            throw new global::Ice.OperationNotExistException(current.id, current.facet, current.operation);
        }

        #endregion
    }
}
