//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Descriptor.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceGrid;

/**
 * Helper class for marshaling/unmarshaling ServiceInstanceDescriptorSeq.
 **/
public final class ServiceInstanceDescriptorSeqHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, java.util.List<ServiceInstanceDescriptor> v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.size());
            for(ServiceInstanceDescriptor elem : v)
            {
                ServiceInstanceDescriptor.ice_write(ostr, elem);
            }
        }
    }

    public static java.util.List<ServiceInstanceDescriptor> read(com.zeroc.Ice.InputStream istr)
    {
        final java.util.List<ServiceInstanceDescriptor> v;
        v = new java.util.LinkedList<ServiceInstanceDescriptor>();
        final int len0 = istr.readAndCheckSeqSize(5);
        for(int i0 = 0; i0 < len0; i0++)
        {
            ServiceInstanceDescriptor elem;
            elem = ServiceInstanceDescriptor.ice_read(istr);
            v.add(elem);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<java.util.List<ServiceInstanceDescriptor>> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.List<ServiceInstanceDescriptor> v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ServiceInstanceDescriptorSeqHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<java.util.List<ServiceInstanceDescriptor>> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            java.util.List<ServiceInstanceDescriptor> v;
            v = ServiceInstanceDescriptorSeqHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
