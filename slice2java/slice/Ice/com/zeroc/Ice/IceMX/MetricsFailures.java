//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Metrics.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.Ice.IceMX;

/**
 * A structure to keep track of failures associated with a given metrics.
 **/
public class MetricsFailures implements java.lang.Cloneable,
                                        java.io.Serializable
{
    /**
     * The identifier of the metrics object associated to the failures.
     **/
    public String id;

    /**
     * The failures observed for this metrics.
     **/
    public java.util.Map<java.lang.String, java.lang.Integer> failures;

    public MetricsFailures()
    {
        this.id = "";
    }

    public MetricsFailures(String id, java.util.Map<java.lang.String, java.lang.Integer> failures)
    {
        this.id = id;
        this.failures = failures;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        MetricsFailures r = null;
        if(rhs instanceof MetricsFailures)
        {
            r = (MetricsFailures)rhs;
        }

        if(r != null)
        {
            if(this.id != r.id)
            {
                if(this.id == null || r.id == null || !this.id.equals(r.id))
                {
                    return false;
                }
            }
            if(this.failures != r.failures)
            {
                if(this.failures == null || r.failures == null || !this.failures.equals(r.failures))
                {
                    return false;
                }
            }

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceMX::MetricsFailures");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, failures);
        return h_;
    }

    public MetricsFailures clone()
    {
        MetricsFailures c = null;
        try
        {
            c = (MetricsFailures)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.id);
        StringIntDictHelper.write(ostr, this.failures);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.id = istr.readString();
        this.failures = StringIntDictHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, MetricsFailures v)
    {
        if(v == null)
        {
            _nullMarshalValue.ice_writeMembers(ostr);
        }
        else
        {
            v.ice_writeMembers(ostr);
        }
    }

    static public MetricsFailures ice_read(com.zeroc.Ice.InputStream istr)
    {
        MetricsFailures v = new MetricsFailures();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<MetricsFailures> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, MetricsFailures v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<MetricsFailures> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(MetricsFailures.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final MetricsFailures _nullMarshalValue = new MetricsFailures();

    /** @hidden */
    public static final long serialVersionUID = -1479383234001759400L;
}
