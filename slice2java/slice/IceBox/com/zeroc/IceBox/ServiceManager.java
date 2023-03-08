//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `IceBox.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceBox;

/**
 * Administers a set of {@link Service} instances.
 *
 * @see Service
 **/
public interface ServiceManager extends com.zeroc.Ice.Object
{
    /**
     * Returns the checksums for the IceBox Slice definitions.
     * @param current The Current object for the invocation.
     * @return A dictionary mapping Slice type ids to their checksums.
     **/
    java.util.Map<java.lang.String, java.lang.String> getSliceChecksums(com.zeroc.Ice.Current current);

    /**
     * Start an individual service.
     * @param service The service name.
     * @param current The Current object for the invocation.
     * @throws AlreadyStartedException If the service is already running.
     * @throws NoSuchServiceException If no service could be found with the given name.
     **/
    void startService(String service, com.zeroc.Ice.Current current)
        throws AlreadyStartedException,
               NoSuchServiceException;

    /**
     * Stop an individual service.
     * @param service The service name.
     * @param current The Current object for the invocation.
     * @throws AlreadyStoppedException If the service is already stopped.
     * @throws NoSuchServiceException If no service could be found with the given name.
     **/
    void stopService(String service, com.zeroc.Ice.Current current)
        throws AlreadyStoppedException,
               NoSuchServiceException;

    /**
     * Registers a new observer with the ServiceManager.
     * @param observer The new observer
     * @param current The Current object for the invocation.
     **/
    void addObserver(ServiceObserverPrx observer, com.zeroc.Ice.Current current);

    /**
     * Shut down all services. This causes stop to be invoked on all configured services.
     * @param current The Current object for the invocation.
     **/
    void shutdown(com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::IceBox::ServiceManager"
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
        return "::IceBox::ServiceManager";
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_getSliceChecksums(ServiceManager obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, current.mode);
        inS.readEmptyParams();
        java.util.Map<java.lang.String, java.lang.String> ret = obj.getSliceChecksums(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        com.zeroc.Ice.SliceChecksumDictHelper.write(ostr, ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_startService(ServiceManager obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        String iceP_service;
        iceP_service = istr.readString();
        inS.endReadParams();
        obj.startService(iceP_service, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_stopService(ServiceManager obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        String iceP_service;
        iceP_service = istr.readString();
        inS.endReadParams();
        obj.stopService(iceP_service, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_addObserver(ServiceManager obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        ServiceObserverPrx iceP_observer;
        iceP_observer = ServiceObserverPrx.uncheckedCast(istr.readProxy());
        inS.endReadParams();
        obj.addObserver(iceP_observer, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_shutdown(ServiceManager obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.shutdown(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /** @hidden */
    final static String[] _iceOps =
    {
        "addObserver",
        "getSliceChecksums",
        "ice_id",
        "ice_ids",
        "ice_isA",
        "ice_ping",
        "shutdown",
        "startService",
        "stopService"
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
                return _iceD_addObserver(this, in, current);
            }
            case 1:
            {
                return _iceD_getSliceChecksums(this, in, current);
            }
            case 2:
            {
                return com.zeroc.Ice.Object._iceD_ice_id(this, in, current);
            }
            case 3:
            {
                return com.zeroc.Ice.Object._iceD_ice_ids(this, in, current);
            }
            case 4:
            {
                return com.zeroc.Ice.Object._iceD_ice_isA(this, in, current);
            }
            case 5:
            {
                return com.zeroc.Ice.Object._iceD_ice_ping(this, in, current);
            }
            case 6:
            {
                return _iceD_shutdown(this, in, current);
            }
            case 7:
            {
                return _iceD_startService(this, in, current);
            }
            case 8:
            {
                return _iceD_stopService(this, in, current);
            }
        }

        assert(false);
        throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
    }
}
