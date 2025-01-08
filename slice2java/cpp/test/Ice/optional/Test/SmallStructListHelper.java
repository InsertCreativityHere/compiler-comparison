//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

/**
 * Helper class for marshaling/unmarshaling SmallStructList.
 **/
public final class SmallStructListHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, SmallStruct[] v)
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
                SmallStruct.ice_write(ostr, v[i0]);
            }
        }
    }

    public static SmallStruct[] read(com.zeroc.Ice.InputStream istr)
    {
        final SmallStruct[] v;
        final int len0 = istr.readAndCheckSeqSize(1);
        v = new SmallStruct[len0];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = SmallStruct.ice_read(istr);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<SmallStruct[]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, SmallStruct[] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            SmallStructListHelper.write(ostr, v);
        }
    }

    public static java.util.Optional<SmallStruct[]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            SmallStruct[] v;
            v = SmallStructListHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
