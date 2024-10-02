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

public class BufferStruct implements java.lang.Cloneable,
                                     java.io.Serializable
{
    public byte[] byteBuf;

    public boolean[] boolBuf;

    public short[] shortBuf;

    public int[] intBuf;

    public long[] longBuf;

    public float[] floatBuf;

    public double[] doubleBuf;

    public BufferStruct()
    {
    }

    public BufferStruct(byte[] byteBuf, boolean[] boolBuf, short[] shortBuf, int[] intBuf, long[] longBuf, float[] floatBuf, double[] doubleBuf)
    {
        this.byteBuf = byteBuf;
        this.boolBuf = boolBuf;
        this.shortBuf = shortBuf;
        this.intBuf = intBuf;
        this.longBuf = longBuf;
        this.floatBuf = floatBuf;
        this.doubleBuf = doubleBuf;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        BufferStruct r = null;
        if(rhs instanceof BufferStruct)
        {
            r = (BufferStruct)rhs;
        }

        if(r != null)
        {
            if(!java.util.Arrays.equals(this.byteBuf, r.byteBuf))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.boolBuf, r.boolBuf))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.shortBuf, r.shortBuf))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.intBuf, r.intBuf))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.longBuf, r.longBuf))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.floatBuf, r.floatBuf))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.doubleBuf, r.doubleBuf))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::Test::BufferStruct");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, byteBuf);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, boolBuf);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, shortBuf);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, intBuf);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, longBuf);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, floatBuf);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, doubleBuf);
        return h_;
    }

    public BufferStruct clone()
    {
        BufferStruct c = null;
        try
        {
            c = (BufferStruct)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeByteSeq(this.byteBuf);
        ostr.writeBoolSeq(this.boolBuf);
        ostr.writeShortSeq(this.shortBuf);
        ostr.writeIntSeq(this.intBuf);
        ostr.writeLongSeq(this.longBuf);
        ostr.writeFloatSeq(this.floatBuf);
        ostr.writeDoubleSeq(this.doubleBuf);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.byteBuf = istr.readByteSeq();
        this.boolBuf = istr.readBoolSeq();
        this.shortBuf = istr.readShortSeq();
        this.intBuf = istr.readIntSeq();
        this.longBuf = istr.readLongSeq();
        this.floatBuf = istr.readFloatSeq();
        this.doubleBuf = istr.readDoubleSeq();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, BufferStruct v)
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

    static public BufferStruct ice_read(com.zeroc.Ice.InputStream istr)
    {
        BufferStruct v = new BufferStruct();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<BufferStruct> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, BufferStruct v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<BufferStruct> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(BufferStruct.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final BufferStruct _nullMarshalValue = new BufferStruct();

    /** @hidden */
    private static final long serialVersionUID = -1666230192419784534L;
}
