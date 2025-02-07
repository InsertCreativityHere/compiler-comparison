// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Admin.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.IceGrid;

/**
 * The database observer interface. Observers should implement this interface to receive information about the
 * state of the IceGrid registry database.
 **/
public interface ApplicationObserver extends com.zeroc.Ice.Object
{
    /**
     * <code>applicationInit</code> is called after the registration of an observer to indicate the state of the
     * registry.
     * @param serial The current serial number of the registry database. This serial number allows observers to
     * make sure that their internal state is synchronized with the registry.
     * @param applications The applications currently registered with the registry.
     * @param current The Current object for the invocation.
     **/
    void applicationInit(int serial, java.util.List<ApplicationInfo> applications, com.zeroc.Ice.Current current);

    /**
     * The <code>applicationAdded</code> operation is called to notify an observer that an application was added.
     * @param serial The new serial number of the registry database.
     * @param desc The descriptor of the new application.
     * @param current The Current object for the invocation.
     **/
    void applicationAdded(int serial, ApplicationInfo desc, com.zeroc.Ice.Current current);

    /**
     * The <code>applicationRemoved</code> operation is called to notify an observer that an application was
     * removed.
     * @param serial The new serial number of the registry database.
     * @param name The name of the application that was removed.
     * @param current The Current object for the invocation.
     **/
    void applicationRemoved(int serial, String name, com.zeroc.Ice.Current current);

    /**
     * The <code>applicationUpdated</code> operation is called to notify an observer that an application was
     * updated.
     * @param serial The new serial number of the registry database.
     * @param desc The descriptor of the update.
     * @param current The Current object for the invocation.
     **/
    void applicationUpdated(int serial, ApplicationUpdateInfo desc, com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::IceGrid::ApplicationObserver"
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
        return "::IceGrid::ApplicationObserver";
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_applicationInit(ApplicationObserver obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        int iceP_serial;
        java.util.List<ApplicationInfo> iceP_applications;
        iceP_serial = istr.readInt();
        iceP_applications = ApplicationInfoSeqHelper.read(istr);
        istr.readPendingValues();
        istr.endEncapsulation();
        obj.applicationInit(iceP_serial, iceP_applications, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_applicationAdded(ApplicationObserver obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        int iceP_serial;
        ApplicationInfo iceP_desc;
        iceP_serial = istr.readInt();
        iceP_desc = ApplicationInfo.ice_read(istr);
        istr.readPendingValues();
        istr.endEncapsulation();
        obj.applicationAdded(iceP_serial, iceP_desc, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_applicationRemoved(ApplicationObserver obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        int iceP_serial;
        String iceP_name;
        iceP_serial = istr.readInt();
        iceP_name = istr.readString();
        istr.endEncapsulation();
        obj.applicationRemoved(iceP_serial, iceP_name, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_applicationUpdated(ApplicationObserver obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        int iceP_serial;
        ApplicationUpdateInfo iceP_desc;
        iceP_serial = istr.readInt();
        iceP_desc = ApplicationUpdateInfo.ice_read(istr);
        istr.readPendingValues();
        istr.endEncapsulation();
        obj.applicationUpdated(iceP_serial, iceP_desc, request.current);
        return java.util.concurrent.CompletableFuture.completedFuture(request.current.createEmptyOutgoingResponse());
    }

    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> dispatch(com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        return switch (request.current.operation)
        {
            case "applicationInit" -> ApplicationObserver._iceD_applicationInit(this, request);
            case "applicationAdded" -> ApplicationObserver._iceD_applicationAdded(this, request);
            case "applicationRemoved" -> ApplicationObserver._iceD_applicationRemoved(this, request);
            case "applicationUpdated" -> ApplicationObserver._iceD_applicationUpdated(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
