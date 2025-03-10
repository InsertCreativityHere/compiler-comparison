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

package Test.MB;

public interface IB1 extends Test.MA.IA
{
    IB1Prx ib1op(IB1Prx p, com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::Test::MA::IA",
        "::Test::MB::IB1"
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
        return "::Test::MB::IB1";
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_ib1op(IB1 obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        IB1Prx iceP_p;
        iceP_p = IB1Prx.uncheckedCast(istr.readProxy());
        istr.endEncapsulation();
        IB1Prx ret = obj.ib1op(iceP_p, request.current);
        var ostr = request.current.startReplyStream();
        ostr.startEncapsulation(request.current.encoding, null);
        ostr.writeProxy(ret);
        ostr.endEncapsulation();
        return java.util.concurrent.CompletableFuture.completedFuture(new com.zeroc.Ice.OutgoingResponse(ostr));
    }

    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> dispatch(com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        return switch (request.current.operation)
        {
            case "iaop" -> Test.MA.IA._iceD_iaop(this, request);
            case "ib1op" -> IB1._iceD_ib1op(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
