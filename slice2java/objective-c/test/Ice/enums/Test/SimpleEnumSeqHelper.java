//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `EnumTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

/**
 * Helper class for marshaling/unmarshaling SimpleEnumSeq.
 **/
public final class SimpleEnumSeqHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, SimpleEnum[] v)
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
                SimpleEnum.ice_write(ostr, v[i0]);
            }
        }
    }

    public static SimpleEnum[] read(com.zeroc.Ice.InputStream istr)
    {
        final SimpleEnum[] v;
        final int len0 = istr.readAndCheckSeqSize(1);
        v = new SimpleEnum[len0];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = SimpleEnum.ice_read(istr);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<SimpleEnum[]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, SimpleEnum[] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            SimpleEnumSeqHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<SimpleEnum[]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            SimpleEnum[] v;
            v = SimpleEnumSeqHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
