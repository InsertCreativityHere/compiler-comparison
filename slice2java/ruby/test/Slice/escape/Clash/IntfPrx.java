//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Clash.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Clash;

public interface IntfPrx extends com.zeroc.Ice.ObjectPrx
{
    default void context()
    {
        context(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void context(java.util.Map<String, String> context)
    {
        _iceI_contextAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> contextAsync()
    {
        return _iceI_contextAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> contextAsync(java.util.Map<String, String> context)
    {
        return _iceI_contextAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_contextAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "context", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void current()
    {
        current(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void current(java.util.Map<String, String> context)
    {
        _iceI_currentAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> currentAsync()
    {
        return _iceI_currentAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> currentAsync(java.util.Map<String, String> context)
    {
        return _iceI_currentAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_currentAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "current", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void response()
    {
        response(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void response(java.util.Map<String, String> context)
    {
        _iceI_responseAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> responseAsync()
    {
        return _iceI_responseAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> responseAsync(java.util.Map<String, String> context)
    {
        return _iceI_responseAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_responseAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "response", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void upCast()
    {
        upCast(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void upCast(java.util.Map<String, String> context)
    {
        _iceI_upCastAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> upCastAsync()
    {
        return _iceI_upCastAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> upCastAsync(java.util.Map<String, String> context)
    {
        return _iceI_upCastAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_upCastAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "upCast", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void typeId()
    {
        typeId(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void typeId(java.util.Map<String, String> context)
    {
        _iceI_typeIdAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> typeIdAsync()
    {
        return _iceI_typeIdAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> typeIdAsync(java.util.Map<String, String> context)
    {
        return _iceI_typeIdAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_typeIdAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "typeId", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void del()
    {
        del(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void del(java.util.Map<String, String> context)
    {
        _iceI_delAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> delAsync()
    {
        return _iceI_delAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> delAsync(java.util.Map<String, String> context)
    {
        return _iceI_delAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_delAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "del", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void cookie()
    {
        cookie(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void cookie(java.util.Map<String, String> context)
    {
        _iceI_cookieAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> cookieAsync()
    {
        return _iceI_cookieAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> cookieAsync(java.util.Map<String, String> context)
    {
        return _iceI_cookieAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_cookieAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "cookie", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void sync()
    {
        sync(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void sync(java.util.Map<String, String> context)
    {
        _iceI_syncAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> syncAsync()
    {
        return _iceI_syncAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> syncAsync(java.util.Map<String, String> context)
    {
        return _iceI_syncAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_syncAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "sync", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void inS()
    {
        inS(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void inS(java.util.Map<String, String> context)
    {
        _iceI_inSAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> inSAsync()
    {
        return _iceI_inSAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> inSAsync(java.util.Map<String, String> context)
    {
        return _iceI_inSAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_inSAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "inS", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void istr()
    {
        istr(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void istr(java.util.Map<String, String> context)
    {
        _iceI_istrAsync(context, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> istrAsync()
    {
        return _iceI_istrAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> istrAsync(java.util.Map<String, String> context)
    {
        return _iceI_istrAsync(context, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_istrAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "istr", null, sync, null);
        f.invoke(false, context, null, null, null);
        return f;
    }

    default void op(String context, String current, String response, String ex, String sent, String cookie, String sync, String result, String istr, String ostr, String proxy)
    {
        op(context, current, response, ex, sent, cookie, sync, result, istr, ostr, proxy, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void op(String context, String current, String response, String ex, String sent, String cookie, String sync, String result, String istr, String ostr, String proxy, java.util.Map<String, String> context_)
    {
        _iceI_opAsync(context, current, response, ex, sent, cookie, sync, result, istr, ostr, proxy, context_, true).waitForResponse();
    }

    default void op(String context, String current, String response, String ex, String sent, String cookie, String sync, String result, String istr, String ostr, java.util.Optional<java.lang.String> proxy)
    {
        op(context, current, response, ex, sent, cookie, sync, result, istr, ostr, proxy, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default void op(String context, String current, String response, String ex, String sent, String cookie, String sync, String result, String istr, String ostr, java.util.Optional<java.lang.String> proxy, java.util.Map<String, String> context_)
    {
        _iceI_opAsync(context, current, response, ex, sent, cookie, sync, result, istr, ostr, proxy, context_, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Void> opAsync(String context, String current, String response, String ex, String sent, String cookie, String sync, String result, String istr, String ostr, String proxy)
    {
        return _iceI_opAsync(context, current, response, ex, sent, cookie, sync, result, istr, ostr, proxy, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> opAsync(String context, String current, String response, String ex, String sent, String cookie, String sync, String result, String istr, String ostr, String proxy, java.util.Map<String, String> context_)
    {
        return _iceI_opAsync(context, current, response, ex, sent, cookie, sync, result, istr, ostr, proxy, context_, false);
    }

    /**
     * @hidden
     * @param iceP_context -
     * @param iceP_current -
     * @param iceP_response -
     * @param iceP_ex -
     * @param iceP_sent -
     * @param iceP_cookie -
     * @param iceP_sync -
     * @param iceP_result -
     * @param iceP_istr -
     * @param iceP_ostr -
     * @param iceP_proxy -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_opAsync(String iceP_context, String iceP_current, String iceP_response, String iceP_ex, String iceP_sent, String iceP_cookie, String iceP_sync, String iceP_result, String iceP_istr, String iceP_ostr, String iceP_proxy, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "op", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeString(iceP_context);
                     ostr.writeString(iceP_current);
                     ostr.writeString(iceP_response);
                     ostr.writeString(iceP_ex);
                     ostr.writeString(iceP_sent);
                     ostr.writeString(iceP_cookie);
                     ostr.writeString(iceP_sync);
                     ostr.writeString(iceP_result);
                     ostr.writeString(iceP_istr);
                     ostr.writeString(iceP_ostr);
                     ostr.writeString(1, iceP_proxy);
                 }, null);
        return f;
    }

    default java.util.concurrent.CompletableFuture<Void> opAsync(String context, String current, String response, String ex, String sent, String cookie, String sync, String result, String istr, String ostr, java.util.Optional<java.lang.String> proxy)
    {
        return _iceI_opAsync(context, current, response, ex, sent, cookie, sync, result, istr, ostr, proxy, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Void> opAsync(String context, String current, String response, String ex, String sent, String cookie, String sync, String result, String istr, String ostr, java.util.Optional<java.lang.String> proxy, java.util.Map<String, String> context_)
    {
        return _iceI_opAsync(context, current, response, ex, sent, cookie, sync, result, istr, ostr, proxy, context_, false);
    }

    /**
     * @hidden
     * @param iceP_context -
     * @param iceP_current -
     * @param iceP_response -
     * @param iceP_ex -
     * @param iceP_sent -
     * @param iceP_cookie -
     * @param iceP_sync -
     * @param iceP_result -
     * @param iceP_istr -
     * @param iceP_ostr -
     * @param iceP_proxy -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Void> _iceI_opAsync(String iceP_context, String iceP_current, String iceP_response, String iceP_ex, String iceP_sent, String iceP_cookie, String iceP_sync, String iceP_result, String iceP_istr, String iceP_ostr, java.util.Optional<java.lang.String> iceP_proxy, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Void> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "op", null, sync, null);
        f.invoke(false, context, null, ostr -> {
                     ostr.writeString(iceP_context);
                     ostr.writeString(iceP_current);
                     ostr.writeString(iceP_response);
                     ostr.writeString(iceP_ex);
                     ostr.writeString(iceP_sent);
                     ostr.writeString(iceP_cookie);
                     ostr.writeString(iceP_sync);
                     ostr.writeString(iceP_result);
                     ostr.writeString(iceP_istr);
                     ostr.writeString(iceP_ostr);
                     ostr.writeString(1, iceP_proxy);
                 }, null);
        return f;
    }

    default Intf.OpOutResult opOut()
    {
        return opOut(com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    default Intf.OpOutResult opOut(java.util.Map<String, String> context_)
    {
        return _iceI_opOutAsync(context_, true).waitForResponse();
    }

    default java.util.concurrent.CompletableFuture<Intf.OpOutResult> opOutAsync()
    {
        return _iceI_opOutAsync(com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    default java.util.concurrent.CompletableFuture<Intf.OpOutResult> opOutAsync(java.util.Map<String, String> context_)
    {
        return _iceI_opOutAsync(context_, false);
    }

    /**
     * @hidden
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<Intf.OpOutResult> _iceI_opOutAsync(java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<Intf.OpOutResult> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "opOut", null, sync, null);
        f.invoke(true, context, null, null, istr -> {
                     Intf.OpOutResult ret = new Intf.OpOutResult();
                     ret.read(istr);
                     return ret;
                 });
        return f;
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static IntfPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, ice_staticId(), IntfPrx.class, _IntfPrxI.class);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static IntfPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, context, ice_staticId(), IntfPrx.class, _IntfPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static IntfPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, ice_staticId(), IntfPrx.class, _IntfPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static IntfPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, context, ice_staticId(), IntfPrx.class, _IntfPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static IntfPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, IntfPrx.class, _IntfPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static IntfPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, facet, IntfPrx.class, _IntfPrxI.class);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the per-proxy context.
     * @param newContext The context for the new proxy.
     * @return A proxy with the specified per-proxy context.
     **/
    @Override
    default IntfPrx ice_context(java.util.Map<String, String> newContext)
    {
        return (IntfPrx)_ice_context(newContext);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the adapter ID.
     * @param newAdapterId The adapter ID for the new proxy.
     * @return A proxy with the specified adapter ID.
     **/
    @Override
    default IntfPrx ice_adapterId(String newAdapterId)
    {
        return (IntfPrx)_ice_adapterId(newAdapterId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoints.
     * @param newEndpoints The endpoints for the new proxy.
     * @return A proxy with the specified endpoints.
     **/
    @Override
    default IntfPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints)
    {
        return (IntfPrx)_ice_endpoints(newEndpoints);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator cache timeout.
     * @param newTimeout The new locator cache timeout (in seconds).
     * @return A proxy with the specified locator cache timeout.
     **/
    @Override
    default IntfPrx ice_locatorCacheTimeout(int newTimeout)
    {
        return (IntfPrx)_ice_locatorCacheTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the invocation timeout.
     * @param newTimeout The new invocation timeout (in seconds).
     * @return A proxy with the specified invocation timeout.
     **/
    @Override
    default IntfPrx ice_invocationTimeout(int newTimeout)
    {
        return (IntfPrx)_ice_invocationTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for connection caching.
     * @param newCache <code>true</code> if the new proxy should cache connections; <code>false</code> otherwise.
     * @return A proxy with the specified caching policy.
     **/
    @Override
    default IntfPrx ice_connectionCached(boolean newCache)
    {
        return (IntfPrx)_ice_connectionCached(newCache);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoint selection policy.
     * @param newType The new endpoint selection policy.
     * @return A proxy with the specified endpoint selection policy.
     **/
    @Override
    default IntfPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType)
    {
        return (IntfPrx)_ice_endpointSelection(newType);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for how it selects endpoints.
     * @param b If <code>b</code> is <code>true</code>, only endpoints that use a secure transport are
     * used by the new proxy. If <code>b</code> is false, the returned proxy uses both secure and
     * insecure endpoints.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default IntfPrx ice_secure(boolean b)
    {
        return (IntfPrx)_ice_secure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the encoding used to marshal parameters.
     * @param e The encoding version to use to marshal request parameters.
     * @return A proxy with the specified encoding version.
     **/
    @Override
    default IntfPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e)
    {
        return (IntfPrx)_ice_encodingVersion(e);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its endpoint selection policy.
     * @param b If <code>b</code> is <code>true</code>, the new proxy will use secure endpoints for invocations
     * and only use insecure endpoints if an invocation cannot be made via secure endpoints. If <code>b</code> is
     * <code>false</code>, the proxy prefers insecure endpoints to secure ones.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default IntfPrx ice_preferSecure(boolean b)
    {
        return (IntfPrx)_ice_preferSecure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the router.
     * @param router The router for the new proxy.
     * @return A proxy with the specified router.
     **/
    @Override
    default IntfPrx ice_router(com.zeroc.Ice.RouterPrx router)
    {
        return (IntfPrx)_ice_router(router);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator.
     * @param locator The locator for the new proxy.
     * @return A proxy with the specified locator.
     **/
    @Override
    default IntfPrx ice_locator(com.zeroc.Ice.LocatorPrx locator)
    {
        return (IntfPrx)_ice_locator(locator);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for collocation optimization.
     * @param b <code>true</code> if the new proxy enables collocation optimization; <code>false</code> otherwise.
     * @return A proxy with the specified collocation optimization.
     **/
    @Override
    default IntfPrx ice_collocationOptimized(boolean b)
    {
        return (IntfPrx)_ice_collocationOptimized(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses twoway invocations.
     * @return A proxy that uses twoway invocations.
     **/
    @Override
    default IntfPrx ice_twoway()
    {
        return (IntfPrx)_ice_twoway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses oneway invocations.
     * @return A proxy that uses oneway invocations.
     **/
    @Override
    default IntfPrx ice_oneway()
    {
        return (IntfPrx)_ice_oneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch oneway invocations.
     * @return A proxy that uses batch oneway invocations.
     **/
    @Override
    default IntfPrx ice_batchOneway()
    {
        return (IntfPrx)_ice_batchOneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses datagram invocations.
     * @return A proxy that uses datagram invocations.
     **/
    @Override
    default IntfPrx ice_datagram()
    {
        return (IntfPrx)_ice_datagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch datagram invocations.
     * @return A proxy that uses batch datagram invocations.
     **/
    @Override
    default IntfPrx ice_batchDatagram()
    {
        return (IntfPrx)_ice_batchDatagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, except for compression.
     * @param co <code>true</code> enables compression for the new proxy; <code>false</code> disables compression.
     * @return A proxy with the specified compression setting.
     **/
    @Override
    default IntfPrx ice_compress(boolean co)
    {
        return (IntfPrx)_ice_compress(co);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection timeout setting.
     * @param t The connection timeout for the proxy in milliseconds.
     * @return A proxy with the specified timeout.
     **/
    @Override
    default IntfPrx ice_timeout(int t)
    {
        return (IntfPrx)_ice_timeout(t);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection ID.
     * @param connectionId The connection ID for the new proxy. An empty string removes the connection ID.
     * @return A proxy with the specified connection ID.
     **/
    @Override
    default IntfPrx ice_connectionId(String connectionId)
    {
        return (IntfPrx)_ice_connectionId(connectionId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except it's a fixed proxy bound
     * the given connection.@param connection The fixed proxy connection.
     * @return A fixed proxy bound to the given connection.
     **/
    @Override
    default IntfPrx ice_fixed(com.zeroc.Ice.Connection connection)
    {
        return (IntfPrx)_ice_fixed(connection);
    }

    static String ice_staticId()
    {
        return "::Clash::Intf";
    }
}
