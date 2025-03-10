// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'ServerPrivateAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package test.Ice.slicing.exceptions.serverAMD.Test;

public interface TestIntf extends com.zeroc.Ice.Object
{
    java.util.concurrent.CompletionStage<Void> baseAsBaseAsync(com.zeroc.Ice.Current current)
        throws Base;

    java.util.concurrent.CompletionStage<Void> unknownDerivedAsBaseAsync(com.zeroc.Ice.Current current)
        throws Base;

    java.util.concurrent.CompletionStage<Void> knownDerivedAsBaseAsync(com.zeroc.Ice.Current current)
        throws Base;

    java.util.concurrent.CompletionStage<Void> knownDerivedAsKnownDerivedAsync(com.zeroc.Ice.Current current)
        throws KnownDerived;

    java.util.concurrent.CompletionStage<Void> unknownIntermediateAsBaseAsync(com.zeroc.Ice.Current current)
        throws Base;

    java.util.concurrent.CompletionStage<Void> knownIntermediateAsBaseAsync(com.zeroc.Ice.Current current)
        throws Base;

    java.util.concurrent.CompletionStage<Void> knownMostDerivedAsBaseAsync(com.zeroc.Ice.Current current)
        throws Base;

    java.util.concurrent.CompletionStage<Void> knownIntermediateAsKnownIntermediateAsync(com.zeroc.Ice.Current current)
        throws KnownIntermediate;

    java.util.concurrent.CompletionStage<Void> knownMostDerivedAsKnownIntermediateAsync(com.zeroc.Ice.Current current)
        throws KnownIntermediate;

    java.util.concurrent.CompletionStage<Void> knownMostDerivedAsKnownMostDerivedAsync(com.zeroc.Ice.Current current)
        throws KnownMostDerived;

    java.util.concurrent.CompletionStage<Void> unknownMostDerived1AsBaseAsync(com.zeroc.Ice.Current current)
        throws Base;

    java.util.concurrent.CompletionStage<Void> unknownMostDerived1AsKnownIntermediateAsync(com.zeroc.Ice.Current current)
        throws KnownIntermediate;

    java.util.concurrent.CompletionStage<Void> unknownMostDerived2AsBaseAsync(com.zeroc.Ice.Current current)
        throws Base;

    java.util.concurrent.CompletionStage<Void> shutdownAsync(com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::Test::TestIntf"
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
        return "::Test::TestIntf";
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_baseAsBase(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.baseAsBaseAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_unknownDerivedAsBase(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.unknownDerivedAsBaseAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_knownDerivedAsBase(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.knownDerivedAsBaseAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_knownDerivedAsKnownDerived(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.knownDerivedAsKnownDerivedAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_unknownIntermediateAsBase(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.unknownIntermediateAsBaseAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_knownIntermediateAsBase(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.knownIntermediateAsBaseAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_knownMostDerivedAsBase(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.knownMostDerivedAsBaseAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_knownIntermediateAsKnownIntermediate(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.knownIntermediateAsKnownIntermediateAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_knownMostDerivedAsKnownIntermediate(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.knownMostDerivedAsKnownIntermediateAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_knownMostDerivedAsKnownMostDerived(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.knownMostDerivedAsKnownMostDerivedAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_unknownMostDerived1AsBase(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.unknownMostDerived1AsBaseAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_unknownMostDerived1AsKnownIntermediate(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.unknownMostDerived1AsKnownIntermediateAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_unknownMostDerived2AsBase(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.unknownMostDerived2AsBaseAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_shutdown(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.shutdownAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> dispatch(com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        return switch (request.current.operation)
        {
            case "baseAsBase" -> TestIntf._iceD_baseAsBase(this, request);
            case "unknownDerivedAsBase" -> TestIntf._iceD_unknownDerivedAsBase(this, request);
            case "knownDerivedAsBase" -> TestIntf._iceD_knownDerivedAsBase(this, request);
            case "knownDerivedAsKnownDerived" -> TestIntf._iceD_knownDerivedAsKnownDerived(this, request);
            case "unknownIntermediateAsBase" -> TestIntf._iceD_unknownIntermediateAsBase(this, request);
            case "knownIntermediateAsBase" -> TestIntf._iceD_knownIntermediateAsBase(this, request);
            case "knownMostDerivedAsBase" -> TestIntf._iceD_knownMostDerivedAsBase(this, request);
            case "knownIntermediateAsKnownIntermediate" -> TestIntf._iceD_knownIntermediateAsKnownIntermediate(this, request);
            case "knownMostDerivedAsKnownIntermediate" -> TestIntf._iceD_knownMostDerivedAsKnownIntermediate(this, request);
            case "knownMostDerivedAsKnownMostDerived" -> TestIntf._iceD_knownMostDerivedAsKnownMostDerived(this, request);
            case "unknownMostDerived1AsBase" -> TestIntf._iceD_unknownMostDerived1AsBase(this, request);
            case "unknownMostDerived1AsKnownIntermediate" -> TestIntf._iceD_unknownMostDerived1AsKnownIntermediate(this, request);
            case "unknownMostDerived2AsBase" -> TestIntf._iceD_unknownMostDerived2AsBase(this, request);
            case "shutdown" -> TestIntf._iceD_shutdown(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
