//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `TypesServer.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.checksum.server.Test;

public interface Interface1 extends com.zeroc.Ice.Object
{
    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::Test::Interface1"
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
        return "::Test::Interface1";
    }
}
