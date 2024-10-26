//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServiceManager.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#nullable enable

[assembly:Ice.Slice("ServiceManager.ice")]

#pragma warning disable CS1591 // Missing XML Comment
#pragma warning disable CS1573 // Parameter has no matching param tag in the XML comment
#pragma warning disable CS0612 // Type or member is obsolete
#pragma warning disable CS0618 // Type or member is obsolete
#pragma warning disable CS0619 // Type or member is obsolete

namespace IceBox
{
    /// <summary>
    /// This exception is thrown if an attempt is made to start an already-started service.
    /// </summary>

    [Ice.SliceTypeId("::IceBox::AlreadyStartedException")]
    public partial class AlreadyStartedException : Ice.UserException
    {
        public override string ice_id() => "::IceBox::AlreadyStartedException";

        protected override void iceWriteImpl(Ice.OutputStream ostr_)
        {
            ostr_.startSlice("::IceBox::AlreadyStartedException", -1, true);
            ostr_.endSlice();
        }

        protected override void iceReadImpl(Ice.InputStream istr_)
        {
            istr_.startSlice();
            istr_.endSlice();
        }
    }

    /// <summary>
    /// This exception is thrown if an attempt is made to stop an already-stopped service.
    /// </summary>

    [Ice.SliceTypeId("::IceBox::AlreadyStoppedException")]
    public partial class AlreadyStoppedException : Ice.UserException
    {
        public override string ice_id() => "::IceBox::AlreadyStoppedException";

        protected override void iceWriteImpl(Ice.OutputStream ostr_)
        {
            ostr_.startSlice("::IceBox::AlreadyStoppedException", -1, true);
            ostr_.endSlice();
        }

        protected override void iceReadImpl(Ice.InputStream istr_)
        {
            istr_.startSlice();
            istr_.endSlice();
        }
    }

    /// <summary>
    /// This exception is thrown if a service name does not refer to an existing service.
    /// </summary>

    [Ice.SliceTypeId("::IceBox::NoSuchServiceException")]
    public partial class NoSuchServiceException : Ice.UserException
    {
        public override string ice_id() => "::IceBox::NoSuchServiceException";

        protected override void iceWriteImpl(Ice.OutputStream ostr_)
        {
            ostr_.startSlice("::IceBox::NoSuchServiceException", -1, true);
            ostr_.endSlice();
        }

        protected override void iceReadImpl(Ice.InputStream istr_)
        {
            istr_.startSlice();
            istr_.endSlice();
        }
    }

    [Ice.SliceTypeId("::IceBox::ServiceObserver")]
    public partial interface ServiceObserver : Ice.Object
    {
        /// <summary>
        /// Receives the names of the services that were started.
        /// </summary>
        /// <param name="services">The names of the services.</param>
        /// <param name="current">The Current object for the dispatch.</param>

        void servicesStarted(string[] services, Ice.Current current);

        /// <summary>
        /// Receives the names of the services that were stopped.
        /// </summary>
        /// <param name="services">The names of the services.</param>
        /// <param name="current">The Current object for the dispatch.</param>

        void servicesStopped(string[] services, Ice.Current current);
    }

    [Ice.SliceTypeId("::IceBox::ServiceManager")]
    public partial interface ServiceManager : Ice.Object
    {
        /// <summary>
        /// Start an individual service.
        /// </summary>
        /// <param name="service">The service name.
        ///  </param>
        /// <exception name="AlreadyStartedException">If the service is already running.
        ///  </exception>
        /// <exception name="NoSuchServiceException">If no service could be found with the given name.</exception>
        /// <param name="current">The Current object for the dispatch.</param>

        void startService(string service, Ice.Current current);

        /// <summary>
        /// Stop an individual service.
        /// </summary>
        /// <param name="service">The service name.
        ///  </param>
        /// <exception name="AlreadyStoppedException">If the service is already stopped.
        ///  </exception>
        /// <exception name="NoSuchServiceException">If no service could be found with the given name.</exception>
        /// <param name="current">The Current object for the dispatch.</param>

