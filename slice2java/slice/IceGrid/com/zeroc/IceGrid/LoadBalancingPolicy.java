//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Descriptor.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceGrid;

/**
 * A base class for load balancing policies.
 **/
public class LoadBalancingPolicy extends com.zeroc.Ice.Value
{
    public LoadBalancingPolicy()
    {
        this.nReplicas = "";
    }

    public LoadBalancingPolicy(String nReplicas)
    {
        this.nReplicas = nReplicas;
    }

    /**
     * The number of replicas that will be used to gather the endpoints of a replica group.
     **/
    public String nReplicas;

    public LoadBalancingPolicy clone()
    {
        return (LoadBalancingPolicy)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceGrid::LoadBalancingPolicy";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -6003731515156779210L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(nReplicas);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        nReplicas = istr_.readString();
        istr_.endSlice();
    }
}
