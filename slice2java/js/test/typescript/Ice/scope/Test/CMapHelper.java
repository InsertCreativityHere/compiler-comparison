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

package Test;
/**
 * Helper class for marshaling/unmarshaling CMap.
 **/

public final class CMapHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, java.util.Map<java.lang.String, C> v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.size());
            for(java.util.Map.Entry<java.lang.String, C> e : v.entrySet())
            {
                ostr.writeString(e.getKey());
                ostr.writeValue(e.getValue());
            }
        }
    }

    public static java.util.Map<java.lang.String, C> read(com.zeroc.Ice.InputStream istr)
    {
        java.util.Map<java.lang.String, C> v;
        v = new java.util.HashMap<java.lang.String, Test.C>();
        int sz0 = istr.readSize();
        for(int i0 = 0; i0 < sz0; i0++)
        {
            final String key;
            key = istr.readString();
            istr.readValue(value -> v.put(key, value), C.class);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<java.util.Map<java.lang.String, C>> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Map<java.lang.String, C> v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            CMapHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<java.util.Map<java.lang.String, C>> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            java.util.Map<java.lang.String, C> v;
            v = CMapHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
