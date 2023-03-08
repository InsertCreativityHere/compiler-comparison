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

package test.Ice.optional.Test;

/**
 * Helper class for marshaling/unmarshaling RecursiveSeq.
 **/
public final class RecursiveSeqHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, Recursive[] v)
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

    public static Recursive[] read(com.zeroc.Ice.InputStream istr)
    {
        final Recursive[] v;
        final int len0 = istr.readAndCheckSeqSize(1);
        v = new Recursive[len0];
        for(int i0 = 0; i0 < len0; i0++)
        {
            final int fi0 = i0;
            istr.readValue(value -> v[fi0] = value, Recursive.class);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Recursive[]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, Recursive[] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            RecursiveSeqHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<Recursive[]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            Recursive[] v;
            v = RecursiveSeqHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
