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
 * Helper class for marshaling/unmarshaling ShortIntD.
 **/

public final class ShortIntDHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, java.util.Map<java.lang.Short, java.lang.Integer> v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.size());
            for(java.util.Map.Entry<java.lang.Short, java.lang.Integer> e : v.entrySet())
            {
                ostr.writeShort(e.getKey());
                ostr.writeInt(e.getValue());
            }
        }
    }

    public static java.util.Map<java.lang.Short, java.lang.Integer> read(com.zeroc.Ice.InputStream istr)
    {
        java.util.Map<java.lang.Short, java.lang.Integer> v;
        v = new java.util.HashMap<java.lang.Short, java.lang.Integer>();
        int sz0 = istr.readSize();
        for(int i0 = 0; i0 < sz0; i0++)
        {
            short key;
            key = istr.readShort();
            int value;
            value = istr.readInt();
            v.put(key, value);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<java.util.Map<java.lang.Short, java.lang.Integer>> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Map<java.lang.Short, java.lang.Integer> v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            final int optSize = v == null ? 0 : v.size();
            ostr.writeSize(optSize > 254 ? optSize * 6 + 5 : optSize * 6 + 1);
            ShortIntDHelper.write(ostr, v);
        }
    }

    public static java.util.Optional<java.util.Map<java.lang.Short, java.lang.Integer>> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            java.util.Map<java.lang.Short, java.lang.Integer> v;
            v = ShortIntDHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
