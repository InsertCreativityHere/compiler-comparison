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

package test.Ice.stream.Test;

/**
 * Helper class for marshaling/unmarshaling ByteSS.
 **/
public final class ByteSSHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, byte[][] v)
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
                ostr.writeByteSeq(v[i0]);
            }
        }
    }

    public static byte[][] read(com.zeroc.Ice.InputStream istr)
    {
        final byte[][] v;
        final int len0 = istr.readAndCheckSeqSize(1);
        v = new byte[len0][];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = istr.readByteSeq();
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<byte[][]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, byte[][] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ByteSSHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<byte[][]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            byte[][] v;
            v = ByteSSHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
