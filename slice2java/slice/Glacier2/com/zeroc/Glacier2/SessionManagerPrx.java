// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Session.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.Glacier2;

/**
 * The session manager for username/password authenticated users that is responsible for managing {@link Session}
 * objects. New session objects are created by the {@link Router} object calling on an application-provided
 * session manager. If no session manager is provided by the application, no client-visible sessions are passed to
 * the client.
 *
 * @see Router
 * @see Session
 **/
public interface SessionManagerPrx extends com.zeroc.Ice.ObjectPrx
{
    /**
     * Create a new session. The implementation must return a non-null proxy or raise
     * {@link CannotCreateSessionException} if the session cannot be created.
     * @param userId The user id for the session.
     * @param control A proxy to the session control object. The control proxy is null if Glacier2.Server.Endpoints
     * are not configured.
     * @return A proxy to the newly created session.
     * @throws CannotCreateSessionException Raised if the session cannot be created.
     **/
    default SessionPrx create(String userId, SessionControlPrx control)
        throws CannotCreateSessionException
    {
        return create(userId, control, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Create a new session. The implementation must return a non-null proxy or raise
     * {@link CannotCreateSessionException} if the session cannot be created.
     * @param userId The user id for the session.
     * @param control A proxy to the session control object. The control proxy is null if Glacier2.Server.Endpoints
     * are not configured.
     * @param context The Context map to send with the invocation.
     * @return A proxy to the newly created session.
     * @throws CannotCreateSessionException Raised if the session cannot be created.
     **/
    default SessionPrx create(String userId, SessionControlPrx control, java.util.Map<String, String> context)
        throws CannotCreateSessionException
    {
        try
        {
            return _iceI_createAsync(userId, control, context, true).waitForResponseOrUserEx();
        }
        catch(CannotCreateSessionException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw com.zeroc.Ice.UnknownUserException.fromTypeId(ex.ice_id());
        }
    }

    /**
     * Create a new session. The implementation must return a non-null proxy or raise
     * {@link CannotCreateSessionException} if the session cannot be created.
     * @param userId The user id for the session.
     * @param control A proxy to the session control object. The control proxy is null if Glacier2.Server.Endpoints
     * are not configured.
     * @return A proxy to the newly created session.
     **/
    default java.util.concurrent.CompletableFuture<SessionPrx> createAsync(String userId, SessionControlPrx control)
    {
        return _iceI_createAsync(userId, control, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Create a new session. The implementation must return a non-null proxy or raise
     * {@link CannotCreateSessionException} if the session cannot be created.
     * @param userId The user id for the session.
     * @param control A proxy to the session control object. The control proxy is null if Glacier2.Server.Endpoints
     * are not configured.
     * @param context The Context map to send with the invocation.
     * @return A proxy to the newly created session.
     **/
    default java.util.concurrent.CompletableFuture<SessionPrx> createAsync(String userId, SessionControlPrx control, java.util.Map<String, String> context)
    {
        return _iceI_createAsync(userId, control, context, false);
    }

    /**
     * @hidden
     * @param iceP_userId -
     * @param iceP_control -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<SessionPrx> _iceI_createAsync(String iceP_userId, SessionControlPrx iceP_control, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<SessionPrx> f = new com.zeroc.Ice.OutgoingAsync<>(this, "create", null, sync, _iceE_create);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeString(iceP_userId);
                     ostr.writeProxy(iceP_control);
                 }, istr -> {
                     SessionPrx ret;
                     ret = SessionPrx.uncheckedCast(istr.readProxy());
                     return ret;
                 });
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_create =
    {
        CannotCreateSessionException.class
    };

    /**
     * Creates a new proxy that implements {@link SessionManagerPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static SessionManagerPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _SessionManagerPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static SessionManagerPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return checkedCast(obj, noExplicitContext);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static SessionManagerPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _SessionManagerPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static SessionManagerPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return checkedCast(obj, facet, noExplicitContext);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static SessionManagerPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static SessionManagerPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _SessionManagerPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static SessionManagerPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _SessionManagerPrxI(obj.ice_facet(facet));
    }

    @Override
    SessionManagerPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    SessionManagerPrx ice_adapterId(String newAdapterId);

    @Override
    SessionManagerPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    SessionManagerPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    SessionManagerPrx ice_invocationTimeout(int newTimeout);

    @Override
    SessionManagerPrx ice_connectionCached(boolean newCache);

    @Override
    SessionManagerPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    SessionManagerPrx ice_secure(boolean b);

    @Override
    SessionManagerPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    SessionManagerPrx ice_preferSecure(boolean b);

    @Override
    SessionManagerPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    SessionManagerPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    SessionManagerPrx ice_collocationOptimized(boolean b);

    @Override
    SessionManagerPrx ice_twoway();

    @Override
    SessionManagerPrx ice_oneway();

    @Override
    SessionManagerPrx ice_batchOneway();

    @Override
    SessionManagerPrx ice_datagram();

    @Override
    SessionManagerPrx ice_batchDatagram();

    @Override
    SessionManagerPrx ice_compress(boolean co);

    @Override
    SessionManagerPrx ice_connectionId(String connectionId);

    @Override
    SessionManagerPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::Glacier2::SessionManager";
    }

    /**
     * @hidden
     **/
    @Override
    default SessionManagerPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _SessionManagerPrxI(ref);
    }
}
