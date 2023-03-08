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

package test.Slice.structure.Test;

/**
 * Helper class for marshaling/unmarshaling IntList.
 **/
public final class IntListHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, java.util.List<java.lang.Integer> v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.size());
            for(int elem : v)
            {
                ostr.writeInt(elem);
            }
        }
    }

    public static java.util.List<java.lang.Integer> read(com.zeroc.Ice.InputStream istr)
    {
        final java.util.List<java.lang.Integer> v;
        v = new java.util.ArrayList<Integer>();
        final int len0 = istr.readAndCheckSeqSize(4);
        for(int i0 = 0; i0 < len0; i0++)
        {
            int elem;
            elem = istr.readInt();
            v.add(elem);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<java.util.List<java.lang.Integer>> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.List<java.lang.Integer> v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            final int optSize = v == null ? 0 : v.size();
            ostr.writeSize(optSize > 254 ? optSize * 4 + 5 : optSize * 4 + 1);
            IntListHelper.write(ostr, v);
        }
    }

    public static java.util.Optional<java.util.List<java.lang.Integer>> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            java.util.List<java.lang.Integer> v;
            v = IntListHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
