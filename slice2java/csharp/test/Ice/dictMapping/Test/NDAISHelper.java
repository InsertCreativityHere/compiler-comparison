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
 * Helper class for marshaling/unmarshaling NDAIS.
 **/
public final class NDAISHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, java.util.Map<java.lang.String, int[]> v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.size());
            for(java.util.Map.Entry<java.lang.String, int[]> e : v.entrySet())
            {
                ostr.writeString(e.getKey());
                ostr.writeIntSeq(e.getValue());
            }
        }
    }

    public static java.util.Map<java.lang.String, int[]> read(com.zeroc.Ice.InputStream istr)
    {
        java.util.Map<java.lang.String, int[]> v;
        v = new java.util.HashMap<java.lang.String, int[]>();
        int sz0 = istr.readSize();
        for(int i0 = 0; i0 < sz0; i0++)
        {
            String key;
            key = istr.readString();
            int[] value;
            value = istr.readIntSeq();
            v.put(key, value);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<java.util.Map<java.lang.String, int[]>> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Map<java.lang.String, int[]> v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            NDAISHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<java.util.Map<java.lang.String, int[]>> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            java.util.Map<java.lang.String, int[]> v;
            v = NDAISHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
