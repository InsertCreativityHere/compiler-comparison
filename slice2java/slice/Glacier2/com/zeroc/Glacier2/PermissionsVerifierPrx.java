// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'PermissionsVerifier.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.Glacier2;

/**
 * The Glacier2 permissions verifier. This is called through the process of establishing a session.
 *
 * @see Router
 **/
public interface PermissionsVerifierPrx extends com.zeroc.Ice.ObjectPrx
{
    /**
     * Check whether a user has permission to access the router.
     * @param userId The user id for which to check permission.
     * @param password The user's password.
     * @return An instance of PermissionsVerifier.CheckPermissionsResult.
     * @throws PermissionDeniedException Raised if the user access is denied. This can be raised in place of
     * returning false with a reason set in the reason out parameter.
     **/
    default PermissionsVerifier.CheckPermissionsResult checkPermissions(String userId, String password)
        throws PermissionDeniedException
    {
        return checkPermissions(userId, password, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Check whether a user has permission to access the router.
     * @param userId The user id for which to check permission.
     * @param password The user's password.
     * @param context The Context map to send with the invocation.
     * @return An instance of PermissionsVerifier.CheckPermissionsResult.
     * @throws PermissionDeniedException Raised if the user access is denied. This can be raised in place of
     * returning false with a reason set in the reason out parameter.
     **/
    default PermissionsVerifier.CheckPermissionsResult checkPermissions(String userId, String password, java.util.Map<String, String> context)
        throws PermissionDeniedException
    {
        try
        {
            return _iceI_checkPermissionsAsync(userId, password, context, true).waitForResponseOrUserEx();
        }
        catch(PermissionDeniedException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw com.zeroc.Ice.UnknownUserException.fromTypeId(ex.ice_id());
        }
    }

    /**
     * Check whether a user has permission to access the router.
     * @param userId The user id for which to check permission.
     * @param password The user's password.
     * @return A future that will be completed with an instance of PermissionsVerifier.CheckPermissionsResult.
     **/
    default java.util.concurrent.CompletableFuture<PermissionsVerifier.CheckPermissionsResult> checkPermissionsAsync(String userId, String password)
    {
        return _iceI_checkPermissionsAsync(userId, password, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Check whether a user has permission to access the router.
     * @param userId The user id for which to check permission.
     * @param password The user's password.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed with an instance of PermissionsVerifier.CheckPermissionsResult.
     **/
    default java.util.concurrent.CompletableFuture<PermissionsVerifier.CheckPermissionsResult> checkPermissionsAsync(String userId, String password, java.util.Map<String, String> context)
    {
        return _iceI_checkPermissionsAsync(userId, password, context, false);
    }

    /**
     * @hidden
     * @param iceP_userId -
     * @param iceP_password -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<PermissionsVerifier.CheckPermissionsResult> _iceI_checkPermissionsAsync(String iceP_userId, String iceP_password, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<PermissionsVerifier.CheckPermissionsResult> f = new com.zeroc.Ice.OutgoingAsync<>(this, "checkPermissions", com.zeroc.Ice.OperationMode.Idempotent, sync, _iceE_checkPermissions);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeString(iceP_userId);
                     ostr.writeString(iceP_password);
                 }, istr -> {
                     PermissionsVerifier.CheckPermissionsResult ret = new PermissionsVerifier.CheckPermissionsResult();
                     ret.read(istr);
                     return ret;
                 });
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_checkPermissions =
    {
        PermissionDeniedException.class
    };

    /**
     * Creates a new proxy that implements {@link PermissionsVerifierPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static PermissionsVerifierPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _PermissionsVerifierPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static PermissionsVerifierPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static PermissionsVerifierPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _PermissionsVerifierPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static PermissionsVerifierPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static PermissionsVerifierPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static PermissionsVerifierPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _PermissionsVerifierPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static PermissionsVerifierPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _PermissionsVerifierPrxI(obj.ice_facet(facet));
    }

    @Override
    PermissionsVerifierPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    PermissionsVerifierPrx ice_adapterId(String newAdapterId);

    @Override
    PermissionsVerifierPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    PermissionsVerifierPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    PermissionsVerifierPrx ice_invocationTimeout(int newTimeout);

    @Override
    PermissionsVerifierPrx ice_connectionCached(boolean newCache);

    @Override
    PermissionsVerifierPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    PermissionsVerifierPrx ice_secure(boolean b);

    @Override
    PermissionsVerifierPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    PermissionsVerifierPrx ice_preferSecure(boolean b);

    @Override
    PermissionsVerifierPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    PermissionsVerifierPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    PermissionsVerifierPrx ice_collocationOptimized(boolean b);

    @Override
    PermissionsVerifierPrx ice_twoway();

    @Override
    PermissionsVerifierPrx ice_oneway();

    @Override
    PermissionsVerifierPrx ice_batchOneway();

    @Override
    PermissionsVerifierPrx ice_datagram();

    @Override
    PermissionsVerifierPrx ice_batchDatagram();

    @Override
    PermissionsVerifierPrx ice_compress(boolean co);

    @Override
    PermissionsVerifierPrx ice_connectionId(String connectionId);

    @Override
    PermissionsVerifierPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::Glacier2::PermissionsVerifier";
    }

    /**
     * @hidden
     **/
    @Override
    default PermissionsVerifierPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _PermissionsVerifierPrxI(ref);
    }
}
