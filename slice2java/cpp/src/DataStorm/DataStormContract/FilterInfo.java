//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Contract.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package DataStormContract;

public class FilterInfo implements java.lang.Cloneable,
                                   java.io.Serializable
{
    public String name;

    public byte[] criteria;

    public FilterInfo()
    {
        this.name = "";
    }

    public FilterInfo(String name, byte[] criteria)
    {
        this.name = name;
        this.criteria = criteria;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        FilterInfo r = null;
        if(rhs instanceof FilterInfo)
        {
            r = (FilterInfo)rhs;
        }

        if(r != null)
        {
            if(this.name != r.name)
            {
                if(this.name == null || r.name == null || !this.name.equals(r.name))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.criteria, r.criteria))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::DataStormContract::FilterInfo");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, name);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, criteria);
        return h_;
    }

    public FilterInfo clone()
    {
        FilterInfo c = null;
        try
        {
            c = (FilterInfo)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.name);
        ostr.writeByteSeq(this.criteria);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.name = istr.readString();
        this.criteria = istr.readByteSeq();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, FilterInfo v)
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

    static public FilterInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        FilterInfo v = new FilterInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<FilterInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, FilterInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<FilterInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(FilterInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final FilterInfo _nullMarshalValue = new FilterInfo();

    /** @hidden */
    private static final long serialVersionUID = 4945568276929343431L;
}
