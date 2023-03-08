//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `LocalTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package LocalTest;

/**
 * Helper class for marshaling/unmarshaling S1SeqSeq.
 **/
public final class S1SeqSeqHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, S1[][] v)
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
                S1SeqHelper.write(ostr, v[i0]);
            }
        }
    }

    public static S1[][] read(com.zeroc.Ice.InputStream istr)
    {
        final S1[][] v;
        final int len0 = istr.readAndCheckSeqSize(1);
        v = new S1[len0][];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = S1SeqHelper.read(istr);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<S1[][]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, S1[][] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            S1SeqSeqHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<S1[][]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            S1[][] v;
            v = S1SeqSeqHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
