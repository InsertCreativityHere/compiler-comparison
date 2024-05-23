//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `PermissionsVerifier.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#nullable enable

[assembly:Ice.Slice("PermissionsVerifier.ice")]

#pragma warning disable 1591

namespace Glacier2
{
    /// <summary>
    /// This exception is raised if a client is denied the ability to create a session with the router.
    /// </summary>

    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1032")]
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
    [Ice.SliceTypeId("::Glacier2::PermissionDeniedException")]
    public partial class PermissionDeniedException : Ice.UserException
    {
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public string reason = "";

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public PermissionDeniedException(string reason, global::System.Exception? innerException = null) : base(innerException)
        {
            global::System.ArgumentNullException.ThrowIfNull(reason);
            this.reason = reason;
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public PermissionDeniedException(global::System.Exception? innerException) : base(innerException)
        {
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public PermissionDeniedException()
        {
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public override string ice_id()
        {
            return "::Glacier2::PermissionDeniedException";
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        protected override void iceWriteImpl(Ice.OutputStream ostr_)
        {
            ostr_.startSlice("::Glacier2::PermissionDeniedException", -1, true);
            ostr_.writeString(reason);
            ostr_.endSlice();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        protected override void iceReadImpl(Ice.InputStream istr_)
        {
            istr_.startSlice();
            reason = istr_.readString();
            istr_.endSlice();
        }
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
    [Ice.SliceTypeId("::Glacier2::PermissionsVerifier")]
    public partial interface PermissionsVerifier : Ice.Object
    {
        /// <summary>
        /// Check whether a user has permission to access the router.
        /// </summary>
        /// <param name="userId">The user id for which to check permission.
        ///  </param>
        /// <param name="password">The user's password.
        ///  </param>
        /// <param name="reason">The reason why access was denied.
        ///  </param>
        /// <returns>True if access is granted, or false otherwise.
        ///  </returns>
        /// <exception name="PermissionDeniedException">Raised if the user access is denied. This can be raised in place of
        ///  returning false with a reason set in the reason out parameter.</exception>
        /// <param name="current">The Current object for the dispatch.</param>

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        bool checkPermissions(string userId, string password, out string reason, Ice.Current current);
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
    [Ice.SliceTypeId("::Glacier2::SSLPermissionsVerifier")]
    public partial interface SSLPermissionsVerifier : Ice.Object
    {
        /// <summary>
        /// Check whether a user has permission to access the router.
        /// </summary>
        /// <param name="info">The SSL information.
        ///  </param>
        /// <param name="reason">The reason why access was denied.
        ///  </param>
        /// <returns>True if access is granted, or false otherwise.
        ///  </returns>
        /// <exception name="PermissionDeniedException">Raised if the user access is denied. This can be raised in place of
        ///  returning false with a reason set in the reason out parameter.
        ///  </exception>
        /// <param name="current">The Current object for the dispatch.</param>

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        bool authorize(SSLInfo info, out string reason, Ice.Current current);
    }
}

namespace Glacier2
{
    public record struct PermissionsVerifier_CheckPermissionsResult(bool returnValue, string reason);

    public record struct SSLPermissionsVerifier_AuthorizeResult(bool returnValue, string reason);
}

namespace Glacier2
{
    /// <summary>
    /// The Glacier2 permissions verifier.
    /// This is called through the process of establishing a session.
    /// </summary>

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public interface PermissionsVerifierPrx : Ice.ObjectPrx
    {
        /// <summary>
        /// Check whether a user has permission to access the router.
        /// </summary>
        /// <param name="userId">The user id for which to check permission.
        ///  </param>
        /// <param name="password">The user's password.
        ///  </param>
        /// <param name="reason">The reason why access was denied.
        ///  </param>
        /// <returns>True if access is granted, or false otherwise.
        ///  </returns>
        /// <exception name="PermissionDeniedException">Raised if the user access is denied. This can be raised in place of
        ///  returning false with a reason set in the reason out parameter.</exception>
        /// <param name="context">The Context map to send with the invocation.</param>

        bool checkPermissions(string userId, string password, out string reason, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        /// <summary>
        /// Check whether a user has permission to access the router.
        /// </summary>
        /// <param name="userId">The user id for which to check permission.
        ///  </param>
        /// <param name="password">The user's password.
        ///  </param>
        /// <param name="context">Context map to send with the invocation.</param>
        /// <param name="progress">Sent progress provider.</param>
        /// <param name="cancel">A cancellation token that receives the cancellation requests.</param>
        /// <returns>The task object representing the asynchronous operation.</returns>
        global::System.Threading.Tasks.Task<PermissionsVerifier_CheckPermissionsResult> checkPermissionsAsync(string userId, string password, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
    }

    /// <summary>
    /// The SSL Glacier2 permissions verifier.
    /// This is called through the process of establishing a session.
    /// </summary>

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public interface SSLPermissionsVerifierPrx : Ice.ObjectPrx
    {
        /// <summary>
        /// Check whether a user has permission to access the router.
        /// </summary>
        /// <param name="info">The SSL information.
        ///  </param>
        /// <param name="reason">The reason why access was denied.
        ///  </param>
        /// <returns>True if access is granted, or false otherwise.
        ///  </returns>
        /// <exception name="PermissionDeniedException">Raised if the user access is denied. This can be raised in place of
        ///  returning false with a reason set in the reason out parameter.
        ///  </exception>
        /// <param name="context">The Context map to send with the invocation.</param>

        bool authorize(SSLInfo info, out string reason, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        /// <summary>
        /// Check whether a user has permission to access the router.
        /// </summary>
        /// <param name="info">The SSL information.
        ///  </param>
        /// <param name="context">Context map to send with the invocation.</param>
        /// <param name="progress">Sent progress provider.</param>
        /// <param name="cancel">A cancellation token that receives the cancellation requests.</param>
        /// <returns>The task object representing the asynchronous operation.</returns>
        global::System.Threading.Tasks.Task<SSLPermissionsVerifier_AuthorizeResult> authorizeAsync(SSLInfo info, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
    }
}

namespace Glacier2
{
    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public sealed class PermissionsVerifierPrxHelper : Ice.ObjectPrxHelperBase, PermissionsVerifierPrx
    {
        public bool checkPermissions(string userId, string password, out string reason, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                var result_ = _iceI_checkPermissionsAsync(userId, password, context, null, global::System.Threading.CancellationToken.None, true).Result;
                reason = result_.reason;
                return result_.returnValue;
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public global::System.Threading.Tasks.Task<PermissionsVerifier_CheckPermissionsResult> checkPermissionsAsync(string userId, string password, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_checkPermissionsAsync(userId, password, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<PermissionsVerifier_CheckPermissionsResult> _iceI_checkPermissionsAsync(string iceP_userId, string iceP_password, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_checkPermissions_name);
            var completed = new Ice.Internal.OperationTaskCompletionCallback<PermissionsVerifier_CheckPermissionsResult>(progress, cancel);
            _iceI_checkPermissions(iceP_userId, iceP_password, context, synchronous, completed);
            return completed.Task;
        }

        private const string _checkPermissions_name = "checkPermissions";

        private void _iceI_checkPermissions(string iceP_userId, string iceP_password, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<PermissionsVerifier_CheckPermissionsResult>(completed);
            outAsync.invoke(
                _checkPermissions_name,
                Ice.OperationMode.Idempotent,
                Ice.FormatType.SlicedFormat,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    ostr.writeString(iceP_userId);
                    ostr.writeString(iceP_password);
                },
                userException: (Ice.UserException ex) =>
                {
                    try
                    {
                        throw ex;
                    }
                    catch(PermissionDeniedException)
                    {
                        throw;
                    }
                    catch(Ice.UserException)
                    {
                    }
                },
                read: (Ice.InputStream istr) =>
                {
                    var ret = new PermissionsVerifier_CheckPermissionsResult();
                    ret.reason = istr.readString();
                    ret.returnValue = istr.readBool();
                    return ret;
                });
        }

        public static PermissionsVerifierPrx createProxy(Ice.Communicator communicator, string proxyString) =>
            new PermissionsVerifierPrxHelper(Ice.ObjectPrxHelper.createProxy(communicator, proxyString));

        public static PermissionsVerifierPrx? checkedCast(Ice.ObjectPrx b, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            b is not null && b.ice_isA(ice_staticId(), ctx) ? new PermissionsVerifierPrxHelper(b) : null;

        public static PermissionsVerifierPrx? checkedCast(Ice.ObjectPrx b, string f, global::System.Collections.Generic.Dictionary<string, string>? ctx = null)
        {
            Ice.ObjectPrx? bb = b?.ice_facet(f);
            try
            {
                if (bb is not null && bb.ice_isA(ice_staticId(), ctx))
                {
                    return new PermissionsVerifierPrxHelper(bb);
                }
            }
            catch (Ice.FacetNotExistException)
            {
            }
            return null;
        }

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static PermissionsVerifierPrx? uncheckedCast(Ice.ObjectPrx? b) =>
            b is not null ? new PermissionsVerifierPrxHelper(b) : null;

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static PermissionsVerifierPrx? uncheckedCast(Ice.ObjectPrx? b, string f) =>
            b is not null ? new PermissionsVerifierPrxHelper(b.ice_facet(f)) : null;

        private static readonly string[] _ids =
        {
            "::Glacier2::PermissionsVerifier",
            "::Ice::Object"
        };

        public static string ice_staticId() => "::Glacier2::PermissionsVerifier";

        public static void write(Ice.OutputStream ostr, PermissionsVerifierPrx? v)
        {
            ostr.writeProxy(v);
        }

        public static PermissionsVerifierPrx? read(Ice.InputStream istr) =>
            istr.readProxy() is Ice.ObjectPrx proxy ? new PermissionsVerifierPrxHelper(proxy) : null;

        protected override Ice.ObjectPrxHelperBase iceNewInstance(Ice.Internal.Reference reference) => new PermissionsVerifierPrxHelper(reference);

        private PermissionsVerifierPrxHelper(Ice.ObjectPrx proxy)
            : base(proxy)
        {
        }

        private PermissionsVerifierPrxHelper(Ice.Internal.Reference reference)
            : base(reference)
        {
        }
    }

    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public sealed class SSLPermissionsVerifierPrxHelper : Ice.ObjectPrxHelperBase, SSLPermissionsVerifierPrx
    {
        public bool authorize(SSLInfo info, out string reason, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                var result_ = _iceI_authorizeAsync(info, context, null, global::System.Threading.CancellationToken.None, true).Result;
                reason = result_.reason;
                return result_.returnValue;
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public global::System.Threading.Tasks.Task<SSLPermissionsVerifier_AuthorizeResult> authorizeAsync(SSLInfo info, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_authorizeAsync(info, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<SSLPermissionsVerifier_AuthorizeResult> _iceI_authorizeAsync(SSLInfo iceP_info, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_authorize_name);
            var completed = new Ice.Internal.OperationTaskCompletionCallback<SSLPermissionsVerifier_AuthorizeResult>(progress, cancel);
            _iceI_authorize(iceP_info, context, synchronous, completed);
            return completed.Task;
        }

        private const string _authorize_name = "authorize";

        private void _iceI_authorize(SSLInfo iceP_info, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<SSLPermissionsVerifier_AuthorizeResult>(completed);
            outAsync.invoke(
                _authorize_name,
                Ice.OperationMode.Idempotent,
                Ice.FormatType.SlicedFormat,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    SSLInfo.ice_write(ostr, iceP_info);
                },
                userException: (Ice.UserException ex) =>
                {
                    try
                    {
                        throw ex;
                    }
                    catch(PermissionDeniedException)
                    {
                        throw;
                    }
                    catch(Ice.UserException)
                    {
                    }
                },
                read: (Ice.InputStream istr) =>
                {
                    var ret = new SSLPermissionsVerifier_AuthorizeResult();
                    ret.reason = istr.readString();
                    ret.returnValue = istr.readBool();
                    return ret;
                });
        }

        public static SSLPermissionsVerifierPrx createProxy(Ice.Communicator communicator, string proxyString) =>
            new SSLPermissionsVerifierPrxHelper(Ice.ObjectPrxHelper.createProxy(communicator, proxyString));

        public static SSLPermissionsVerifierPrx? checkedCast(Ice.ObjectPrx b, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            b is not null && b.ice_isA(ice_staticId(), ctx) ? new SSLPermissionsVerifierPrxHelper(b) : null;

        public static SSLPermissionsVerifierPrx? checkedCast(Ice.ObjectPrx b, string f, global::System.Collections.Generic.Dictionary<string, string>? ctx = null)
        {
            Ice.ObjectPrx? bb = b?.ice_facet(f);
            try
            {
                if (bb is not null && bb.ice_isA(ice_staticId(), ctx))
                {
                    return new SSLPermissionsVerifierPrxHelper(bb);
                }
            }
            catch (Ice.FacetNotExistException)
            {
            }
            return null;
        }

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static SSLPermissionsVerifierPrx? uncheckedCast(Ice.ObjectPrx? b) =>
            b is not null ? new SSLPermissionsVerifierPrxHelper(b) : null;

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static SSLPermissionsVerifierPrx? uncheckedCast(Ice.ObjectPrx? b, string f) =>
            b is not null ? new SSLPermissionsVerifierPrxHelper(b.ice_facet(f)) : null;

        private static readonly string[] _ids =
        {
            "::Glacier2::SSLPermissionsVerifier",
            "::Ice::Object"
        };

        public static string ice_staticId() => "::Glacier2::SSLPermissionsVerifier";

        public static void write(Ice.OutputStream ostr, SSLPermissionsVerifierPrx? v)
        {
            ostr.writeProxy(v);
        }

        public static SSLPermissionsVerifierPrx? read(Ice.InputStream istr) =>
            istr.readProxy() is Ice.ObjectPrx proxy ? new SSLPermissionsVerifierPrxHelper(proxy) : null;

        protected override Ice.ObjectPrxHelperBase iceNewInstance(Ice.Internal.Reference reference) => new SSLPermissionsVerifierPrxHelper(reference);

        private SSLPermissionsVerifierPrxHelper(Ice.ObjectPrx proxy)
            : base(proxy)
        {
        }

        private SSLPermissionsVerifierPrxHelper(Ice.Internal.Reference reference)
            : base(reference)
        {
        }
    }
}

namespace Glacier2
{
    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public abstract class PermissionsVerifierDisp_ : Ice.ObjectImpl, PermissionsVerifier
    {
        public abstract bool checkPermissions(string userId, string password, out string reason, Ice.Current current);

        public override string ice_id(Ice.Current current) => ice_staticId();

        public static new string ice_staticId() => "::Glacier2::PermissionsVerifier";

        public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
            request.current.operation switch
            {
                "checkPermissions" => PermissionsVerifier.iceD_checkPermissionsAsync(this, request),
                "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                _ => throw new Ice.OperationNotExistException()
            };
    }

    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public abstract class SSLPermissionsVerifierDisp_ : Ice.ObjectImpl, SSLPermissionsVerifier
    {
        public abstract bool authorize(SSLInfo info, out string reason, Ice.Current current);

        public override string ice_id(Ice.Current current) => ice_staticId();

        public static new string ice_staticId() => "::Glacier2::SSLPermissionsVerifier";

        public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
            request.current.operation switch
            {
                "authorize" => SSLPermissionsVerifier.iceD_authorizeAsync(this, request),
                "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                _ => throw new Ice.OperationNotExistException()
            };
    }
}

namespace Glacier2
{
    public partial interface PermissionsVerifier
    {
        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_checkPermissionsAsync(
            PermissionsVerifier obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Idempotent, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            string iceP_userId;
            string iceP_password;
            iceP_userId = istr.readString();
            iceP_password = istr.readString();
            istr.endEncapsulation();
            string iceP_reason;
            var ret = obj.checkPermissions(iceP_userId, iceP_password, out iceP_reason, request.current);
            var ostr = Ice.CurrentExtensions.startReplyStream(request.current);
            ostr.startEncapsulation(request.current.encoding, Ice.FormatType.SlicedFormat);
            ostr.writeString(iceP_reason);
            ostr.writeBool(ret);
            ostr.endEncapsulation();
            return new(new Ice.OutgoingResponse(ostr));
        }
    }

    public partial interface SSLPermissionsVerifier
    {
        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_authorizeAsync(
            SSLPermissionsVerifier obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Idempotent, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            SSLInfo iceP_info;
            iceP_info = new SSLInfo(istr);
            istr.endEncapsulation();
            string iceP_reason;
            var ret = obj.authorize(iceP_info, out iceP_reason, request.current);
            var ostr = Ice.CurrentExtensions.startReplyStream(request.current);
            ostr.startEncapsulation(request.current.encoding, Ice.FormatType.SlicedFormat);
            ostr.writeString(iceP_reason);
            ostr.writeBool(ret);
            ostr.endEncapsulation();
            return new(new Ice.OutgoingResponse(ostr));
        }
    }
}
