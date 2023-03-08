//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
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

public interface FileReaderPrx extends com.zeroc.Ice.ObjectPrx
{
    /**
     * Count the number of given lines from the end of the file and
     * return the file offset.
     **/
    default long getOffsetFromEnd(String filename, int lines)
        throws com.zeroc.IceGrid.FileNotAvailableException
    {
        return getOffsetFromEnd(filename, lines, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Count the number of given lines from the end of the file and
     * return the file offset.
     * @param context The Context map to send with the invocation.
     **/
    default long getOffsetFromEnd(String filename, int lines, java.util.Map<String, String> context)
        throws com.zeroc.IceGrid.FileNotAvailableException
    {
        try
        {
            return _iceI_getOffsetFromEndAsync(filename, lines, context, true).waitForResponseOrUserEx();
        }
        catch(com.zeroc.IceGrid.FileNotAvailableException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw new com.zeroc.Ice.UnknownUserException(ex.ice_id(), ex);
        }
    }

    /**
     * Count the number of given lines from the end of the file and
     * return the file offset.
     * @return A future that will be completed with the result.
     **/
    default java.util.concurrent.CompletableFuture<java.lang.Long> getOffsetFromEndAsync(String filename, int lines)
    {
        return _iceI_getOffsetFromEndAsync(filename, lines, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Count the number of given lines from the end of the file and
     * return the file offset.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed with the result.
     **/
    default java.util.concurrent.CompletableFuture<java.lang.Long> getOffsetFromEndAsync(String filename, int lines, java.util.Map<String, String> context)
    {
        return _iceI_getOffsetFromEndAsync(filename, lines, context, false);
    }

    /**
     * @hidden
     * @param iceP_filename -
     * @param iceP_lines -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<java.lang.Long> _iceI_getOffsetFromEndAsync(String iceP_filename, int iceP_lines, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<java.lang.Long> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "getOffsetFromEnd", com.zeroc.Ice.OperationMode.Idempotent, sync, _iceE_getOffsetFromEnd);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeString(iceP_filename);
                     ostr.writeInt(iceP_lines);
                 }, istr -> {
                     long ret;
                     ret = istr.readLong();
                     return ret;
                 });
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_getOffsetFromEnd =
    {
        com.zeroc.IceGrid.FileNotAvailableException.class
    };

    /**
     * Read lines (or size bytes) at the specified position from the given file.
     * @return An instance of FileReader.ReadResult.
     **/
    default FileReader.ReadResult read(String filename, long pos, int size)
        throws com.zeroc.IceGrid.FileNotAvailableException
    {
        return read(filename, pos, size, com.zeroc.Ice.ObjectPrx.noExplicitContext);
    }

    /**
     * Read lines (or size bytes) at the specified position from the given file.
     * @param context The Context map to send with the invocation.
     * @return An instance of FileReader.ReadResult.
     **/
    default FileReader.ReadResult read(String filename, long pos, int size, java.util.Map<String, String> context)
        throws com.zeroc.IceGrid.FileNotAvailableException
    {
        try
        {
            return _iceI_readAsync(filename, pos, size, context, true).waitForResponseOrUserEx();
        }
        catch(com.zeroc.IceGrid.FileNotAvailableException ex)
        {
            throw ex;
        }
        catch(com.zeroc.Ice.UserException ex)
        {
            throw new com.zeroc.Ice.UnknownUserException(ex.ice_id(), ex);
        }
    }

    /**
     * Read lines (or size bytes) at the specified position from the given file.
     * @return A future that will be completed with an instance of FileReader.ReadResult.
     **/
    default java.util.concurrent.CompletableFuture<FileReader.ReadResult> readAsync(String filename, long pos, int size)
    {
        return _iceI_readAsync(filename, pos, size, com.zeroc.Ice.ObjectPrx.noExplicitContext, false);
    }

    /**
     * Read lines (or size bytes) at the specified position from the given file.
     * @param context The Context map to send with the invocation.
     * @return A future that will be completed with an instance of FileReader.ReadResult.
     **/
    default java.util.concurrent.CompletableFuture<FileReader.ReadResult> readAsync(String filename, long pos, int size, java.util.Map<String, String> context)
    {
        return _iceI_readAsync(filename, pos, size, context, false);
    }

    /**
     * @hidden
     * @param iceP_filename -
     * @param iceP_pos -
     * @param iceP_size -
     * @param context -
     * @param sync -
     * @return -
     **/
    default com.zeroc.IceInternal.OutgoingAsync<FileReader.ReadResult> _iceI_readAsync(String iceP_filename, long iceP_pos, int iceP_size, java.util.Map<String, String> context, boolean sync)
    {
        com.zeroc.IceInternal.OutgoingAsync<FileReader.ReadResult> f = new com.zeroc.IceInternal.OutgoingAsync<>(this, "read", com.zeroc.Ice.OperationMode.Idempotent, sync, _iceE_read);
        f.invoke(true, context, null, ostr -> {
                     ostr.writeString(iceP_filename);
                     ostr.writeLong(iceP_pos);
                     ostr.writeInt(iceP_size);
                 }, istr -> {
                     FileReader.ReadResult ret = new FileReader.ReadResult();
                     ret.read(istr);
                     return ret;
                 });
        return f;
    }

    /** @hidden */
    static final Class<?>[] _iceE_read =
    {
        com.zeroc.IceGrid.FileNotAvailableException.class
    };

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static FileReaderPrx checkedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, ice_staticId(), FileReaderPrx.class, _FileReaderPrxI.class);
    }

    /**
     * Contacts the remote server to verify that the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static FileReaderPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, context, ice_staticId(), FileReaderPrx.class, _FileReaderPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static FileReaderPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, ice_staticId(), FileReaderPrx.class, _FileReaderPrxI.class);
    }

    /**
     * Contacts the remote server to verify that a facet of the object implements this type.
     * Raises a local exception if a communication error occurs.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @param context The Context map to send with the invocation.
     * @return A proxy for this type, or null if the object does not support this type.
     **/
    static FileReaderPrx checkedCast(com.zeroc.Ice.ObjectPrx obj, String facet, java.util.Map<String, String> context)
    {
        return com.zeroc.Ice.ObjectPrx._checkedCast(obj, facet, context, ice_staticId(), FileReaderPrx.class, _FileReaderPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @return A proxy for this type.
     **/
    static FileReaderPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, FileReaderPrx.class, _FileReaderPrxI.class);
    }

    /**
     * Downcasts the given proxy to this type without contacting the remote server.
     * @param obj The untyped proxy.
     * @param facet The name of the desired facet.
     * @return A proxy for this type.
     **/
    static FileReaderPrx uncheckedCast(com.zeroc.Ice.ObjectPrx obj, String facet)
    {
        return com.zeroc.Ice.ObjectPrx._uncheckedCast(obj, facet, FileReaderPrx.class, _FileReaderPrxI.class);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the per-proxy context.
     * @param newContext The context for the new proxy.
     * @return A proxy with the specified per-proxy context.
     **/
    @Override
    default FileReaderPrx ice_context(java.util.Map<String, String> newContext)
    {
        return (FileReaderPrx)_ice_context(newContext);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the adapter ID.
     * @param newAdapterId The adapter ID for the new proxy.
     * @return A proxy with the specified adapter ID.
     **/
    @Override
    default FileReaderPrx ice_adapterId(String newAdapterId)
    {
        return (FileReaderPrx)_ice_adapterId(newAdapterId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoints.
     * @param newEndpoints The endpoints for the new proxy.
     * @return A proxy with the specified endpoints.
     **/
    @Override
    default FileReaderPrx ice_endpoints(com.zeroc.Ice.Endpoint[] newEndpoints)
    {
        return (FileReaderPrx)_ice_endpoints(newEndpoints);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator cache timeout.
     * @param newTimeout The new locator cache timeout (in seconds).
     * @return A proxy with the specified locator cache timeout.
     **/
    @Override
    default FileReaderPrx ice_locatorCacheTimeout(int newTimeout)
    {
        return (FileReaderPrx)_ice_locatorCacheTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the invocation timeout.
     * @param newTimeout The new invocation timeout (in seconds).
     * @return A proxy with the specified invocation timeout.
     **/
    @Override
    default FileReaderPrx ice_invocationTimeout(int newTimeout)
    {
        return (FileReaderPrx)_ice_invocationTimeout(newTimeout);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for connection caching.
     * @param newCache <code>true</code> if the new proxy should cache connections; <code>false</code> otherwise.
     * @return A proxy with the specified caching policy.
     **/
    @Override
    default FileReaderPrx ice_connectionCached(boolean newCache)
    {
        return (FileReaderPrx)_ice_connectionCached(newCache);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the endpoint selection policy.
     * @param newType The new endpoint selection policy.
     * @return A proxy with the specified endpoint selection policy.
     **/
    @Override
    default FileReaderPrx ice_endpointSelection(com.zeroc.Ice.EndpointSelectionType newType)
    {
        return (FileReaderPrx)_ice_endpointSelection(newType);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for how it selects endpoints.
     * @param b If <code>b</code> is <code>true</code>, only endpoints that use a secure transport are
     * used by the new proxy. If <code>b</code> is false, the returned proxy uses both secure and
     * insecure endpoints.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default FileReaderPrx ice_secure(boolean b)
    {
        return (FileReaderPrx)_ice_secure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the encoding used to marshal parameters.
     * @param e The encoding version to use to marshal request parameters.
     * @return A proxy with the specified encoding version.
     **/
    @Override
    default FileReaderPrx ice_encodingVersion(com.zeroc.Ice.EncodingVersion e)
    {
        return (FileReaderPrx)_ice_encodingVersion(e);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its endpoint selection policy.
     * @param b If <code>b</code> is <code>true</code>, the new proxy will use secure endpoints for invocations
     * and only use insecure endpoints if an invocation cannot be made via secure endpoints. If <code>b</code> is
     * <code>false</code>, the proxy prefers insecure endpoints to secure ones.
     * @return A proxy with the specified selection policy.
     **/
    @Override
    default FileReaderPrx ice_preferSecure(boolean b)
    {
        return (FileReaderPrx)_ice_preferSecure(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the router.
     * @param router The router for the new proxy.
     * @return A proxy with the specified router.
     **/
    @Override
    default FileReaderPrx ice_router(com.zeroc.Ice.RouterPrx router)
    {
        return (FileReaderPrx)_ice_router(router);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for the locator.
     * @param locator The locator for the new proxy.
     * @return A proxy with the specified locator.
     **/
    @Override
    default FileReaderPrx ice_locator(com.zeroc.Ice.LocatorPrx locator)
    {
        return (FileReaderPrx)_ice_locator(locator);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for collocation optimization.
     * @param b <code>true</code> if the new proxy enables collocation optimization; <code>false</code> otherwise.
     * @return A proxy with the specified collocation optimization.
     **/
    @Override
    default FileReaderPrx ice_collocationOptimized(boolean b)
    {
        return (FileReaderPrx)_ice_collocationOptimized(b);
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses twoway invocations.
     * @return A proxy that uses twoway invocations.
     **/
    @Override
    default FileReaderPrx ice_twoway()
    {
        return (FileReaderPrx)_ice_twoway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses oneway invocations.
     * @return A proxy that uses oneway invocations.
     **/
    @Override
    default FileReaderPrx ice_oneway()
    {
        return (FileReaderPrx)_ice_oneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch oneway invocations.
     * @return A proxy that uses batch oneway invocations.
     **/
    @Override
    default FileReaderPrx ice_batchOneway()
    {
        return (FileReaderPrx)_ice_batchOneway();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses datagram invocations.
     * @return A proxy that uses datagram invocations.
     **/
    @Override
    default FileReaderPrx ice_datagram()
    {
        return (FileReaderPrx)_ice_datagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, but uses batch datagram invocations.
     * @return A proxy that uses batch datagram invocations.
     **/
    @Override
    default FileReaderPrx ice_batchDatagram()
    {
        return (FileReaderPrx)_ice_batchDatagram();
    }

    /**
     * Returns a proxy that is identical to this proxy, except for compression.
     * @param co <code>true</code> enables compression for the new proxy; <code>false</code> disables compression.
     * @return A proxy with the specified compression setting.
     **/
    @Override
    default FileReaderPrx ice_compress(boolean co)
    {
        return (FileReaderPrx)_ice_compress(co);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection timeout setting.
     * @param t The connection timeout for the proxy in milliseconds.
     * @return A proxy with the specified timeout.
     **/
    @Override
    default FileReaderPrx ice_timeout(int t)
    {
        return (FileReaderPrx)_ice_timeout(t);
    }

    /**
     * Returns a proxy that is identical to this proxy, except for its connection ID.
     * @param connectionId The connection ID for the new proxy. An empty string removes the connection ID.
     * @return A proxy with the specified connection ID.
     **/
    @Override
    default FileReaderPrx ice_connectionId(String connectionId)
    {
        return (FileReaderPrx)_ice_connectionId(connectionId);
    }

    /**
     * Returns a proxy that is identical to this proxy, except it's a fixed proxy bound
     * the given connection.@param connection The fixed proxy connection.
     * @return A fixed proxy bound to the given connection.
     **/
    @Override
    default FileReaderPrx ice_fixed(com.zeroc.Ice.Connection connection)
    {
        return (FileReaderPrx)_ice_fixed(connection);
    }

    static String ice_staticId()
    {
        return "::IceGrid::FileReader";
    }
}
