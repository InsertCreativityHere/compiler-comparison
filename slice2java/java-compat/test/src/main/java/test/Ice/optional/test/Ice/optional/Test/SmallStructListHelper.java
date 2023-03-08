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

package test.Ice.optional.Test;

/**
 * Helper class for marshaling/unmarshaling SmallStructList.
 **/
public final class SmallStructListHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, java.util.List<SmallStruct> v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.size());
            for(SmallStruct elem : v)
            {
                SmallStruct.ice_write(ostr, elem);
            }
        }
    }

    public static java.util.List<SmallStruct> read(com.zeroc.Ice.InputStream istr)
    {
        final java.util.List<SmallStruct> v;
        v = new java.util.ArrayList<SmallStruct>();
        final int len0 = istr.readAndCheckSeqSize(1);
        for(int i0 = 0; i0 < len0; i0++)
        {
            SmallStruct elem;
            elem = SmallStruct.ice_read(istr);
            v.add(elem);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<java.util.List<SmallStruct>> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.List<SmallStruct> v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            SmallStructListHelper.write(ostr, v);
        }
    }

    public static java.util.Optional<java.util.List<SmallStruct>> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            java.util.List<SmallStruct> v;
            v = SmallStructListHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
