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

package test.Ice.impl.AMD.Test;
/**
 * Helper class for marshaling/unmarshaling MyEnumStringD.
 **/

public final class MyEnumStringDHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, java.util.Map<MyEnum, java.lang.String> v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.size());
            for(java.util.Map.Entry<MyEnum, java.lang.String> e : v.entrySet())
            {
                MyEnum.ice_write(ostr, e.getKey());
                ostr.writeString(e.getValue());
            }
        }
    }

    public static java.util.Map<MyEnum, java.lang.String> read(com.zeroc.Ice.InputStream istr)
    {
        java.util.Map<MyEnum, java.lang.String> v;
        v = new java.util.HashMap<test.Ice.impl.AMD.Test.MyEnum, java.lang.String>();
        int sz0 = istr.readSize();
        for(int i0 = 0; i0 < sz0; i0++)
        {
            MyEnum key;
            key = MyEnum.ice_read(istr);
            String value;
            value = istr.readString();
            v.put(key, value);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<java.util.Map<MyEnum, java.lang.String>> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Map<MyEnum, java.lang.String> v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            MyEnumStringDHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<java.util.Map<MyEnum, java.lang.String>> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            java.util.Map<MyEnum, java.lang.String> v;
            v = MyEnumStringDHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
