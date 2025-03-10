// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package test.Ice.background.Test;

public interface BackgroundController extends com.zeroc.Ice.Object
{
    void pauseCall(String call, com.zeroc.Ice.Current current);

    void resumeCall(String call, com.zeroc.Ice.Current current);

    void holdAdapter(com.zeroc.Ice.Current current);

    void resumeAdapter(com.zeroc.Ice.Current current);

    void initializeSocketStatus(int status, com.zeroc.Ice.Current current);

    void initializeException(boolean enable, com.zeroc.Ice.Current current);

    void readReady(boolean enable, com.zeroc.Ice.Current current);

    void readException(boolean enable, com.zeroc.Ice.Current current);

    void writeReady(boolean enable, com.zeroc.Ice.Current current);

    void writeException(boolean enable, com.zeroc.Ice.Current current);

    void buffered(boolean enable, com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::Test::BackgroundController"
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
        return "::Test::BackgroundController";
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_pauseCall(BackgroundController obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        String iceP_call;
        iceP_call = istr.readString();
        istr.endEncapsulation();
        obj.pauseCall(iceP_call, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_resumeCall(BackgroundController obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        String iceP_call;
        iceP_call = istr.readString();
        istr.endEncapsulation();
        obj.resumeCall(iceP_call, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_holdAdapter(BackgroundController obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        obj.holdAdapter(request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_resumeAdapter(BackgroundController obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        obj.resumeAdapter(request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_initializeSocketStatus(BackgroundController obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        int iceP_status;
        iceP_status = istr.readInt();
        istr.endEncapsulation();
        obj.initializeSocketStatus(iceP_status, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_initializeException(BackgroundController obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        boolean iceP_enable;
        iceP_enable = istr.readBool();
        istr.endEncapsulation();
        obj.initializeException(iceP_enable, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_readReady(BackgroundController obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        boolean iceP_enable;
        iceP_enable = istr.readBool();
        istr.endEncapsulation();
        obj.readReady(iceP_enable, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_readException(BackgroundController obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        boolean iceP_enable;
        iceP_enable = istr.readBool();
        istr.endEncapsulation();
        obj.readException(iceP_enable, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_writeReady(BackgroundController obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        boolean iceP_enable;
        iceP_enable = istr.readBool();
        istr.endEncapsulation();
        obj.writeReady(iceP_enable, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_writeException(BackgroundController obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        boolean iceP_enable;
        iceP_enable = istr.readBool();
        istr.endEncapsulation();
        obj.writeException(iceP_enable, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_buffered(BackgroundController obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        boolean iceP_enable;
        iceP_enable = istr.readBool();
        istr.endEncapsulation();
        obj.buffered(iceP_enable, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> dispatch(com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        return switch (request.current.operation)
        {
            case "pauseCall" -> BackgroundController._iceD_pauseCall(this, request);
            case "resumeCall" -> BackgroundController._iceD_resumeCall(this, request);
            case "holdAdapter" -> BackgroundController._iceD_holdAdapter(this, request);
            case "resumeAdapter" -> BackgroundController._iceD_resumeAdapter(this, request);
            case "initializeSocketStatus" -> BackgroundController._iceD_initializeSocketStatus(this, request);
            case "initializeException" -> BackgroundController._iceD_initializeException(this, request);
            case "readReady" -> BackgroundController._iceD_readReady(this, request);
            case "readException" -> BackgroundController._iceD_readException(this, request);
            case "writeReady" -> BackgroundController._iceD_writeReady(this, request);
            case "writeException" -> BackgroundController._iceD_writeException(this, request);
            case "buffered" -> BackgroundController._iceD_buffered(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
