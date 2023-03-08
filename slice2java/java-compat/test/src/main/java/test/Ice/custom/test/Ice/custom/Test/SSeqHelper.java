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

package test.Ice.custom.Test;

/**
 * Helper class for marshaling/unmarshaling SSeq.
 **/
public final class SSeqHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, java.util.List<S> v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.size());
            for(S elem : v)
            {
                S.ice_write(ostr, elem);
            }
        }
    }

    public static java.util.List<S> read(com.zeroc.Ice.InputStream istr)
    {
        final java.util.List<S> v;
        v = new java.util.ArrayList<S>();
        final int len0 = istr.readAndCheckSeqSize(1);
        for(int i0 = 0; i0 < len0; i0++)
        {
            S elem;
            elem = S.ice_read(istr);
            v.add(elem);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<java.util.List<S>> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.List<S> v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            SSeqHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<java.util.List<S>> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            java.util.List<S> v;
            v = SSeqHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
