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

package test.Ice.servantLocator.Test;

public abstract class Cookie implements java.lang.Cloneable
{
    public abstract String message();

    public Cookie clone()
    {
        Cookie c = null;
        try
        {
            c = (Cookie)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    /** @hidden */
    public static final long serialVersionUID = 2877411645336766575L;
}
