//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `LLURecord.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceStormElection;

/**
 * A struct used for marking the last log update.
 **/
public class LogUpdate implements java.lang.Cloneable,
                                  java.io.Serializable
{
    /**
     * The generation.
     **/
    public long generation;

    /**
     * The iteration within this generation.
     **/
    public long iteration;

    public LogUpdate()
    {
    }

    public LogUpdate(long generation, long iteration)
    {
        this.generation = generation;
        this.iteration = iteration;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        LogUpdate r = null;
        if(rhs instanceof LogUpdate)
        {
            r = (LogUpdate)rhs;
        }

        if(r != null)
        {
            if(this.generation != r.generation)
            {
                return false;
            }
            if(this.iteration != r.iteration)
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::IceStormElection::LogUpdate");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, generation);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, iteration);
        return h_;
    }

    public LogUpdate clone()
    {
        LogUpdate c = null;
        try
        {
            c = (LogUpdate)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeLong(this.generation);
        ostr.writeLong(this.iteration);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.generation = istr.readLong();
        this.iteration = istr.readLong();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, LogUpdate v)
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

    static public LogUpdate ice_read(com.zeroc.Ice.InputStream istr)
    {
        LogUpdate v = new LogUpdate();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<LogUpdate> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, LogUpdate v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(16);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<LogUpdate> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(LogUpdate.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final LogUpdate _nullMarshalValue = new LogUpdate();

    /** @hidden */
    private static final long serialVersionUID = 2495979592909632036L;
}
