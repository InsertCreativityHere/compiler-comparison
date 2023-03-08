//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.optional.AMD.Test;
/**
 * Helper class for marshaling/unmarshaling IntIntDict.
 **/

public final class IntIntDictHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, java.util.Map<java.lang.Integer, java.lang.Integer> v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.size());
            for(java.util.Map.Entry<java.lang.Integer, java.lang.Integer> e : v.entrySet())
            {
                ostr.writeInt(e.getKey());
                ostr.writeInt(e.getValue());
            }
        }
    }

    public static java.util.Map<java.lang.Integer, java.lang.Integer> read(com.zeroc.Ice.InputStream istr)
    {
        java.util.Map<java.lang.Integer, java.lang.Integer> v;
        v = new java.util.HashMap<java.lang.Integer, java.lang.Integer>();
        int sz0 = istr.readSize();
        for(int i0 = 0; i0 < sz0; i0++)
        {
            int key;
            key = istr.readInt();
            int value;
            value = istr.readInt();
            v.put(key, value);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<java.util.Map<java.lang.Integer, java.lang.Integer>> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Map<java.lang.Integer, java.lang.Integer> v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            final int optSize = v == null ? 0 : v.size();
            ostr.writeSize(optSize > 254 ? optSize * 8 + 5 : optSize * 8 + 1);
            IntIntDictHelper.write(ostr, v);
        }
    }

    public static java.util.Optional<java.util.Map<java.lang.Integer, java.lang.Integer>> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            java.util.Map<java.lang.Integer, java.lang.Integer> v;
            v = IntIntDictHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
