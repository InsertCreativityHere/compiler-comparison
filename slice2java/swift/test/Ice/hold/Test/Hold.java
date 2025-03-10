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

package Test;

public interface Hold extends com.zeroc.Ice.Object
{
    /**
     * Puts the adapter on hold, and optionally reactivates it.
     * @param delay When less than 0, puts the adapter on hold indefinitely. When 0, puts the adapter on hold and
     * immediately reactivates it. When greater than 0, starts a background task that sleeps for delay
     * milliseconds, puts the adapter on hold and then immediately reactivates it.
     * @param current The Current object for the invocation.
     **/
    void putOnHold(int delay, com.zeroc.Ice.Current current);

    /**
     * Starts a background task that calls waitForHold and activate on the adapter.
     * @param current The Current object for the invocation.
     **/
    void waitForHold(com.zeroc.Ice.Current current);

    /**
     * Shuts down the server.
     * @param current The Current object for the invocation.
     **/
    void shutdown(com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::Test::Hold"
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
        return "::Test::Hold";
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_putOnHold(Hold obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        int iceP_delay;
        iceP_delay = istr.readInt();
        istr.endEncapsulation();
        obj.putOnHold(iceP_delay, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_waitForHold(Hold obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        obj.waitForHold(request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_shutdown(Hold obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        obj.shutdown(request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> dispatch(com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        return switch (request.current.operation)
        {
            case "putOnHold" -> Hold._iceD_putOnHold(this, request);
            case "waitForHold" -> Hold._iceD_waitForHold(this, request);
            case "shutdown" -> Hold._iceD_shutdown(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
