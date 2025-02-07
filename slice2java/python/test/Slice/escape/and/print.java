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

public interface print extends com.zeroc.Ice.Object
{
    _assert raise(_continue _else, _for _return, delPrx _while, execPrx _yield, ifPrx or, int global, com.zeroc.Ice.Current current)
        throws is;

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::and::print"
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
        return "::and::print";
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_raise(print obj, com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        _continue iceP_else;
        final com.zeroc.Ice.Holder<_for> icePP_return = new com.zeroc.Ice.Holder<>();
        delPrx iceP_while;
        execPrx iceP_yield;
        ifPrx iceP_or;
        int iceP_global;
        iceP_else = _continue.ice_read(istr);
        istr.readValue(v -> icePP_return.value = v, _for.class);
        iceP_while = delPrx.uncheckedCast(istr.readProxy());
        iceP_yield = execPrx.uncheckedCast(istr.readProxy());
        iceP_or = ifPrx.uncheckedCast(istr.readProxy());
        iceP_global = istr.readInt();
        istr.readPendingValues();
        istr.endEncapsulation();
        _for iceP_return = icePP_return.value;
        _assert ret = obj.raise(iceP_else, iceP_return, iceP_while, iceP_yield, iceP_or, iceP_global, request.current);
        var ostr = request.current.startReplyStream();
        ostr.startEncapsulation(request.current.encoding, null);
        _assert.ice_write(ostr, ret);
        ostr.endEncapsulation();
        return java.util.concurrent.CompletableFuture.completedFuture(new com.zeroc.Ice.OutgoingResponse(ostr));
    }

    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> dispatch(com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        return switch (request.current.operation)
        {
            case "raise" -> print._iceD_raise(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
