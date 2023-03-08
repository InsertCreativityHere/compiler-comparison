//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Session.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.Glacier2;

/**
 * The session manager for username/password authenticated users that
 * is responsible for managing {@link Session} objects. New session objects
 * are created by the {@link Router} object calling on an application-provided
 * session manager. If no session manager is provided by the application,
 * no client-visible sessions are passed to the client.
 *
 * @see Router
 * @see Session
 **/
public interface SessionManager extends com.zeroc.Ice.Object
{
    /**
     * Create a new session.
     * @param userId The user id for the session.
     * @param control A proxy to the session control object.
     * @param current The Current object for the invocation.
     * @return A proxy to the newly created session.
     * @throws CannotCreateSessionException Raised if the session
     * cannot be created.
     **/
    SessionPrx create(String userId, SessionControlPrx control, com.zeroc.Ice.Current current)
        throws CannotCreateSessionException;

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Glacier2::SessionManager",
        "::Ice::Object"
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
        return "::Glacier2::SessionManager";
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_create(SessionManager obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        String iceP_userId;
        SessionControlPrx iceP_control;
        iceP_userId = istr.readString();
        iceP_control = SessionControlPrx.uncheckedCast(istr.readProxy());
        inS.endReadParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        SessionPrx ret = obj.create(iceP_userId, iceP_control, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeProxy(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /** @hidden */
    final static String[] _iceOps =
    {
        "create",
        "ice_id",
        "ice_ids",
        "ice_isA",
        "ice_ping"
    };

    /** @hidden */
    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceDispatch(com.zeroc.IceInternal.Incoming in, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        int pos = java.util.Arrays.binarySearch(_iceOps, current.operation);
        if(pos < 0)
        {
            throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
        }

        switch(pos)
        {
            case 0:
            {
                return _iceD_create(this, in, current);
            }
            case 1:
            {
                return com.zeroc.Ice.Object._iceD_ice_id(this, in, current);
            }
            case 2:
            {
                return com.zeroc.Ice.Object._iceD_ice_ids(this, in, current);
            }
            case 3:
            {
                return com.zeroc.Ice.Object._iceD_ice_isA(this, in, current);
            }
            case 4:
            {
                return com.zeroc.Ice.Object._iceD_ice_ping(this, in, current);
            }
        }

        assert(false);
        throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
    }
}
