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
     * @return A completion stage that the servant will complete when the invocation completes.
     **/
    java.util.concurrent.CompletionStage<Void> putOnHoldAsync(int delay, com.zeroc.Ice.Current current);

    /**
     * Starts a background task that calls waitForHold and activate on the adapter.
     * @param current The Current object for the invocation.
     * @return A completion stage that the servant will complete when the invocation completes.
     **/
    java.util.concurrent.CompletionStage<Void> waitForHoldAsync(com.zeroc.Ice.Current current);

    /**
     * Saves value as the last value.
     * @param value The new value.
     * @param expected The current value as expected by the caller.
     * @param current The Current object for the invocation.
     **/
    void setOneway(int value, int expected, com.zeroc.Ice.Current current);

    /**
     * Saves value as the last value after a delay.
     * @param value The new value.
     * @param delay The delay in milliseconds.
     * @param current The Current object for the invocation.
     * @return The previous value.
     **/
    int set(int value, int delay, com.zeroc.Ice.Current current);

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
        var result = obj.putOnHoldAsync(iceP_delay, request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_waitForHold(Hold obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.waitForHoldAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_setOneway(Hold obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        int iceP_value;
        int iceP_expected;
        iceP_value = istr.readInt();
        iceP_expected = istr.readInt();
        istr.endEncapsulation();
        obj.setOneway(iceP_value, iceP_expected, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_set(Hold obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        int iceP_value;
        int iceP_delay;
        iceP_value = istr.readInt();
        iceP_delay = istr.readInt();
        istr.endEncapsulation();
        int ret = obj.set(iceP_value, iceP_delay, request.current);
        var ostr = request.current.startReplyStream();
        ostr.startEncapsulation(request.current.encoding, null);
        ostr.writeInt(ret);
        ostr.endEncapsulation();
        return java.util.concurrent.CompletableFuture.completedFuture(new com.zeroc.Ice.OutgoingResponse(ostr));
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
            case "setOneway" -> Hold._iceD_setOneway(this, request);
            case "set" -> Hold._iceD_set(this, request);
            case "shutdown" -> Hold._iceD_shutdown(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
