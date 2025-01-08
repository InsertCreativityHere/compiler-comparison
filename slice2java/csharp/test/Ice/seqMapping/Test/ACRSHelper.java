//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

/**
 * Helper class for marshaling/unmarshaling ACRS.
 **/
public final class ACRSHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, CR[] v)
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
                ostr.writeValue(v[i0]);
            }
        }
    }

    public static CR[] read(com.zeroc.Ice.InputStream istr)
    {
        final CR[] v;
        final int len0 = istr.readAndCheckSeqSize(1);
        v = new CR[len0];
        for(int i0 = 0; i0 < len0; i0++)
        {
            final int fi0 = i0;
            istr.readValue(value -> v[fi0] = value, CR.class);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<CR[]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, CR[] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ACRSHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<CR[]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            CR[] v;
            v = ACRSHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
