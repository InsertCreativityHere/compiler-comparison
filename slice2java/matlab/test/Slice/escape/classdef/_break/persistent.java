//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package classdef._break;

public class persistent extends com.zeroc.Ice.UserException
{
    public persistent()
    {
        this.identifier = "1";
        this.message = "2";
        this.stack = "3";
        this.cause = "4";
        this.type = "5";
    }

    public persistent(Throwable cause)
    {
        super(cause);
        this.identifier = "1";
        this.message = "2";
        this.stack = "3";
        this.cause = "4";
        this.type = "5";
    }

    public persistent(String identifier, String message, String stack, String cause, String type, logical end)
    {
        this.identifier = identifier;
        this.message = message;
        this.stack = stack;
        this.cause = cause;
        this.type = type;
        this.end = end;
    }

    public persistent(String identifier, String message, String stack, String cause, String type, logical end, Throwable cause_)
    {
        super(cause_);
        this.identifier = identifier;
        this.message = message;
        this.stack = stack;
        this.cause = cause;
        this.type = type;
        this.end = end;
    }

    public String ice_id()
    {
        return "::classdef::break::persistent";
    }

    public String identifier;

    public String message;

    public String stack;

    public String cause;

    public String type;

    public logical end;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::classdef::break::persistent", -1, true);
        ostr_.writeString(identifier);
        ostr_.writeString(message);
        ostr_.writeString(stack);
        ostr_.writeString(cause);
        ostr_.writeString(type);
        ostr_.writeValue(end);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        identifier = istr_.readString();
        message = istr_.readString();
        stack = istr_.readString();
        cause = istr_.readString();
        type = istr_.readString();
        istr_.readValue(v -> end = v, logical.class);
        istr_.endSlice();
    }

    /** @hidden */
    @Override
    public boolean _usesClasses()
    {
        return true;
    }

    /** @hidden */
    public static final long serialVersionUID = -2857974195992393137L;
}
