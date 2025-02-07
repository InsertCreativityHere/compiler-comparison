// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'UserAccountMapper.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.IceGrid;

/**
 * A user account mapper object is used by IceGrid nodes to map session identifiers to user accounts.
 **/
public interface UserAccountMapperPrx extends com.zeroc.Ice.ObjectPrx
{
    /**
     * Get the name of the user account for the given user. This is used by IceGrid nodes to figure out the user
     * account to use to run servers.
     * @param user The value of the server descriptor's <code>user</code> attribute. If this attribute is not
     * defined, and the server's activation mode is <code>session</code>, the default value of <code>user</code>
     * is the session identifier.
     * @return The user account name.
     * @throws UserAccountNotFoundException Raised if no user account is found for the given user.
     **/
    default String getUserAccount(String user)
        throws UserAccountNotFoundException
    {
        return getUserAccount(user, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Get the name of the user account for the given user. This is used by IceGrid nodes to figure out the user
     * account to use to run servers.
     * @param user The value of the server descriptor's <code>user</code> attribute. If this attribute is not
     * defined, and the server's activation mode is <code>session</code>, the default value of <code>user</code>
     * is the session identifier.
     * @param context The Context map to send with the invocation.
     * @return The user account name.
     * @throws UserAccountNotFoundException Raised if no user account is found for the given user.
     **/
    default String getUserAccount(String user, java.util.Map<String, String> context)
        throws UserAccountNotFoundException
    {
        try
        {
            return _iceI_getUserAccountAsync(user, context, true).waitForResponseOrUserEx();
        }
        catch(UserAccountNotFoundException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw com.zeroc.Ice.UnknownUserException.fromTypeId(ex.ice_id());
        }
    }

    /**
     * Get the name of the user account for the given user. This is used by IceGrid nodes to figure out the user
     * account to use to run servers.
     * @param user The value of the server descriptor's <code>user</code> attribute. If this attribute is not
     * defined, and the server's activation mode is <code>session</code>, the default value of <code>user</code>
     * is the session identifier.
     * @return The user account name.
     **/
    default java.util.concurrent.CompletableFuture<java.lang.String> getUserAccountAsync(String user)
    {
        return _iceI_getUserAccountAsync(user, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Get the name of the user account for the given user. This is used by IceGrid nodes to figure out the user
     * account to use to run servers.
     * @param user The value of the server descriptor's <code>user</code> attribute. If this attribute is not
     * defined, and the server's activation mode is <code>session</code>, the default value of <code>user</code>
     * is the session identifier.
     * @param context The Context map to send with the invocation.
     * @return The user account name.
     **/
    default java.util.concurrent.CompletableFuture<java.lang.String> getUserAccountAsync(String user, java.util.Map<String, String> context)
    {
        return _iceI_getUserAccountAsync(user, context, false);
    }

    /**
     * @hidden
     * @param iceP_user -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<java.lang.String> _iceI_getUserAccountAsync(String iceP_user, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<java.lang.String> f = new com.zeroc.Ice.OutgoingAsync<>(this, "getUserAccount", null, sync, _iceE_getUserAccount);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeString(iceP_user);
                 }, istr -> {
                     String ret;
                     ret = istr.readString();
                     return ret;
                 });
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_getUserAccount =
    {
        UserAccountNotFoundException.class
    };

    /**
     * Creates a new proxy that implements {@link UserAccountMapperPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static UserAccountMapperPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _UserAccountMapperPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static UserAccountMapperPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static UserAccountMapperPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _UserAccountMapperPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static UserAccountMapperPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static UserAccountMapperPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static UserAccountMapperPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _UserAccountMapperPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static UserAccountMapperPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _UserAccountMapperPrxI(obj.ice_facet(facet));
    }

    @Override
    UserAccountMapperPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    UserAccountMapperPrx ice_adapterId(String newAdapterId);

    @Override
    UserAccountMapperPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    UserAccountMapperPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    UserAccountMapperPrx ice_invocationTimeout(int newTimeout);

    @Override
    UserAccountMapperPrx ice_connectionCached(boolean newCache);

    @Override
    UserAccountMapperPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    UserAccountMapperPrx ice_secure(boolean b);

    @Override
    UserAccountMapperPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    UserAccountMapperPrx ice_preferSecure(boolean b);

    @Override
    UserAccountMapperPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    UserAccountMapperPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    UserAccountMapperPrx ice_collocationOptimized(boolean b);

    @Override
    UserAccountMapperPrx ice_twoway();

    @Override
    UserAccountMapperPrx ice_oneway();

    @Override
    UserAccountMapperPrx ice_batchOneway();

    @Override
    UserAccountMapperPrx ice_datagram();

    @Override
    UserAccountMapperPrx ice_batchDatagram();

    @Override
    UserAccountMapperPrx ice_compress(boolean co);

    @Override
    UserAccountMapperPrx ice_connectionId(String connectionId);

    @Override
    UserAccountMapperPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::IceGrid::UserAccountMapper";
    }

    /**
     * @hidden
     **/
    @Override
    default UserAccountMapperPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _UserAccountMapperPrxI(ref);
    }
}
