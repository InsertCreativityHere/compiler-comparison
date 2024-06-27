//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `IceStormInternal.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceStorm;

/**
 * The event data.
 **/
public class EventData implements java.lang.Cloneable,
                                  java.io.Serializable
{
    /**
     * The operation name.
     **/
    public String op;

    /**
     * The operation mode.
     **/
    public com.zeroc.Ice.OperationMode mode;

    /**
     * The encoded data for the operation's input parameters.
     **/
    public byte[] data;

    /**
     * The Ice::Current::Context data from the originating request.
     **/
    public java.util.Map<java.lang.String, java.lang.String> context;

    public EventData()
    {
        this.op = "";
        this.mode = com.zeroc.Ice.OperationMode.Normal;
    }

    public EventData(String op, com.zeroc.Ice.OperationMode mode, byte[] data, java.util.Map<java.lang.String, java.lang.String> context)
    {
        this.op = op;
        this.mode = mode;
        this.data = data;
        this.context = context;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        EventData r = null;
        if(rhs instanceof EventData)
        {
            r = (EventData)rhs;
        }

        if(r != null)
        {
            if(this.op != r.op)
            {
                if(this.op == null || r.op == null || !this.op.equals(r.op))
                {
                    return false;
                }
            }
            if(this.mode != r.mode)
            {
                if(this.mode == null || r.mode == null || !this.mode.equals(r.mode))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.data, r.data))
            {
                return false;
            }
            if(this.context != r.context)
            {
                if(this.context == null || r.context == null || !this.context.equals(r.context))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceStorm::EventData");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, op);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, mode);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, data);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, context);
        return h_;
    }

    public EventData clone()
    {
        EventData c = null;
        try
        {
            c = (EventData)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.op);
        com.zeroc.Ice.OperationMode.ice_write(ostr, this.mode);
        ostr.writeByteSeq(this.data);
        com.zeroc.Ice.ContextHelper.write(ostr, this.context);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.op = istr.readString();
        this.mode = com.zeroc.Ice.OperationMode.ice_read(istr);
        this.data = istr.readByteSeq();
        this.context = com.zeroc.Ice.ContextHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, EventData v)
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

    static public EventData ice_read(com.zeroc.Ice.InputStream istr)
    {
        EventData v = new EventData();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<EventData> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, EventData v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<EventData> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(EventData.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final EventData _nullMarshalValue = new EventData();

    /** @hidden */
    private static final long serialVersionUID = 2731128303706994927L;
}
