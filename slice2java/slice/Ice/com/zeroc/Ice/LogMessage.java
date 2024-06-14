//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `RemoteLogger.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.Ice;

/**
 * A complete log message.
 **/
public class LogMessage implements java.lang.Cloneable,
                                   java.io.Serializable
{
    /**
     * The type of message sent to the {@link RemoteLogger}.
     **/
    public LogMessageType type;

    /**
     * The date and time when the {@link RemoteLogger} received this message, expressed as the number of microseconds
     * since the Unix Epoch (00:00:00 UTC on 1 January 1970)
     **/
    public long timestamp;

    /**
     * For a message of type trace, the trace category of this log message; otherwise, the empty string.
     **/
    public String traceCategory;

    /**
     * The log message itself.
     **/
    public String message;

    public LogMessage()
    {
        this.type = LogMessageType.PrintMessage;
        this.traceCategory = "";
        this.message = "";
    }

    public LogMessage(LogMessageType type, long timestamp, String traceCategory, String message)
    {
        this.type = type;
        this.timestamp = timestamp;
        this.traceCategory = traceCategory;
        this.message = message;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        LogMessage r = null;
        if(rhs instanceof LogMessage)
        {
            r = (LogMessage)rhs;
        }

        if(r != null)
        {
            if(this.type != r.type)
            {
                if(this.type == null || r.type == null || !this.type.equals(r.type))
                {
                    return false;
                }
            }
            if(this.timestamp != r.timestamp)
            {
                return false;
            }
            if(this.traceCategory != r.traceCategory)
            {
                if(this.traceCategory == null || r.traceCategory == null || !this.traceCategory.equals(r.traceCategory))
                {
                    return false;
                }
            }
            if(this.message != r.message)
            {
                if(this.message == null || r.message == null || !this.message.equals(r.message))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Ice::LogMessage");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, type);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, timestamp);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, traceCategory);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, message);
        return h_;
    }

    public LogMessage clone()
    {
        LogMessage c = null;
        try
        {
            c = (LogMessage)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        LogMessageType.ice_write(ostr, this.type);
        ostr.writeLong(this.timestamp);
        ostr.writeString(this.traceCategory);
        ostr.writeString(this.message);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.type = LogMessageType.ice_read(istr);
        this.timestamp = istr.readLong();
        this.traceCategory = istr.readString();
        this.message = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, LogMessage v)
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

    static public LogMessage ice_read(com.zeroc.Ice.InputStream istr)
    {
        LogMessage v = new LogMessage();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<LogMessage> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, LogMessage v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<LogMessage> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(LogMessage.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final LogMessage _nullMarshalValue = new LogMessage();

    /** @hidden */
    public static final long serialVersionUID = -89695426229314438L;
}
