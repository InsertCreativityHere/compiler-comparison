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

public interface _for extends com.zeroc.Ice.Object
{
    array foreach(breakPrx _if, echo global, functionPrx include, diePrx _return, enddeclarePrx list, int _new, int _static, com.zeroc.Ice.Current current)
        throws endif,
               endwhile;

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::and::for"
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
        return "::and::for";
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_foreach(_for obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        breakPrx iceP_if;
        final com.zeroc.Ice.Holder<echo> icePP_global = new com.zeroc.Ice.Holder<>();
        functionPrx iceP_include;
        diePrx iceP_return;
        enddeclarePrx iceP_list;
        int iceP_new;
        int iceP_static;
        iceP_if = breakPrx.uncheckedCast(istr.readProxy());
        istr.readValue(v -> icePP_global.value = v, echo.class);
        iceP_include = functionPrx.uncheckedCast(istr.readProxy());
        iceP_return = diePrx.uncheckedCast(istr.readProxy());
        iceP_list = enddeclarePrx.uncheckedCast(istr.readProxy());
        iceP_new = istr.readInt();
        iceP_static = istr.readInt();
        istr.readPendingValues();
        istr.endEncapsulation();
        echo iceP_global = icePP_global.value;
        array ret = obj.foreach(iceP_if, iceP_global, iceP_include, iceP_return, iceP_list, iceP_new, iceP_static, request.current);
        var ostr = request.current.startReplyStream();
        ostr.startEncapsulation(request.current.encoding, null);
        array.ice_write(ostr, ret);
        ostr.endEncapsulation();
        return java.util.concurrent.CompletableFuture.completedFuture(new com.zeroc.Ice.OutgoingResponse(ostr));
    }

    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> dispatch(com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        return switch (request.current.operation)
        {
            case "foreach" -> _for._iceD_foreach(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
