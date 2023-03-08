//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `OperationsTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

/**
 * Helper class for marshaling/unmarshaling ShortSS.
 **/
public final class ShortSSHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, short[][] v)
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
                ostr.writeShortSeq(v[i0]);
            }
        }
    }

    public static short[][] read(com.zeroc.Ice.InputStream istr)
    {
        final short[][] v;
        final int len0 = istr.readAndCheckSeqSize(1);
        v = new short[len0][];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = istr.readShortSeq();
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<short[][]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, short[][] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ShortSSHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<short[][]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            short[][] v;
            v = ShortSSHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
