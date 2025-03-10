// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Contract.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package DataStormContract;

/**
 * Helper class for marshaling/unmarshaling ElementSpecAckSeq.
 **/
public final class ElementSpecAckSeqHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, ElementSpecAck[] v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.length);
            for(int i0 = 0; i0 < v.length; i0++)
            {
                ElementSpecAck.ice_write(ostr, v[i0]);
            }
        }
    }

    public static ElementSpecAck[] read(com.zeroc.Ice.InputStream istr)
    {
        final ElementSpecAck[] v;
        final int len0 = istr.readAndCheckSeqSize(20);
        v = new ElementSpecAck[len0];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = ElementSpecAck.ice_read(istr);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ElementSpecAck[]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, ElementSpecAck[] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ElementSpecAckSeqHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<ElementSpecAck[]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            ElementSpecAck[] v;
            v = ElementSpecAckSeqHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
