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
 * Helper class for marshaling/unmarshaling LongLongDict.
 **/
public final class LongLongDictHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, java.util.Map<java.lang.Long, java.lang.Long> v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.size());
            for(java.util.Map.Entry<java.lang.Long, java.lang.Long> e : v.entrySet())
            {
                ostr.writeLong(e.getKey());
                ostr.writeLong(e.getValue());
            }
        }
    }

    public static java.util.Map<java.lang.Long, java.lang.Long> read(com.zeroc.Ice.InputStream istr)
    {
        java.util.Map<java.lang.Long, java.lang.Long> v;
        v = new java.util.HashMap<java.lang.Long, java.lang.Long>();
        int sz0 = istr.readSize();
        for(int i0 = 0; i0 < sz0; i0++)
        {
            long key;
            key = istr.readLong();
            long value;
            value = istr.readLong();
            v.put(key, value);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<java.util.Map<java.lang.Long, java.lang.Long>> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Map<java.lang.Long, java.lang.Long> v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            final int optSize = v == null ? 0 : v.size();
            ostr.writeSize(optSize > 254 ? optSize * 16 + 5 : optSize * 16 + 1);
            LongLongDictHelper.write(ostr, v);
        }
    }

    public static java.util.Optional<java.util.Map<java.lang.Long, java.lang.Long>> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            java.util.Map<java.lang.Long, java.lang.Long> v;
            v = LongLongDictHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
