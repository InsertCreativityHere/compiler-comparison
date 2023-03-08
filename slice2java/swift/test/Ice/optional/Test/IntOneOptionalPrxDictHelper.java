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
 * Helper class for marshaling/unmarshaling IntOneOptionalPrxDict.
 **/

public final class IntOneOptionalPrxDictHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, java.util.Map<java.lang.Integer, com.zeroc.Ice.ObjectPrx> v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.size());
            for(java.util.Map.Entry<java.lang.Integer, com.zeroc.Ice.ObjectPrx> e : v.entrySet())
            {
                ostr.writeInt(e.getKey());
                ostr.writeProxy(e.getValue());
            }
        }
    }

    public static java.util.Map<java.lang.Integer, com.zeroc.Ice.ObjectPrx> read(com.zeroc.Ice.InputStream istr)
    {
        java.util.Map<java.lang.Integer, com.zeroc.Ice.ObjectPrx> v;
        v = new java.util.HashMap<java.lang.Integer, com.zeroc.Ice.ObjectPrx>();
        int sz0 = istr.readSize();
        for(int i0 = 0; i0 < sz0; i0++)
        {
            int key;
            key = istr.readInt();
            com.zeroc.Ice.ObjectPrx value;
            value = com.zeroc.Ice.ObjectPrx.uncheckedCast(istr.readProxy());
            v.put(key, value);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<java.util.Map<java.lang.Integer, com.zeroc.Ice.ObjectPrx>> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Map<java.lang.Integer, com.zeroc.Ice.ObjectPrx> v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            IntOneOptionalPrxDictHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<java.util.Map<java.lang.Integer, com.zeroc.Ice.ObjectPrx>> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            java.util.Map<java.lang.Integer, com.zeroc.Ice.ObjectPrx> v;
            v = IntOneOptionalPrxDictHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
