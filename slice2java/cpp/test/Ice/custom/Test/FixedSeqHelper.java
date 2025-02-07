// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package Test;

/**
 * Helper class for marshaling/unmarshaling FixedSeq.
 **/
public final class FixedSeqHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, Fixed[] v)
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
                Fixed.ice_write(ostr, v[i0]);
            }
        }
    }

    public static Fixed[] read(com.zeroc.Ice.InputStream istr)
    {
        final Fixed[] v;
        final int len0 = istr.readAndCheckSeqSize(2);
        v = new Fixed[len0];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = Fixed.ice_read(istr);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Fixed[]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, Fixed[] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            final int optSize = v == null ? 0 : v.length;
            ostr.writeSize(optSize > 254 ? optSize * 2 + 5 : optSize * 2 + 1);
            FixedSeqHelper.write(ostr, v);
        }
    }

    public static java.util.Optional<Fixed[]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            Fixed[] v;
            v = FixedSeqHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
