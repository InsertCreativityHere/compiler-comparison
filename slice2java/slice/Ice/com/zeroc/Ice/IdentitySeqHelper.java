// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Identity.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.Ice;

/**
 * Helper class for marshaling/unmarshaling IdentitySeq.
 **/
public final class IdentitySeqHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, Identity[] v)
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
                Identity.ice_write(ostr, v[i0]);
            }
        }
    }

    public static Identity[] read(com.zeroc.Ice.InputStream istr)
    {
        final Identity[] v;
        final int len0 = istr.readAndCheckSeqSize(2);
        v = new Identity[len0];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = Identity.ice_read(istr);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Identity[]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, Identity[] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            IdentitySeqHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<Identity[]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            Identity[] v;
            v = IdentitySeqHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
