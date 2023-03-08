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
 * Helper class for marshaling/unmarshaling ValStructS.
 **/
public final class ValStructSHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, ValStruct[] v)
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
                ValStruct.ice_write(ostr, v[i0]);
            }
        }
    }

    public static ValStruct[] read(com.zeroc.Ice.InputStream istr)
    {
        final ValStruct[] v;
        final int len0 = istr.readAndCheckSeqSize(17);
        v = new ValStruct[len0];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = ValStruct.ice_read(istr);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ValStruct[]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, ValStruct[] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ValStructSHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<ValStruct[]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            ValStruct[] v;
            v = ValStructSHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
