//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Internal.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceGrid;

public class InternalDbEnvDescriptor extends com.zeroc.Ice.Value
{
    public InternalDbEnvDescriptor()
    {
        this.name = "";
    }

    public InternalDbEnvDescriptor(String name, java.util.List<com.zeroc.IceGrid.PropertyDescriptor> properties)
    {
        this.name = name;
        this.properties = properties;
    }

    /**
     * The name of the database environment.
     **/
    public String name;

    /**
     * The database properties.
     **/
    public java.util.List<com.zeroc.IceGrid.PropertyDescriptor> properties;

    public InternalDbEnvDescriptor clone()
    {
        return (InternalDbEnvDescriptor)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceGrid::InternalDbEnvDescriptor";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 3356574557508371703L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(name);
        com.zeroc.IceGrid.PropertyDescriptorSeqHelper.write(ostr_, properties);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        name = istr_.readString();
        properties = com.zeroc.IceGrid.PropertyDescriptorSeqHelper.read(istr_);
        istr_.endSlice();
    }
}
