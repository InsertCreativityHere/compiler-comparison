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
 * Helper class for marshaling/unmarshaling NDV.
 **/
public final class NDVHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, java.util.Map<java.lang.String, java.util.Map<java.lang.Integer, java.lang.Integer>> v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.size());
            for(java.util.Map.Entry<java.lang.String, java.util.Map<java.lang.Integer, java.lang.Integer>> e : v.entrySet())
            {
                ostr.writeString(e.getKey());
                NVHelper.write(ostr, e.getValue());
            }
        }
    }

    public static java.util.Map<java.lang.String, java.util.Map<java.lang.Integer, java.lang.Integer>> read(com.zeroc.Ice.InputStream istr)
    {
        java.util.Map<java.lang.String, java.util.Map<java.lang.Integer, java.lang.Integer>> v;
        v = new java.util.HashMap<java.lang.String, java.util.Map<java.lang.Integer, java.lang.Integer>>();
        int sz0 = istr.readSize();
        for(int i0 = 0; i0 < sz0; i0++)
        {
            String key;
            key = istr.readString();
            java.util.Map<java.lang.Integer, java.lang.Integer> value;
            value = NVHelper.read(istr);
            v.put(key, value);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<java.util.Map<java.lang.String, java.util.Map<java.lang.Integer, java.lang.Integer>>> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Map<java.lang.String, java.util.Map<java.lang.Integer, java.lang.Integer>> v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            NDVHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<java.util.Map<java.lang.String, java.util.Map<java.lang.Integer, java.lang.Integer>>> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            java.util.Map<java.lang.String, java.util.Map<java.lang.Integer, java.lang.Integer>> v;
            v = NDVHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
