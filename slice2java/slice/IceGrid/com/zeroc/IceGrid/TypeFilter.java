//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `PluginFacade.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceGrid;

/**
 * The TypeFilter is used by IceGrid to filter well-known proxies
 * returned to the client when it searches a well-known object by
 * type.
 *
 * IceGrid provides the list of available proxies. The implementation
 * of this method can use the provided context and connection to
 * filter and return the filtered set of proxies.
 **/
public interface TypeFilter
{
    /**
     * Filter the the given set of proxies.
     * @param type The type.
     * @param proxies The proxies to filter.
     * @param con The connection from the Ice client which is
     * looking up well-known objects by type.
     * @param ctx The context from the Ice client which is looking up
     * well-known objects by type.
     * @return The filtered proxies.
     **/
    com.zeroc.Ice.ObjectPrx[] filter(String type, com.zeroc.Ice.ObjectPrx[] proxies, com.zeroc.Ice.Connection con, java.util.Map<java.lang.String, java.lang.String> ctx);
}
