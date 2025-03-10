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
 * Helper class for marshaling/unmarshaling ElementInfoSeq.
 **/
public final class ElementInfoSeqHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, ElementInfo[] v)
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
                ElementInfo.ice_write(ostr, v[i0]);
            }
        }
    }

    public static ElementInfo[] read(com.zeroc.Ice.InputStream istr)
    {
        final ElementInfo[] v;
        final int len0 = istr.readAndCheckSeqSize(10);
        v = new ElementInfo[len0];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = ElementInfo.ice_read(istr);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ElementInfo[]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, ElementInfo[] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ElementInfoSeqHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<ElementInfo[]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            ElementInfo[] v;
            v = ElementInfoSeqHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
