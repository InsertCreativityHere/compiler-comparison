//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `EndpointInfo.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceIAP;

/**
 * Provides access to an IAP endpoint information.
 **/
public abstract class EndpointInfo extends com.zeroc.Ice.EndpointInfo
{
    public EndpointInfo()
    {
        super();
        this.manufacturer = "";
        this.modelNumber = "";
        this.name = "";
        this.protocol = "";
    }

    public EndpointInfo(com.zeroc.Ice.EndpointInfo underlying, int timeout, boolean compress, String manufacturer, String modelNumber, String name, String protocol)
    {
        super(underlying, timeout, compress);
        this.manufacturer = manufacturer;
        this.modelNumber = modelNumber;
        this.name = name;
        this.protocol = protocol;
    }

    /**
     * The accessory manufacturer or empty to not match against
     * a manufacturer.
     **/
    public String manufacturer;

    /**
     * The accessory model number or empty to not match against
     * a model number.
     **/
    public String modelNumber;

    /**
     * The accessory name or empty to not match against
     * the accessory name.
     **/
    public String name;

    /**
     * The protocol supported by the accessory.
     **/
    public String protocol;

    public EndpointInfo clone()
    {
        return (EndpointInfo)super.clone();
    }

    /** @hidden */
    public static final long serialVersionUID = 648034122305062787L;
}