        void stopService(string service, Ice.Current current);

        /// <summary>
        /// Registers a new observer with the ServiceManager.
        /// </summary>
        /// <param name="observer">The new observer</param>
        /// <param name="current">The Current object for the dispatch.</param>

        void addObserver(ServiceObserverPrx? observer, Ice.Current current);

        /// <summary>
        /// Shut down all services.
        /// This causes stop to be invoked on all configured services.
        /// </summary>
        /// <param name="current">The Current object for the dispatch.</param>

        void shutdown(Ice.Current current);
    }
}

namespace IceBox
{
    /// <summary>
    /// An Observer interface implemented by admin clients interested in the status of services.
    /// </summary>

    public interface ServiceObserverPrx : Ice.ObjectPrx
    {
        /// <summary>
        /// Receives the names of the services that were started.
        /// </summary>
        /// <param name="services">The names of the services.</param>
        /// <param name="context">The Context map to send with the invocation.</param>

        void servicesStarted(string[] services, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        /// <summary>
        /// Receives the names of the services that were started.
        /// </summary>
        /// <param name="services">The names of the services.</param>
        /// <param name="context">Context map to send with the invocation.</param>
        /// <param name="progress">Sent progress provider.</param>
        /// <param name="cancel">A cancellation token that receives the cancellation requests.</param>
        /// <returns>The task object representing the asynchronous operation.</returns>
        global::System.Threading.Tasks.Task servicesStartedAsync(string[] services, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        /// <summary>
        /// Receives the names of the services that were stopped.
        /// </summary>
        /// <param name="services">The names of the services.</param>
        /// <param name="context">The Context map to send with the invocation.</param>

        void servicesStopped(string[] services, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        /// <summary>
        /// Receives the names of the services that were stopped.
        /// </summary>
        /// <param name="services">The names of the services.</param>
        /// <param name="context">Context map to send with the invocation.</param>
        /// <param name="progress">Sent progress provider.</param>
        /// <param name="cancel">A cancellation token that receives the cancellation requests.</param>
        /// <returns>The task object representing the asynchronous operation.</returns>
        global::System.Threading.Tasks.Task servicesStoppedAsync(string[] services, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
    }

    /// <summary>
    /// Administers a set of IceBox Service instances.
    /// </summary>

    public interface ServiceManagerPrx : Ice.ObjectPrx
    {
        /// <summary>
        /// Start an individual service.
        /// </summary>
        /// <param name="service">The service name.
        ///  </param>
        /// <exception name="AlreadyStartedException">If the service is already running.
        ///  </exception>
        /// <exception name="NoSuchServiceException">If no service could be found with the given name.</exception>
        /// <param name="context">The Context map to send with the invocation.</param>

        void startService(string service, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        /// <summary>
        /// Start an individual service.
        /// </summary>
        /// <param name="service">The service name.
        ///  </param>
        /// <param name="context">Context map to send with the invocation.</param>
        /// <param name="progress">Sent progress provider.</param>
        /// <param name="cancel">A cancellation token that receives the cancellation requests.</param>
        /// <returns>The task object representing the asynchronous operation.</returns>
        global::System.Threading.Tasks.Task startServiceAsync(string service, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        /// <summary>
        /// Stop an individual service.
        /// </summary>
        /// <param name="service">The service name.
        ///  </param>
        /// <exception name="AlreadyStoppedException">If the service is already stopped.
        ///  </exception>
        /// <exception name="NoSuchServiceException">If no service could be found with the given name.</exception>
        /// <param name="context">The Context map to send with the invocation.</param>

        void stopService(string service, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        /// <summary>
        /// Stop an individual service.
        /// </summary>
        /// <param name="service">The service name.
        ///  </param>
        /// <param name="context">Context map to send with the invocation.</param>
        /// <param name="progress">Sent progress provider.</param>
        /// <param name="cancel">A cancellation token that receives the cancellation requests.</param>
        /// <returns>The task object representing the asynchronous operation.</returns>
        global::System.Threading.Tasks.Task stopServiceAsync(string service, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        /// <summary>
        /// Registers a new observer with the ServiceManager.
        /// </summary>
        /// <param name="observer">The new observer</param>
        /// <param name="context">The Context map to send with the invocation.</param>

        void addObserver(ServiceObserverPrx? observer, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        /// <summary>
        /// Registers a new observer with the ServiceManager.
        /// </summary>
        /// <param name="observer">The new observer</param>
        /// <param name="context">Context map to send with the invocation.</param>
        /// <param name="progress">Sent progress provider.</param>
        /// <param name="cancel">A cancellation token that receives the cancellation requests.</param>
        /// <returns>The task object representing the asynchronous operation.</returns>
        global::System.Threading.Tasks.Task addObserverAsync(ServiceObserverPrx? observer, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        /// <summary>
        /// Shut down all services.
        /// This causes stop to be invoked on all configured services.
        /// </summary>
        /// <param name="context">The Context map to send with the invocation.</param>

        void shutdown(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        /// <summary>
        /// Shut down all services.
        /// This causes stop to be invoked on all configured services.
        /// </summary>
        /// <param name="context">Context map to send with the invocation.</param>
        /// <param name="progress">Sent progress provider.</param>
        /// <param name="cancel">A cancellation token that receives the cancellation requests.</param>
        /// <returns>The task object representing the asynchronous operation.</returns>
        global::System.Threading.Tasks.Task shutdownAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
    }
}

namespace IceBox
{
    public sealed class ServiceObserverPrxHelper : Ice.ObjectPrxHelperBase, ServiceObserverPrx
    {
        public void servicesStarted(string[] services, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_servicesStartedAsync(services, context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public void servicesStopped(string[] services, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_servicesStoppedAsync(services, context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public global::System.Threading.Tasks.Task servicesStartedAsync(string[] services, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_servicesStartedAsync(services, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_servicesStartedAsync(string[] iceP_services, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_servicesStarted(iceP_services, context, synchronous, completed);
            return completed.Task;
        }

        private const string _servicesStarted_name = "servicesStarted";

        private void _iceI_servicesStarted(string[] iceP_services, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _servicesStarted_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    global::Ice.StringSeqHelper.write(ostr, iceP_services);
                });
        }

        public global::System.Threading.Tasks.Task servicesStoppedAsync(string[] services, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_servicesStoppedAsync(services, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_servicesStoppedAsync(string[] iceP_services, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_servicesStopped(iceP_services, context, synchronous, completed);
            return completed.Task;
        }

        private const string _servicesStopped_name = "servicesStopped";

        private void _iceI_servicesStopped(string[] iceP_services, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _servicesStopped_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    global::Ice.StringSeqHelper.write(ostr, iceP_services);
                });
        }

        public static ServiceObserverPrx createProxy(Ice.Communicator communicator, string proxyString) =>
            new ServiceObserverPrxHelper(Ice.ObjectPrxHelper.createProxy(communicator, proxyString));

        public static ServiceObserverPrx? checkedCast(Ice.ObjectPrx? b, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            b is not null && b.ice_isA(ice_staticId(), ctx) ? new ServiceObserverPrxHelper(b) : null;

        public static ServiceObserverPrx? checkedCast(Ice.ObjectPrx? b, string f, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            checkedCast(b?.ice_facet(f), ctx);

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static ServiceObserverPrx? uncheckedCast(Ice.ObjectPrx? b) =>
            b is not null ? new ServiceObserverPrxHelper(b) : null;

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static ServiceObserverPrx? uncheckedCast(Ice.ObjectPrx? b, string f) =>
            uncheckedCast(b?.ice_facet(f));

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::IceBox::ServiceObserver"
        };

        public static string ice_staticId() => "::IceBox::ServiceObserver";

        public static void write(Ice.OutputStream ostr, ServiceObserverPrx? v)
        {
            ostr.writeProxy(v);
        }

        public static ServiceObserverPrx? read(Ice.InputStream istr) =>
            istr.readProxy() is Ice.ObjectPrx proxy ? new ServiceObserverPrxHelper(proxy) : null;

        protected override Ice.ObjectPrxHelperBase iceNewInstance(Ice.Internal.Reference reference) => new ServiceObserverPrxHelper(reference);

        private ServiceObserverPrxHelper(Ice.ObjectPrx proxy)
            : base(proxy)
        {
        }

        private ServiceObserverPrxHelper(Ice.Internal.Reference reference)
            : base(reference)
        {
        }
    }

    public sealed class ServiceManagerPrxHelper : Ice.ObjectPrxHelperBase, ServiceManagerPrx
    {
        public void startService(string service, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_startServiceAsync(service, context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public void stopService(string service, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_stopServiceAsync(service, context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public void addObserver(ServiceObserverPrx? observer, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_addObserverAsync(observer, context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

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

        public global::System.Threading.Tasks.Task startServiceAsync(string service, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_startServiceAsync(service, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_startServiceAsync(string iceP_service, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_startService_name);
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_startService(iceP_service, context, synchronous, completed);
            return completed.Task;
        }

        private const string _startService_name = "startService";

        private void _iceI_startService(string iceP_service, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _startService_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    ostr.writeString(iceP_service);
                },
                userException: (Ice.UserException ex) =>
                {
                    try
                    {
                        throw ex;
                    }
                    catch(AlreadyStartedException)
                    {
                        throw;
                    }
                    catch(NoSuchServiceException)
                    {
                        throw;
                    }
                    catch(Ice.UserException)
                    {
                    }
                });
        }

        public global::System.Threading.Tasks.Task stopServiceAsync(string service, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_stopServiceAsync(service, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_stopServiceAsync(string iceP_service, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_stopService_name);
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_stopService(iceP_service, context, synchronous, completed);
            return completed.Task;
        }

        private const string _stopService_name = "stopService";

        private void _iceI_stopService(string iceP_service, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _stopService_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    ostr.writeString(iceP_service);
                },
                userException: (Ice.UserException ex) =>
                {
                    try
                    {
                        throw ex;
                    }
                    catch(AlreadyStoppedException)
                    {
                        throw;
                    }
                    catch(NoSuchServiceException)
                    {
                        throw;
                    }
                    catch(Ice.UserException)
                    {
                    }
                });
        }

        public global::System.Threading.Tasks.Task addObserverAsync(ServiceObserverPrx? observer, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_addObserverAsync(observer, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_addObserverAsync(ServiceObserverPrx? iceP_observer, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_addObserver(iceP_observer, context, synchronous, completed);
            return completed.Task;
        }

        private const string _addObserver_name = "addObserver";

        private void _iceI_addObserver(ServiceObserverPrx? iceP_observer, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _addObserver_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    ServiceObserverPrxHelper.write(ostr, iceP_observer);
                });
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

        public static ServiceManagerPrx createProxy(Ice.Communicator communicator, string proxyString) =>
            new ServiceManagerPrxHelper(Ice.ObjectPrxHelper.createProxy(communicator, proxyString));

        public static ServiceManagerPrx? checkedCast(Ice.ObjectPrx? b, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            b is not null && b.ice_isA(ice_staticId(), ctx) ? new ServiceManagerPrxHelper(b) : null;

        public static ServiceManagerPrx? checkedCast(Ice.ObjectPrx? b, string f, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            checkedCast(b?.ice_facet(f), ctx);

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static ServiceManagerPrx? uncheckedCast(Ice.ObjectPrx? b) =>
            b is not null ? new ServiceManagerPrxHelper(b) : null;

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static ServiceManagerPrx? uncheckedCast(Ice.ObjectPrx? b, string f) =>
            uncheckedCast(b?.ice_facet(f));

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::IceBox::ServiceManager"
        };

        public static string ice_staticId() => "::IceBox::ServiceManager";

        public static void write(Ice.OutputStream ostr, ServiceManagerPrx? v)
        {
            ostr.writeProxy(v);
        }

        public static ServiceManagerPrx? read(Ice.InputStream istr) =>
            istr.readProxy() is Ice.ObjectPrx proxy ? new ServiceManagerPrxHelper(proxy) : null;

        protected override Ice.ObjectPrxHelperBase iceNewInstance(Ice.Internal.Reference reference) => new ServiceManagerPrxHelper(reference);

        private ServiceManagerPrxHelper(Ice.ObjectPrx proxy)
            : base(proxy)
        {
        }

        private ServiceManagerPrxHelper(Ice.Internal.Reference reference)
            : base(reference)
        {
        }
    }
}

namespace IceBox
{
    public abstract class ServiceObserverDisp_ : Ice.ObjectImpl, ServiceObserver
    {
        public abstract void servicesStarted(string[] services, Ice.Current current);

        public abstract void servicesStopped(string[] services, Ice.Current current);

        public override string ice_id(Ice.Current current) => ice_staticId();

        public static new string ice_staticId() => "::IceBox::ServiceObserver";

        public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
            request.current.operation switch
            {
                "servicesStarted" => ServiceObserver.iceD_servicesStartedAsync(this, request),
                "servicesStopped" => ServiceObserver.iceD_servicesStoppedAsync(this, request),
                "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                _ => throw new Ice.OperationNotExistException()
            };
    }

    public abstract class ServiceManagerDisp_ : Ice.ObjectImpl, ServiceManager
    {
        public abstract void startService(string service, Ice.Current current);

        public abstract void stopService(string service, Ice.Current current);

        public abstract void addObserver(ServiceObserverPrx? observer, Ice.Current current);

        public abstract void shutdown(Ice.Current current);

        public override string ice_id(Ice.Current current) => ice_staticId();

        public static new string ice_staticId() => "::IceBox::ServiceManager";

        public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
            request.current.operation switch
            {
                "startService" => ServiceManager.iceD_startServiceAsync(this, request),
                "stopService" => ServiceManager.iceD_stopServiceAsync(this, request),
                "addObserver" => ServiceManager.iceD_addObserverAsync(this, request),
                "shutdown" => ServiceManager.iceD_shutdownAsync(this, request),
                "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                _ => throw new Ice.OperationNotExistException()
            };
    }
}

namespace IceBox
{
    public partial interface ServiceObserver
    {
        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_servicesStartedAsync(
            ServiceObserver obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            string[] iceP_services;
            iceP_services = global::Ice.StringSeqHelper.read(istr);
            istr.endEncapsulation();
            obj.servicesStarted(iceP_services, request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_servicesStoppedAsync(
            ServiceObserver obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            string[] iceP_services;
            iceP_services = global::Ice.StringSeqHelper.read(istr);
            istr.endEncapsulation();
            obj.servicesStopped(iceP_services, request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }
    }

    public partial interface ServiceManager
    {
        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_startServiceAsync(
            ServiceManager obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            string iceP_service;
            iceP_service = istr.readString();
            istr.endEncapsulation();
            obj.startService(iceP_service, request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_stopServiceAsync(
            ServiceManager obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            string iceP_service;
            iceP_service = istr.readString();
            istr.endEncapsulation();
            obj.stopService(iceP_service, request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_addObserverAsync(
            ServiceManager obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            ServiceObserverPrx? iceP_observer;
            iceP_observer = ServiceObserverPrxHelper.read(istr);
            istr.endEncapsulation();
            obj.addObserver(iceP_observer, request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_shutdownAsync(
            ServiceManager obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            obj.shutdown(request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }
    }
}
