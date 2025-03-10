// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Descriptor.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.IceGrid;

/**
 * Helper class for marshaling/unmarshaling ObjectDescriptorSeq.
 **/
public final class ObjectDescriptorSeqHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, java.util.List<ObjectDescriptor> v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.size());
            for(ObjectDescriptor elem : v)
            {
                ObjectDescriptor.ice_write(ostr, elem);
            }
        }
    }

    public static java.util.List<ObjectDescriptor> read(com.zeroc.Ice.InputStream istr)
    {
        final java.util.List<ObjectDescriptor> v;
        v = new java.util.LinkedList<ObjectDescriptor>();
        final int len0 = istr.readAndCheckSeqSize(4);
        for(int i0 = 0; i0 < len0; i0++)
        {
            ObjectDescriptor elem;
            elem = ObjectDescriptor.ice_read(istr);
            v.add(elem);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<java.util.List<ObjectDescriptor>> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.List<ObjectDescriptor> v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ObjectDescriptorSeqHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<java.util.List<ObjectDescriptor>> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            java.util.List<ObjectDescriptor> v;
            v = ObjectDescriptorSeqHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
