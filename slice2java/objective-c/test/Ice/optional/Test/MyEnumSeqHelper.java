//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `OptionalTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

/**
 * Helper class for marshaling/unmarshaling MyEnumSeq.
 **/
public final class MyEnumSeqHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, MyEnum[] v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.length);
            for(int i0 = 0; i0 < v.length; i0++)
            {
                MyEnum.ice_write(ostr, v[i0]);
            }
        }
    }

    public static MyEnum[] read(com.zeroc.Ice.InputStream istr)
    {
        final MyEnum[] v;
        final int len0 = istr.readAndCheckSeqSize(1);
        v = new MyEnum[len0];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = MyEnum.ice_read(istr);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<MyEnum[]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, MyEnum[] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            MyEnumSeqHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<MyEnum[]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            MyEnum[] v;
            v = MyEnumSeqHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
