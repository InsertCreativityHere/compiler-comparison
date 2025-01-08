//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Router.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.Glacier2;

/**
 * The Glacier2 specialization of the <code>Ice::Router</code> interface.
 **/
public interface Router extends com.zeroc.Ice.Router
{
    /**
     * This category must be used in the identities of all of the client's callback objects. This is necessary in
     * order for the router to forward callback requests to the intended client. If the Glacier2 server endpoints
     * are not set, the returned category is an empty string.
     * @param current The Current object for the invocation.
     * @return The category.
     **/
    String getCategoryForClient(com.zeroc.Ice.Current current);

    /**
     * Create a per-client session with the router. If a {@link SessionManager} has been installed, a proxy to a
     * {@link Session} object is returned to the client. Otherwise, null is returned and only an internal session
     * (i.e., not visible to the client) is created.
     * If a session proxy is returned, it must be configured to route through the router that created it. This will
     * happen automatically if the router is configured as the client's default router at the time the session
     * proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
     * @param userId The user id for which to check the password.
     * @param password The password for the given user id.
     * @param current The Current object for the invocation.
     * @return A proxy for the newly created session, or null if no {@link SessionManager} has been installed.
     * @throws CannotCreateSessionException Raised if the session cannot be created.
     * @throws PermissionDeniedException Raised if the password for the given user id is not correct, or if the
     * user is not allowed access.
     *
     * @see Session
     * @see SessionManager
     * @see PermissionsVerifier
     **/
    java.util.concurrent.CompletionStage<SessionPrx> createSessionAsync(String userId, String password, com.zeroc.Ice.Current current)
        throws PermissionDeniedException,
               CannotCreateSessionException;

    /**
     * Create a per-client session with the router. The user is authenticated through the SSL certificates that
     * have been associated with the connection. If a {@link SessionManager} has been installed, a proxy to a
     * {@link Session} object is returned to the client. Otherwise, null is returned and only an internal session
     * (i.e., not visible to the client) is created.
     * If a session proxy is returned, it must be configured to route through the router that created it. This will
     * happen automatically if the router is configured as the client's default router at the time the session
     * proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
     * @param current The Current object for the invocation.
     * @return A proxy for the newly created session, or null if no {@link SessionManager} has been installed.
     * @throws CannotCreateSessionException Raised if the session cannot be created.
     * @throws PermissionDeniedException Raised if the user cannot be authenticated or if the user is not allowed
     * access.
     *
     * @see Session
     * @see SessionManager
     * @see PermissionsVerifier
     **/
    java.util.concurrent.CompletionStage<SessionPrx> createSessionFromSecureConnectionAsync(com.zeroc.Ice.Current current)
        throws PermissionDeniedException,
               CannotCreateSessionException;

    /**
     * Keep the session with this router alive. This operation is provided for backward compatibility with Ice 3.7
     * and earlier and does nothing in newer versions of Glacier2.
     * @param current The Current object for the invocation.
     * @throws SessionNotExistException Raised if no session exists for the caller (client).
     **/
    void refreshSession(com.zeroc.Ice.Current current)
        throws SessionNotExistException;

    /**
     * Destroy the calling client's session with this router.
     * @param current The Current object for the invocation.
     * @throws SessionNotExistException Raised if no session exists for the calling client.
     **/
    void destroySession(com.zeroc.Ice.Current current)
        throws SessionNotExistException;

    /**
     * Get the idle timeout used by the server-side of the connection.
     * @param current The Current object for the invocation.
     * @return The idle timeout (in seconds).
     **/
    long getSessionTimeout(com.zeroc.Ice.Current current);

    /**
     * Get the idle timeout used by the server-side of the connection.
     * @param current The Current object for the invocation.
     * @return The idle timeout (in seconds).
     **/
    int getACMTimeout(com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Glacier2::Router",
        "::Ice::Object",
        "::Ice::Router"
    };

    @Override
    default String[] ice_ids(com.zeroc.Ice.Current current)
    {
        return _iceIds;
    }

    @Override
    default String ice_id(com.zeroc.Ice.Current current)
    {
        return ice_staticId();
    }

    static String ice_staticId()
    {
        return "::Glacier2::Router";
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_getCategoryForClient(Router obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        String ret = obj.getCategoryForClient(request.current);
        var ostr = request.current.startReplyStream();
        ostr.startEncapsulation(request.current.encoding, null);
        ostr.writeString(ret);
        ostr.endEncapsulation();
        return java.util.concurrent.CompletableFuture.completedFuture(new com.zeroc.Ice.OutgoingResponse(ostr));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_createSession(Router obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        String iceP_userId;
        String iceP_password;
        iceP_userId = istr.readString();
        iceP_password = istr.readString();
        istr.endEncapsulation();
        var result = obj.createSessionAsync(iceP_userId, iceP_password, request.current);
        return result.thenApply(r -> request.current.createOutgoingResponse(
            r,
            (ostr, value) -> 
            {
                ostr.writeProxy(value);
            },
            null));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_createSessionFromSecureConnection(Router obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.createSessionFromSecureConnectionAsync(request.current);
        return result.thenApply(r -> request.current.createOutgoingResponse(
            r,
            (ostr, value) -> 
            {
                ostr.writeProxy(value);
            },
            null));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_refreshSession(Router obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        obj.refreshSession(request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_destroySession(Router obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        obj.destroySession(request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_getSessionTimeout(Router obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        long ret = obj.getSessionTimeout(request.current);
        var ostr = request.current.startReplyStream();
        ostr.startEncapsulation(request.current.encoding, null);
        ostr.writeLong(ret);
        ostr.endEncapsulation();
        return java.util.concurrent.CompletableFuture.completedFuture(new com.zeroc.Ice.OutgoingResponse(ostr));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_getACMTimeout(Router obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        int ret = obj.getACMTimeout(request.current);
        var ostr = request.current.startReplyStream();
        ostr.startEncapsulation(request.current.encoding, null);
        ostr.writeInt(ret);
        ostr.endEncapsulation();
        return java.util.concurrent.CompletableFuture.completedFuture(new com.zeroc.Ice.OutgoingResponse(ostr));
    }

    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> dispatch(com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        return switch (request.current.operation)
        {
            case "getClientProxy" -> com.zeroc.Ice.Router._iceD_getClientProxy(this, request);
            case "getServerProxy" -> com.zeroc.Ice.Router._iceD_getServerProxy(this, request);
            case "addProxies" -> com.zeroc.Ice.Router._iceD_addProxies(this, request);
            case "getCategoryForClient" -> Router._iceD_getCategoryForClient(this, request);
            case "createSession" -> Router._iceD_createSession(this, request);
            case "createSessionFromSecureConnection" -> Router._iceD_createSessionFromSecureConnection(this, request);
            case "refreshSession" -> Router._iceD_refreshSession(this, request);
            case "destroySession" -> Router._iceD_destroySession(this, request);
            case "getSessionTimeout" -> Router._iceD_getSessionTimeout(this, request);
            case "getACMTimeout" -> Router._iceD_getACMTimeout(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
