//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

/**
 * Helper class for marshaling/unmarshaling KIPrxS.
 **/
public final class KIPrxSHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, IPrx[] v)
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

    public static IPrx[] read(com.zeroc.Ice.InputStream istr)
    {
        final IPrx[] v;
        final int len0 = istr.readAndCheckSeqSize(2);
        v = new IPrx[len0];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = IPrx.uncheckedCast(istr.readProxy());
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<IPrx[]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, IPrx[] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            KIPrxSHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<IPrx[]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            IPrx[] v;
            v = KIPrxSHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
