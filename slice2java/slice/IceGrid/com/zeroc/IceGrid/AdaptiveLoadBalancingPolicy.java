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
 * Adaptive load balancing policy.
 **/
public class AdaptiveLoadBalancingPolicy extends LoadBalancingPolicy
{
    public AdaptiveLoadBalancingPolicy()
    {
        super();
        this.loadSample = "";
    }

    public AdaptiveLoadBalancingPolicy(String nReplicas, String loadSample)
    {
        super(nReplicas);
        this.loadSample = loadSample;
    }

    /**
     * The load sample to use for the load balancing. The allowed values for this attribute are "1", "5" and "15",
     * representing respectively the load average over the past minute, the past 5 minutes and the past 15 minutes.
     **/
    public String loadSample;

    public AdaptiveLoadBalancingPolicy clone()
    {
        return (AdaptiveLoadBalancingPolicy)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceGrid::AdaptiveLoadBalancingPolicy";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 7644446113488331707L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeString(loadSample);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        loadSample = istr_.readString();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
