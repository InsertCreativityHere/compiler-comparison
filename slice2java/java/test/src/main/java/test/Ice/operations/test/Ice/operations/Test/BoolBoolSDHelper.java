// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package test.Ice.operations.Test;

/**
 * Helper class for marshaling/unmarshaling BoolBoolSD.
 **/
public final class BoolBoolSDHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, java.util.Map<java.lang.Boolean, boolean[]> v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.size());
            for(java.util.Map.Entry<java.lang.Boolean, boolean[]> e : v.entrySet())
            {
                ostr.writeBool(e.getKey());
                ostr.writeBoolSeq(e.getValue());
            }
        }
    }

    public static java.util.Map<java.lang.Boolean, boolean[]> read(com.zeroc.Ice.InputStream istr)
    {
        java.util.Map<java.lang.Boolean, boolean[]> v;
        v = new java.util.HashMap<java.lang.Boolean, boolean[]>();
        int sz0 = istr.readSize();
        for(int i0 = 0; i0 < sz0; i0++)
        {
            boolean key;
            key = istr.readBool();
            boolean[] value;
            value = istr.readBoolSeq();
            v.put(key, value);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<java.util.Map<java.lang.Boolean, boolean[]>> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Map<java.lang.Boolean, boolean[]> v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            BoolBoolSDHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<java.util.Map<java.lang.Boolean, boolean[]>> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            java.util.Map<java.lang.Boolean, boolean[]> v;
            v = BoolBoolSDHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
