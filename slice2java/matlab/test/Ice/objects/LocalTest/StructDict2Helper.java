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
 * Helper class for marshaling/unmarshaling StructDict2.
 **/

public final class StructDict2Helper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, java.util.Map<StructKey, S1> v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.size());
            for(java.util.Map.Entry<StructKey, S1> e : v.entrySet())
            {
                StructKey.ice_write(ostr, e.getKey());
                S1.ice_write(ostr, e.getValue());
            }
        }
    }

    public static java.util.Map<StructKey, S1> read(com.zeroc.Ice.InputStream istr)
    {
        java.util.Map<StructKey, S1> v;
        v = new java.util.HashMap<LocalTest.StructKey, LocalTest.S1>();
        int sz0 = istr.readSize();
        for(int i0 = 0; i0 < sz0; i0++)
        {
            StructKey key;
            key = StructKey.ice_read(istr);
            S1 value;
            value = S1.ice_read(istr);
            v.put(key, value);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<java.util.Map<StructKey, S1>> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Map<StructKey, S1> v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            StructDict2Helper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<java.util.Map<StructKey, S1>> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            java.util.Map<StructKey, S1> v;
            v = StructDict2Helper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
