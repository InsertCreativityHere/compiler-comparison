//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `LocalTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package LocalTest;
/**
 * Helper class for marshaling/unmarshaling S1Dict.
 **/

public final class S1DictHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, java.util.Map<java.lang.Integer, S1> v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.size());
            for(java.util.Map.Entry<java.lang.Integer, S1> e : v.entrySet())
            {
                ostr.writeInt(e.getKey());
                S1.ice_write(ostr, e.getValue());
            }
        }
    }

    public static java.util.Map<java.lang.Integer, S1> read(com.zeroc.Ice.InputStream istr)
    {
        java.util.Map<java.lang.Integer, S1> v;
        v = new java.util.HashMap<java.lang.Integer, LocalTest.S1>();
        int sz0 = istr.readSize();
        for(int i0 = 0; i0 < sz0; i0++)
        {
            int key;
            key = istr.readInt();
            S1 value;
            value = S1.ice_read(istr);
            v.put(key, value);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<java.util.Map<java.lang.Integer, S1>> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Map<java.lang.Integer, S1> v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            S1DictHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<java.util.Map<java.lang.Integer, S1>> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            java.util.Map<java.lang.Integer, S1> v;
            v = S1DictHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
