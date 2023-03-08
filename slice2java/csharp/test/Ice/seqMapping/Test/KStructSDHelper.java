//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
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

/**
 * Helper class for marshaling/unmarshaling KStructSD.
 **/
public final class KStructSDHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, SD[] v)
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
                SD.ice_write(ostr, v[i0]);
            }
        }
    }

    public static SD[] read(com.zeroc.Ice.InputStream istr)
    {
        final SD[] v;
        final int len0 = istr.readAndCheckSeqSize(4);
        v = new SD[len0];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = SD.ice_read(istr);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<SD[]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, SD[] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            final int optSize = v == null ? 0 : v.length;
            ostr.writeSize(optSize > 254 ? optSize * 4 + 5 : optSize * 4 + 1);
            KStructSDHelper.write(ostr, v);
        }
    }

    public static java.util.Optional<SD[]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            SD[] v;
            v = KStructSDHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
