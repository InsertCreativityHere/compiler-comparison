// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package Test;

/**
 * Helper class for marshaling/unmarshaling DPrxListList.
 **/
public final class DPrxListListHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, DPrx[][] v)
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
                DPrxListHelper.write(ostr, v[i0]);
            }
        }
    }

    public static DPrx[][] read(com.zeroc.Ice.InputStream istr)
    {
        final DPrx[][] v;
        final int len0 = istr.readAndCheckSeqSize(1);
        v = new DPrx[len0][];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = DPrxListHelper.read(istr);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<DPrx[][]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, DPrx[][] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            DPrxListListHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<DPrx[][]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            DPrx[][] v;
            v = DPrxListListHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
