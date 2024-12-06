//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class Stock implements java.lang.Cloneable,
                              java.io.Serializable
{
    public float price;

    public float lastBid;

    public float laskAsk;

    public Stock()
    {
    }

    public Stock(float price, float lastBid, float laskAsk)
    {
        this.price = price;
        this.lastBid = lastBid;
        this.laskAsk = laskAsk;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        Stock r = null;
        if(rhs instanceof Stock)
        {
            r = (Stock)rhs;
        }

        if(r != null)
        {
            if(this.price != r.price)
            {
                return false;
            }
            if(this.lastBid != r.lastBid)
            {
                return false;
            }
            if(this.laskAsk != r.laskAsk)
            {
                return false;
            }

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::Test::Stock");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, price);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, lastBid);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, laskAsk);
        return h_;
    }

    public Stock clone()
    {
        Stock c = null;
        try
        {
            c = (Stock)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeFloat(this.price);
        ostr.writeFloat(this.lastBid);
        ostr.writeFloat(this.laskAsk);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.price = istr.readFloat();
        this.lastBid = istr.readFloat();
        this.laskAsk = istr.readFloat();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, Stock v)
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

    static public Stock ice_read(com.zeroc.Ice.InputStream istr)
    {
        Stock v = new Stock();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Stock> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Stock v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(12);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<Stock> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(Stock.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final Stock _nullMarshalValue = new Stock();

    /** @hidden */
    private static final long serialVersionUID = -2274109245312846604L;
}
