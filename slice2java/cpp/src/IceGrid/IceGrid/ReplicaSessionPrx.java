//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Internal.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceGrid;

public interface ReplicaSessionPrx extends com.zeroc.Ice.ObjectPrx
{
    /**
     * The replica call this method to keep the session alive.
     **/
    default void keepAlive()
    {
        keepAlive(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * The replica call this method to keep the session alive.
     * @param context The Context map to send with the invocation.
     **/
    default void keepAlive(java.util.Map<String, String> context)
    {
        _iceI_keepAliveAsync(context, true).waitForResponse();
    }

    /**
     * The replica call this method to keep the session alive.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> keepAliveAsync()
    {
        return _iceI_keepAliveAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * The replica call this method to keep the session alive.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> keepAliveAsync(java.util.Map<String, String> context)
    {
        return _iceI_keepAliveAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_keepAliveAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "keepAlive", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    /**
     * Return the replica session timeout.
     **/
    default int getTimeout()
    {
        return getTimeout(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Return the replica session timeout.
     * @param context The Context map to send with the invocation.
     **/
    default int getTimeout(java.util.Map<String, String> context)
    {
        return _iceI_getTimeoutAsync(context, true).waitForResponse();
    }

    /**
     * Return the replica session timeout.
     * @return A future that will be completed with the result.
     **/
    default java.util.concurrent.CompletableFuture<java.lang.Integer> getTimeoutAsync()
    {
        return _iceI_getTimeoutAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Return the replica session timeout.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed with the result.
     **/
    default java.util.concurrent.CompletableFuture<java.lang.Integer> getTimeoutAsync(java.util.Map<String, String> context)
    {
        return _iceI_getTimeoutAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> _iceI_getTimeoutAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Integer> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "getTimeout", com.zeroc.Ice.OperationMode.Idempotent, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     int ret;
                     ret = istr.readInt();
                     return ret;
                 });
        return f;
    }

    /**
     * Set the database observer. Once the observer is subscribed, it will receive the database and database updates.
     **/
    default void setDatabaseObserver(DatabaseObserverPrx dbObs, java.util.Map<java.lang.String, java.lang.Long> serials)
        throws com.zeroc.IceGrid.DeploymentException,
               com.zeroc.IceGrid.ObserverAlreadyRegisteredException
    {
        setDatabaseObserver(dbObs, serials, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Set the database observer. Once the observer is subscribed, it will receive the database and database updates.
     * @param context The Context map to send with the invocation.
     **/
    default void setDatabaseObserver(DatabaseObserverPrx dbObs, java.util.Map<java.lang.String, java.lang.Long> serials, java.util.Map<String, String> context)
        throws com.zeroc.IceGrid.DeploymentException,
               com.zeroc.IceGrid.ObserverAlreadyRegisteredException
    {
        try
        {
            _iceI_setDatabaseObserverAsync(dbObs, serials, context, true).waitForResponseOrUserEx();
        }
        catch(com.zeroc.IceGrid.DeploymentException ex)
        {
            throw ex;
        }
        catch(com.zeroc.IceGrid.ObserverAlreadyRegisteredException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw new com.zeroc.Ice.UnknownUserException(ex.ice_id(), ex);
        }
    }

    /**
     * Set the database observer. Once the observer is subscribed, it will receive the database and database updates.
     **/
    default void setDatabaseObserver(DatabaseObserverPrx dbObs, java.util.Optional<java.util.Map<java.lang.String, java.lang.Long>> serials)
        throws com.zeroc.IceGrid.DeploymentException,
               com.zeroc.IceGrid.ObserverAlreadyRegisteredException
    {
        setDatabaseObserver(dbObs, serials, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Set the database observer. Once the observer is subscribed, it will receive the database and database updates.
     * @param context The Context map to send with the invocation.
     **/
    default void setDatabaseObserver(DatabaseObserverPrx dbObs, java.util.Optional<java.util.Map<java.lang.String, java.lang.Long>> serials, java.util.Map<String, String> context)
        throws com.zeroc.IceGrid.DeploymentException,
               com.zeroc.IceGrid.ObserverAlreadyRegisteredException
    {
        try
        {
            _iceI_setDatabaseObserverAsync(dbObs, serials, context, true).waitForResponseOrUserEx();
        }
        catch(com.zeroc.IceGrid.DeploymentException ex)
        {
            throw ex;
        }
        catch(com.zeroc.IceGrid.ObserverAlreadyRegisteredException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw new com.zeroc.Ice.UnknownUserException(ex.ice_id(), ex);
        }
    }

    /**
     * Set the database observer. Once the observer is subscribed, it will receive the database and database updates.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> setDatabaseObserverAsync(DatabaseObserverPrx dbObs, java.util.Map<java.lang.String, java.lang.Long> serials)
    {
        return _iceI_setDatabaseObserverAsync(dbObs, serials, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Set the database observer. Once the observer is subscribed, it will receive the database and database updates.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> setDatabaseObserverAsync(DatabaseObserverPrx dbObs, java.util.Map<java.lang.String, java.lang.Long> serials, java.util.Map<String, String> context)
    {
        return _iceI_setDatabaseObserverAsync(dbObs, serials, context, false);
    }

    /**
     * @hidden
     * @param iceP_dbObs -
     * @param iceP_serials -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_setDatabaseObserverAsync(DatabaseObserverPrx iceP_dbObs, java.util.Map<java.lang.String, java.lang.Long> iceP_serials, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "setDatabaseObserver", com.zeroc.Ice.OperationMode.Idempotent, sync, _iceE_setDatabaseObserver);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeProxy(iceP_dbObs);
                     StringLongDictHelper.write(ostr, 1, iceP_serials);
                 }, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_setDatabaseObserver =
    {
        com.zeroc.IceGrid.DeploymentException.class,
        com.zeroc.IceGrid.ObserverAlreadyRegisteredException.class
    };

    /**
     * Set the database observer. Once the observer is subscribed, it will receive the database and database updates.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> setDatabaseObserverAsync(DatabaseObserverPrx dbObs, java.util.Optional<java.util.Map<java.lang.String, java.lang.Long>> serials)
    {
        return _iceI_setDatabaseObserverAsync(dbObs, serials, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Set the database observer. Once the observer is subscribed, it will receive the database and database updates.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> setDatabaseObserverAsync(DatabaseObserverPrx dbObs, java.util.Optional<java.util.Map<java.lang.String, java.lang.Long>> serials, java.util.Map<String, String> context)
    {
        return _iceI_setDatabaseObserverAsync(dbObs, serials, context, false);
    }

    /**
     * @hidden
     * @param iceP_dbObs -
     * @param iceP_serials -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_setDatabaseObserverAsync(DatabaseObserverPrx iceP_dbObs, java.util.Optional<java.util.Map<java.lang.String, java.lang.Long>> iceP_serials, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "setDatabaseObserver", com.zeroc.Ice.OperationMode.Idempotent, sync, _iceE_setDatabaseObserver);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeProxy(iceP_dbObs);
                     StringLongDictHelper.write(ostr, 1, iceP_serials);
                 }, null);
        return f;
    }

    /**
     * This method sets the endpoints of the replica. This allows the master to create proxies with multiple endpoints
     * for replicated objects (e.g.: IceGrid::Query object).
     **/
    default void setEndpoints(java.util.Map<java.lang.String, com.zeroc.Ice.ObjectPrx> endpoints)
    {
        setEndpoints(endpoints, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * This method sets the endpoints of the replica. This allows the master to create proxies with multiple endpoints
     * for replicated objects (e.g.: IceGrid::Query object).
     * @param context The Context map to send with the invocation.
     **/
    default void setEndpoints(java.util.Map<java.lang.String, com.zeroc.Ice.ObjectPrx> endpoints, java.util.Map<String, String> context)
    {
        _iceI_setEndpointsAsync(endpoints, context, true).waitForResponse();
    }

    /**
     * This method sets the endpoints of the replica. This allows the master to create proxies with multiple endpoints
     * for replicated objects (e.g.: IceGrid::Query object).
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> setEndpointsAsync(java.util.Map<java.lang.String, com.zeroc.Ice.ObjectPrx> endpoints)
    {
        return _iceI_setEndpointsAsync(endpoints, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * This method sets the endpoints of the replica. This allows the master to create proxies with multiple endpoints
     * for replicated objects (e.g.: IceGrid::Query object).
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> setEndpointsAsync(java.util.Map<java.lang.String, com.zeroc.Ice.ObjectPrx> endpoints, java.util.Map<String, String> context)
    {
        return _iceI_setEndpointsAsync(endpoints, context, false);
    }

    /**
     * @hidden
     * @param iceP_endpoints -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_setEndpointsAsync(java.util.Map<java.lang.String, com.zeroc.Ice.ObjectPrx> iceP_endpoints, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "setEndpoints", com.zeroc.Ice.OperationMode.Idempotent, sync, null);
        f.invoke(false, context, null, ostr -> {
                     com.zeroc.IceGrid.StringObjectProxyDictHelper.write(ostr, iceP_endpoints);
                 }, null);
        return f;
    }

    /**
     * Registers the replica well-known objects with the master.
     **/
    default void registerWellKnownObjects(com.zeroc.IceGrid.ObjectInfo[] objects)
    {
        registerWellKnownObjects(objects, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Registers the replica well-known objects with the master.
     * @param context The Context map to send with the invocation.
     **/
    default void registerWellKnownObjects(com.zeroc.IceGrid.ObjectInfo[] objects, java.util.Map<String, String> context)
    {
        _iceI_registerWellKnownObjectsAsync(objects, context, true).waitForResponse();
    }

    /**
     * Registers the replica well-known objects with the master.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> registerWellKnownObjectsAsync(com.zeroc.IceGrid.ObjectInfo[] objects)
    {
        return _iceI_registerWellKnownObjectsAsync(objects, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Registers the replica well-known objects with the master.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> registerWellKnownObjectsAsync(com.zeroc.IceGrid.ObjectInfo[] objects, java.util.Map<String, String> context)
    {
        return _iceI_registerWellKnownObjectsAsync(objects, context, false);
    }

    /**
     * @hidden
     * @param iceP_objects -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_registerWellKnownObjectsAsync(com.zeroc.IceGrid.ObjectInfo[] iceP_objects, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "registerWellKnownObjects", com.zeroc.Ice.OperationMode.Idempotent, sync, null);
        f.invoke(false, context, null, ostr -> {
                     com.zeroc.IceGrid.ObjectInfoSeqHelper.write(ostr, iceP_objects);
                 }, null);
        return f;
    }

    /**
     * Set the adapter direct proxy of the given adapter in the master. This is used to support dynamic registration
     * with the locator registry interface.
     **/
    default void setAdapterDirectProxy(String adapterId, String replicaGroupId, com.zeroc.Ice.ObjectPrx proxy)
        throws com.zeroc.IceGrid.AdapterNotExistException,
               AdapterExistsException
    {
        setAdapterDirectProxy(adapterId, replicaGroupId, proxy, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Set the adapter direct proxy of the given adapter in the master. This is used to support dynamic registration
     * with the locator registry interface.
     * @param context The Context map to send with the invocation.
     **/
    default void setAdapterDirectProxy(String adapterId, String replicaGroupId, com.zeroc.Ice.ObjectPrx proxy, java.util.Map<String, String> context)
        throws com.zeroc.IceGrid.AdapterNotExistException,
               AdapterExistsException
    {
        try
        {
            _iceI_setAdapterDirectProxyAsync(adapterId, replicaGroupId, proxy, context, true).waitForResponseOrUserEx();
        }
        catch(com.zeroc.IceGrid.AdapterNotExistException ex)
        {
            throw ex;
        }
        catch(AdapterExistsException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw new com.zeroc.Ice.UnknownUserException(ex.ice_id(), ex);
        }
    }

    /**
     * Set the adapter direct proxy of the given adapter in the master. This is used to support dynamic registration
     * with the locator registry interface.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> setAdapterDirectProxyAsync(String adapterId, String replicaGroupId, com.zeroc.Ice.ObjectPrx proxy)
    {
        return _iceI_setAdapterDirectProxyAsync(adapterId, replicaGroupId, proxy, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Set the adapter direct proxy of the given adapter in the master. This is used to support dynamic registration
     * with the locator registry interface.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> setAdapterDirectProxyAsync(String adapterId, String replicaGroupId, com.zeroc.Ice.ObjectPrx proxy, java.util.Map<String, String> context)
    {
        return _iceI_setAdapterDirectProxyAsync(adapterId, replicaGroupId, proxy, context, false);
    }

    /**
     * @hidden
     * @param iceP_adapterId -
     * @param iceP_replicaGroupId -
     * @param iceP_proxy -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_setAdapterDirectProxyAsync(String iceP_adapterId, String iceP_replicaGroupId, com.zeroc.Ice.ObjectPrx iceP_proxy, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "setAdapterDirectProxy", com.zeroc.Ice.OperationMode.Idempotent, sync, _iceE_setAdapterDirectProxy);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeString(iceP_adapterId);
                     ostr.writeString(iceP_replicaGroupId);
                     ostr.writeProxy(iceP_proxy);
                 }, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_setAdapterDirectProxy =
    {
        com.zeroc.IceGrid.AdapterNotExistException.class,
        AdapterExistsException.class
    };

    /**
     * Notify the master that an update was received. The master might wait for replication updates to be received by
     * all the replicas before to continue.
     **/
    default void receivedUpdate(TopicName name, int serial, String failure)
    {
        receivedUpdate(name, serial, failure, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Notify the master that an update was received. The master might wait for replication updates to be received by
     * all the replicas before to continue.
     * @param context The Context map to send with the invocation.
     **/
    default void receivedUpdate(TopicName name, int serial, String failure, java.util.Map<String, String> context)
    {
        _iceI_receivedUpdateAsync(name, serial, failure, context, true).waitForResponse();
    }

    /**
     * Notify the master that an update was received. The master might wait for replication updates to be received by
     * all the replicas before to continue.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> receivedUpdateAsync(TopicName name, int serial, String failure)
    {
        return _iceI_receivedUpdateAsync(name, serial, failure, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Notify the master that an update was received. The master might wait for replication updates to be received by
     * all the replicas before to continue.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> receivedUpdateAsync(TopicName name, int serial, String failure, java.util.Map<String, String> context)
    {
        return _iceI_receivedUpdateAsync(name, serial, failure, context, false);
    }

    /**
     * @hidden
     * @param iceP_name -
     * @param iceP_serial -
     * @param iceP_failure -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_receivedUpdateAsync(TopicName iceP_name, int iceP_serial, String iceP_failure, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "receivedUpdate", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     TopicName.ice_write(ostr, iceP_name);
                     ostr.writeInt(iceP_serial);
                     ostr.writeString(iceP_failure);
                 }, null);
        return f;
    }

    /**
     * Destroy the session.
     **/
    default void destroy()
    {
        destroy(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Destroy the session.
     * @param context The Context map to send with the invocation.
     **/
    default void destroy(java.util.Map<String, String> context)
    {
        _iceI_destroyAsync(context, true).waitForResponse();
    }

    /**
     * Destroy the session.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> destroyAsync()
    {
        return _iceI_destroyAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Destroy the session.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed when the invocation completes.
     **/
    default java.util.concurrent.CompletableFuture<Void> destroyAsync(java.util.Map<String, String> context)
    {
        return _iceI_destroyAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_destroyAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "destroy", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ReplicaSessionPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, ice_staticId(), ReplicaSessionPrx.class, _ReplicaSessionPrxI.class);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ReplicaSessionPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, context, ice_staticId(), ReplicaSessionPrx.class, _ReplicaSessionPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ReplicaSessionPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, ice_staticId(), ReplicaSessionPrx.class, _ReplicaSessionPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static ReplicaSessionPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, context, ice_staticId(), ReplicaSessionPrx.class, _ReplicaSessionPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static ReplicaSessionPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, ReplicaSessionPrx.class, _ReplicaSessionPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static ReplicaSessionPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, facet, ReplicaSessionPrx.class, _ReplicaSessionPrxI.class);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the per-proxy context.
     * @param newContext The context for the new proxy.
     * @return A proxy with the specified per-proxy context.
     **/
    @Override
    default ReplicaSessionPrx ice_context(java.util.Map<String, String> newContext)
    {
        return (ReplicaSessionPrx)_ice_context(newContext);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the adapter ID.
     * @param newAdapterId The adapter ID for the new proxy.
     * @return A proxy with the specified adapter ID.
     **/
    @Override
    default ReplicaSessionPrx ice_adapterId(String newAdapterId)
    {
        return (ReplicaSessionPrx)_ice_adapterId(newAdapterId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoints.
     * @param newEndpoints The endpoints for the new proxy.
     * @return A proxy with the specified endpoints.
     **/
    @Override
    default ReplicaSessionPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints)
    {
        return (ReplicaSessionPrx)_ice_endpoints(newEndpoints);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator cache timeout.
     * @param newTimeout The new locator cache timeout (in seconds).
     * @return A proxy with the specified locator cache timeout.
     **/
    @Override
    default ReplicaSessionPrx ice_locatorCacheTimeout(int newTimeout)
    {
        return (ReplicaSessionPrx)_ice_locatorCacheTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the invocation timeout.
     * @param newTimeout The new invocation timeout (in seconds).
     * @return A proxy with the specified invocation timeout.
     **/
    @Override
    default ReplicaSessionPrx ice_invocationTimeout(int newTimeout)
    {
        return (ReplicaSessionPrx)_ice_invocationTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for connection caching.
     * @param newCache <code>true</code> if the new proxy should cache connections; <code>false</code> otherwise.
     * @return A proxy with the specified caching policy.
     **/
    @Override
    default ReplicaSessionPrx ice_connectionCached(boolean newCache)
    {
        return (ReplicaSessionPrx)_ice_connectionCached(newCache);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoint selection policy.
     * @param newType The new endpoint selection policy.
     * @return A proxy with the specified endpoint selection policy.
     **/
    @Override
    default ReplicaSessionPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType)
    {
        return (ReplicaSessionPrx)_ice_endpointSelection(newType);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for how it selects endpoints.
     * @param b If <code>b</code> is <code>true</code>, only endpoints that use a secure transport are
     * used by the new proxy. If <code>b</code> is false, the returned proxy uses both secure and
     * insecure endpoints.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default ReplicaSessionPrx ice_secure(boolean b)
    {
        return (ReplicaSessionPrx)_ice_secure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the encoding used to marshal parameters.
     * @param e The encoding version to use to marshal request parameters.
     * @return A proxy with the specified encoding version.
     **/
    @Override
    default ReplicaSessionPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e)
    {
        return (ReplicaSessionPrx)_ice_encodingVersion(e);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its endpoint selection policy.
     * @param b If <code>b</code> is <code>true</code>, the new proxy will use secure endpoints for invocations
     * and only use insecure endpoints if an invocation cannot be made via secure endpoints. If <code>b</code> is
     * <code>false</code>, the proxy prefers insecure endpoints to secure ones.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default ReplicaSessionPrx ice_preferSecure(boolean b)
    {
        return (ReplicaSessionPrx)_ice_preferSecure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the router.
     * @param router The router for the new proxy.
     * @return A proxy with the specified router.
     **/
    @Override
    default ReplicaSessionPrx ice_router(com.zeroc.Ice.RouterPrx router)
    {
        return (ReplicaSessionPrx)_ice_router(router);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator.
     * @param locator The locator for the new proxy.
     * @return A proxy with the specified locator.
     **/
    @Override
    default ReplicaSessionPrx ice_locator(com.zeroc.Ice.LocatorPrx locator)
    {
        return (ReplicaSessionPrx)_ice_locator(locator);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for collocation optimization.
     * @param b <code>true</code> if the new proxy enables collocation optimization; <code>false</code> otherwise.
     * @return A proxy with the specified collocation optimization.
     **/
    @Override
    default ReplicaSessionPrx ice_collocationOptimized(boolean b)
    {
        return (ReplicaSessionPrx)_ice_collocationOptimized(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses twoway invocations.
     * @return A proxy that uses twoway invocations.
     **/
    @Override
    default ReplicaSessionPrx ice_twoway()
    {
        return (ReplicaSessionPrx)_ice_twoway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses oneway invocations.
     * @return A proxy that uses oneway invocations.
     **/
    @Override
    default ReplicaSessionPrx ice_oneway()
    {
        return (ReplicaSessionPrx)_ice_oneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch oneway invocations.
     * @return A proxy that uses batch oneway invocations.
     **/
    @Override
    default ReplicaSessionPrx ice_batchOneway()
    {
        return (ReplicaSessionPrx)_ice_batchOneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses datagram invocations.
     * @return A proxy that uses datagram invocations.
     **/
    @Override
    default ReplicaSessionPrx ice_datagram()
    {
        return (ReplicaSessionPrx)_ice_datagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch datagram invocations.
     * @return A proxy that uses batch datagram invocations.
     **/
    @Override
    default ReplicaSessionPrx ice_batchDatagram()
    {
        return (ReplicaSessionPrx)_ice_batchDatagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, except for compression.
     * @param co <code>true</code> enables compression for the new proxy; <code>false</code> disables compression.
     * @return A proxy with the specified compression setting.
     **/
    @Override
    default ReplicaSessionPrx ice_compress(boolean co)
    {
        return (ReplicaSessionPrx)_ice_compress(co);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection timeout setting.
     * @param t The connection timeout for the proxy in milliseconds.
     * @return A proxy with the specified timeout.
     **/
    @Override
    default ReplicaSessionPrx ice_timeout(int t)
    {
        return (ReplicaSessionPrx)_ice_timeout(t);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection ID.
     * @param connectionId The connection ID for the new proxy. An empty string removes the connection ID.
     * @return A proxy with the specified connection ID.
     **/
    @Override
    default ReplicaSessionPrx ice_connectionId(String connectionId)
    {
        return (ReplicaSessionPrx)_ice_connectionId(connectionId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except it's a fixed proxy bound
     * the given connection.@param connection The fixed proxy connection.
     * @return A fixed proxy bound to the given connection.
     **/
    @Override
    default ReplicaSessionPrx ice_fixed(com.zeroc.Ice.Connection connection)
    {
        return (ReplicaSessionPrx)_ice_fixed(connection);
    }

    static String ice_staticId()
    {
        return "::IceGrid::ReplicaSession";
    }
}
