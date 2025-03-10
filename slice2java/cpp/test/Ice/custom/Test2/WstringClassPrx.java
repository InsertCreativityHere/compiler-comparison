// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'WstringAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package Test2;

public interface WstringClassPrx extends com.zeroc.Ice.ObjectPrx
{
    default WstringClass.OpStringResult opString(String s1)
    {
        return opString(s1, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default WstringClass.OpStringResult opString(String s1, java.util.Map<String, String> context)
    {
        return _iceI_opStringAsync(s1, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<WstringClass.OpStringResult> opStringAsync(String s1)
    {
        return _iceI_opStringAsync(s1, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<WstringClass.OpStringResult> opStringAsync(String s1, java.util.Map<String, String> context)
    {
        return _iceI_opStringAsync(s1, context, false);
    }

    /**
     * @hidden
     * @param iceP_s1 -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<WstringClass.OpStringResult> _iceI_opStringAsync(String iceP_s1, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<WstringClass.OpStringResult> f = new com.zeroc.Ice.OutgoingAsync<>(this, "opString", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeString(iceP_s1);
                 }, istr -> {
                     WstringClass.OpStringResult ret = new WstringClass.OpStringResult();
                     ret.read(istr);
                     return ret;
                 });
        return f;
    }

    default WstringClass.OpStructResult opStruct(WstringStruct s1)
    {
        return opStruct(s1, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default WstringClass.OpStructResult opStruct(WstringStruct s1, java.util.Map<String, String> context)
    {
        return _iceI_opStructAsync(s1, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<WstringClass.OpStructResult> opStructAsync(WstringStruct s1)
    {
        return _iceI_opStructAsync(s1, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<WstringClass.OpStructResult> opStructAsync(WstringStruct s1, java.util.Map<String, String> context)
    {
        return _iceI_opStructAsync(s1, context, false);
    }

    /**
     * @hidden
     * @param iceP_s1 -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<WstringClass.OpStructResult> _iceI_opStructAsync(WstringStruct iceP_s1, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<WstringClass.OpStructResult> f = new com.zeroc.Ice.OutgoingAsync<>(this, "opStruct", null, sync, null);
        f.invoke(true, context, null, ostr -> {
                     WstringStruct.ice_write(ostr, iceP_s1);
                 }, istr -> {
                     WstringClass.OpStructResult ret = new WstringClass.OpStructResult();
                     ret.read(istr);
                     return ret;
                 });
        return f;
    }

    default void throwExcept(String reason)
        throws WstringException
    {
        throwExcept(reason, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void throwExcept(String reason, java.util.Map<String, String> context)
        throws WstringException
    {
        try
        {
            _iceI_throwExceptAsync(reason, context, true).waitForResponseOrUserEx();
        }
        catch(WstringException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw com.zeroc.Ice.UnknownUserException.fromTypeId(ex.ice_id());
        }
    }

    default java.util.concurrent.CompletableFuture<Void> throwExceptAsync(String reason)
    {
        return _iceI_throwExceptAsync(reason, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> throwExceptAsync(String reason, java.util.Map<String, String> context)
    {
        return _iceI_throwExceptAsync(reason, context, false);
    }

    /**
     * @hidden
     * @param iceP_reason -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_throwExceptAsync(String iceP_reason, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "throwExcept", null, sync, _iceE_throwExcept);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeString(iceP_reason);
                 }, null);
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_throwExcept =
    {
        WstringException.class
    };

    /**
     * Creates a new proxy that implements {@link WstringClassPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static WstringClassPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _WstringClassPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static WstringClassPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static WstringClassPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _WstringClassPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static WstringClassPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static WstringClassPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static WstringClassPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _WstringClassPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static WstringClassPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _WstringClassPrxI(obj.ice_facet(facet));
    }

    @Override
    WstringClassPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    WstringClassPrx ice_adapterId(String newAdapterId);

    @Override
    WstringClassPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    WstringClassPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    WstringClassPrx ice_invocationTimeout(int newTimeout);

    @Override
    WstringClassPrx ice_connectionCached(boolean newCache);

    @Override
    WstringClassPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    WstringClassPrx ice_secure(boolean b);

    @Override
    WstringClassPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    WstringClassPrx ice_preferSecure(boolean b);

    @Override
    WstringClassPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    WstringClassPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    WstringClassPrx ice_collocationOptimized(boolean b);

    @Override
    WstringClassPrx ice_twoway();

    @Override
    WstringClassPrx ice_oneway();

    @Override
    WstringClassPrx ice_batchOneway();

    @Override
    WstringClassPrx ice_datagram();

    @Override
    WstringClassPrx ice_batchDatagram();

    @Override
    WstringClassPrx ice_compress(boolean co);

    @Override
    WstringClassPrx ice_connectionId(String connectionId);

    @Override
    WstringClassPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::Test2::WstringClass";
    }

    /**
     * @hidden
     **/
    @Override
    default WstringClassPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _WstringClassPrxI(ref);
    }
}
