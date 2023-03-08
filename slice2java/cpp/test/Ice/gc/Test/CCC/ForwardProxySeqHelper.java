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

package Test.CCC;

/**
 * Helper class for marshaling/unmarshaling ForwardProxySeq.
 **/
public final class ForwardProxySeqHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, com.zeroc.Ice.ObjectPrx[] v)
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
                ostr.writeProxy(v[i0]);
            }
        }
    }

    public static com.zeroc.Ice.ObjectPrx[] read(com.zeroc.Ice.InputStream istr)
    {
        final com.zeroc.Ice.ObjectPrx[] v;
        final int len0 = istr.readAndCheckSeqSize(2);
        v = new com.zeroc.Ice.ObjectPrx[len0];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = com.zeroc.Ice.ObjectPrx.uncheckedCast(istr.readProxy());
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<com.zeroc.Ice.ObjectPrx[]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, com.zeroc.Ice.ObjectPrx[] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ForwardProxySeqHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<com.zeroc.Ice.ObjectPrx[]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            com.zeroc.Ice.ObjectPrx[] v;
            v = ForwardProxySeqHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
