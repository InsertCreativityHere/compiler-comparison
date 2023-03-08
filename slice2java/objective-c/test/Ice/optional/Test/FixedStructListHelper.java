//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `OptionalTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

/**
 * Helper class for marshaling/unmarshaling FixedStructList.
 **/
public final class FixedStructListHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, FixedStruct[] v)
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
                FixedStruct.ice_write(ostr, v[i0]);
            }
        }
    }

    public static FixedStruct[] read(com.zeroc.Ice.InputStream istr)
    {
        final FixedStruct[] v;
        final int len0 = istr.readAndCheckSeqSize(4);
        v = new FixedStruct[len0];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = FixedStruct.ice_read(istr);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<FixedStruct[]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, FixedStruct[] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            final int optSize = v == null ? 0 : v.length;
            ostr.writeSize(optSize > 254 ? optSize * 4 + 5 : optSize * 4 + 1);
            FixedStructListHelper.write(ostr, v);
        }
    }

    public static java.util.Optional<FixedStruct[]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            FixedStruct[] v;
            v = FixedStructListHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
