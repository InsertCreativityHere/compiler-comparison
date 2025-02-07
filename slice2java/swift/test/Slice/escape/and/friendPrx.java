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

package and;

public interface friendPrx extends com.zeroc.Ice.ObjectPrx
{
    default guard _goto(_continue _if, guard d, defer inline, _switch _private, doPrx mutable, breakPrx namespace, funcPrx _new, _switch not, doPrx operator, int or, int _protected, int _public, int register)
        throws as,
               _return
    {
        return _goto(_if, d, inline, _private, mutable, namespace, _new, not, operator, or, _protected, _public, register, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default guard _goto(_continue _if, guard d, defer inline, _switch _private, doPrx mutable, breakPrx namespace, funcPrx _new, _switch not, doPrx operator, int or, int _protected, int _public, int register, java.util.Map<String, String> context)
        throws as,
               _return
    {
        try
        {
            return _iceI_gotoAsync(_if, d, inline, _private, mutable, namespace, _new, not, operator, or, _protected, _public, register, context, true).waitForResponseOrUserEx();
        }
        catch(as ex)
        {
            throw ex;
        }
        catch(_return ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw com.zeroc.Ice.UnknownUserException.fromTypeId(ex.ice_id());
        }
    }

    default java.util.concurrent.CompletableFuture<guard> gotoAsync(_continue _if, guard d, defer inline, _switch _private, doPrx mutable, breakPrx namespace, funcPrx _new, _switch not, doPrx operator, int or, int _protected, int _public, int register)
    {
        return _iceI_gotoAsync(_if, d, inline, _private, mutable, namespace, _new, not, operator, or, _protected, _public, register, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<guard> gotoAsync(_continue _if, guard d, defer inline, _switch _private, doPrx mutable, breakPrx namespace, funcPrx _new, _switch not, doPrx operator, int or, int _protected, int _public, int register, java.util.Map<String, String> context)
    {
        return _iceI_gotoAsync(_if, d, inline, _private, mutable, namespace, _new, not, operator, or, _protected, _public, register, context, false);
    }

    /**
     * @hidden
     * @param iceP_if -
     * @param iceP_d -
     * @param iceP_inline -
     * @param iceP_private -
     * @param iceP_mutable -
     * @param iceP_namespace -
     * @param iceP_new -
     * @param iceP_not -
     * @param iceP_operator -
     * @param iceP_or -
     * @param iceP_protected -
     * @param iceP_public -
     * @param iceP_register -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.Ice.OutgoingAsync<guard> _iceI_gotoAsync(_continue iceP_if, guard iceP_d, defer iceP_inline, _switch iceP_private, doPrx iceP_mutable, breakPrx iceP_namespace, funcPrx iceP_new, _switch iceP_not, doPrx iceP_operator, int iceP_or, int iceP_protected, int iceP_public, int iceP_register, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.Ice.OutgoingAsync<guard> f = new com.zeroc.Ice.OutgoingAsync<>(this, "goto", null, sync, _iceE_goto);
        f.invoke(true, context, null, ostr -> {
                     _continue.ice_write(ostr, iceP_if);
                     guard.ice_write(ostr, iceP_d);
                     defer.ice_write(ostr, iceP_inline);
                     ostr.writeValue(iceP_private);
                     ostr.writeProxy(iceP_mutable);
                     ostr.writeProxy(iceP_namespace);
                     ostr.writeProxy(iceP_new);
                     ostr.writeValue(iceP_not);
                     ostr.writeProxy(iceP_operator);
                     ostr.writeInt(iceP_or);
                     ostr.writeInt(iceP_protected);
                     ostr.writeInt(iceP_public);
                     ostr.writeInt(iceP_register);
                     ostr.writePendingValues();
                 }, istr -> {
                     guard ret;
                     ret = guard.ice_read(istr);
                     return ret;
                 });
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_goto =
    {
        as.class,
        _return.class
    };

    /**
     * Creates a new proxy that implements {@link friendPrx}.
     * @param communicator The communicator of the new proxy.
     * @param proxyString The string representation of the proxy.
     * @return The new proxy.
     **/
    public static friendPrx createProxy(com.zeroc.Ice.Communicator communicator, String proxyString)
    {
        return new _friendPrxI(com.zeroc.Ice.ObjectPrx.createProxy(communicator, proxyString));
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static friendPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
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
    static friendPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return (obj != null && obj.ice_isA(ice_staticId(), context)) ? new _friendPrxI(obj) : null;
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static friendPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
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
    static friendPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return (obj == null) ? null : checkedCast(obj.ice_facet(facet), context);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static friendPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return (obj == null) ? null : new _friendPrxI(obj);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static friendPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return (obj == null) ? null : new _friendPrxI(obj.ice_facet(facet));
    }

    @Override
    friendPrx ice_context(java.util.Map<String, String> newContext);

    @Override
    friendPrx ice_adapterId(String newAdapterId);

    @Override
    friendPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints);

    @Override
    friendPrx ice_locatorCacheTimeout(int newTimeout);

    @Override
    friendPrx ice_invocationTimeout(int newTimeout);

    @Override
    friendPrx ice_connectionCached(boolean newCache);

    @Override
    friendPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType);

    @Override
    friendPrx ice_secure(boolean b);

    @Override
    friendPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e);

    @Override
    friendPrx ice_preferSecure(boolean b);

    @Override
    friendPrx ice_router(com.zeroc.Ice.RouterPrx router);

    @Override
    friendPrx ice_locator(com.zeroc.Ice.LocatorPrx locator);

    @Override
    friendPrx ice_collocationOptimized(boolean b);

    @Override
    friendPrx ice_twoway();

    @Override
    friendPrx ice_oneway();

    @Override
    friendPrx ice_batchOneway();

    @Override
    friendPrx ice_datagram();

    @Override
    friendPrx ice_batchDatagram();

    @Override
    friendPrx ice_compress(boolean co);

    @Override
    friendPrx ice_connectionId(String connectionId);

    @Override
    friendPrx ice_fixed(com.zeroc.Ice.Connection connection);

    static String ice_staticId()
    {
        return "::and::friend";
    }

    /**
     * @hidden
     **/
    @Override
    default friendPrx _newInstance(com.zeroc.Ice.Reference ref)
    {
        return new _friendPrxI(ref);
    }
}
