//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `StreamTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

/**
 * Helper class for marshaling/unmarshaling IntSS.
 **/
public final class IntSSHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, int[][] v)
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
                ostr.writeIntSeq(v[i0]);
            }
        }
    }

    public static int[][] read(com.zeroc.Ice.InputStream istr)
    {
        final int[][] v;
        final int len0 = istr.readAndCheckSeqSize(1);
        v = new int[len0][];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = istr.readIntSeq();
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<int[][]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, int[][] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            IntSSHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<int[][]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            int[][] v;
            v = IntSSHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
