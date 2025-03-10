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

package cs_abstract;

public interface _case extends com.zeroc.Ice.Object
{
    /**
     * @param current The Current object for the invocation.
     * @return make sure the parameter doc-comment is mapped without a leading '@'.
     **/
    java.util.concurrent.CompletionStage<java.lang.Integer> catchAsync(int checked, com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::cs_abstract::case"
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
        return "::cs_abstract::case";
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_catch(_case obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        int iceP_checked;
        iceP_checked = istr.readInt();
        istr.endEncapsulation();
        var result = obj.catchAsync(iceP_checked, request.current);
        return result.thenApply(r -> request.current.createOutgoingResponse(
            r,
            (ostr, value) -> 
            {
                ostr.writeInt(value);
            },
            null));
    }

    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> dispatch(com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        return switch (request.current.operation)
        {
            case "catch" -> _case._iceD_catch(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
