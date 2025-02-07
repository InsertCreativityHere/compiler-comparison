// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package BEGIN;

public interface breakPrx extends com.zeroc.Ice.ObjectPrx
{
    default void _case(int _clone, int def)
    {
        _case(_clone, def, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void _case(int _clone, int def, java.util.Map<String, String> context)
    {
        _iceI_caseAsync(_clone, def, context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> caseAsync(int _clone, int def)
    {
        return _iceI_caseAsync(_clone, def, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> caseAsync(int _clone, int def, java.util.Map<String, String> context)
    {
        return _iceI_caseAsync(_clone, def, context, false);
    }

    /**
     * @hidden
     * @param iceP_clone -
     * @param iceP_def -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_caseAsync(int iceP_clone, int iceP_def, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "case", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeInt(iceP_clone);
                     ostr.writeInt(iceP_def);
                 }, null);
        return f;
    }

    default void to_a()
    {
        to_a(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void to_a(java.util.Map<String, String> context)
    {
        _iceI_to_aAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> to_aAsync()
    {
        return _iceI_to_aAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> to_aAsync(java.util.Map<String, String> context)
    {
        return _iceI_to_aAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_to_aAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "to_a", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void instance_variable_set()
    {
        instance_variable_set(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void instance_variable_set(java.util.Map<String, String> context)
    {
        _iceI_instance_variable_setAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> instance_variable_setAsync()
    {
        return _iceI_instance_variable_setAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> instance_variable_setAsync(java.util.Map<String, String> context)
    {
        return _iceI_instance_variable_setAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_instance_variable_setAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "instance_variable_set", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void instance_variables()
    {
        instance_variables(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void instance_variables(java.util.Map<String, String> context)
    {
        _iceI_instance_variablesAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> instance_variablesAsync()
    {
        return _iceI_instance_variablesAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> instance_variablesAsync(java.util.Map<String, String> context)
    {
        return _iceI_instance_variablesAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<Void> _iceI_instance_variablesAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<Void> f = new com.zeroc.Ice.OutgoingAsync<>(this, "instance_variables", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    /**
     * Creates a new proxy that implements {@link breakPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static breakPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _breakPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static breakPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static breakPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _breakPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static breakPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static breakPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static breakPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _breakPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static breakPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _breakPrxI(obj.ice_facet(facet));
    }

    @Override
    breakPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    breakPrx ice_adapterId(String newAdapterId);

    @Override
    breakPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    breakPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    breakPrx ice_invocationTimeout(int newTimeout);

    @Override
    breakPrx ice_connectionCached(boolean newCache);

    @Override
    breakPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    breakPrx ice_secure(boolean b);

    @Override
    breakPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    breakPrx ice_preferSecure(boolean b);

    @Override
    breakPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    breakPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    breakPrx ice_collocationOptimized(boolean b);

    @Override
    breakPrx ice_twoway();

    @Override
    breakPrx ice_oneway();

    @Override
    breakPrx ice_batchOneway();

    @Override
    breakPrx ice_datagram();

    @Override
    breakPrx ice_batchDatagram();

    @Override
    breakPrx ice_compress(boolean co);

    @Override
    breakPrx ice_connectionId(String connectionId);

    @Override
    breakPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::BEGIN::break";
    }

    /**
     * @hidden
     **/
    @Override
    default breakPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _breakPrxI(ref);
    }
}
