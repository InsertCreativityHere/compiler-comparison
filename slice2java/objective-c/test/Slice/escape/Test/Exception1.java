//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `Inherit.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class Exception1 extends com.zeroc.Ice.UserException
{
    public Exception1()
    {
    }

    public Exception1(Throwable cause)
    {
        super(cause);
    }

    public Exception1(int isa, int reason, int raise, int name, int callStackReturnAddresses, int userInfo, int reserved)
    {
        this.isa = isa;
        this.reason = reason;
        this.raise = raise;
        this.name = name;
        this.callStackReturnAddresses = callStackReturnAddresses;
        this.userInfo = userInfo;
        this.reserved = reserved;
    }

    public Exception1(int isa, int reason, int raise, int name, int callStackReturnAddresses, int userInfo, int reserved, Throwable cause)
    {
        super(cause);
        this.isa = isa;
        this.reason = reason;
        this.raise = raise;
        this.name = name;
        this.callStackReturnAddresses = callStackReturnAddresses;
        this.userInfo = userInfo;
        this.reserved = reserved;
    }

    public String ice_id()
    {
        return "::Test::Exception1";
    }

    public int isa;

    public int reason;

    public int raise;

    public int name;

    public int callStackReturnAddresses;

    public int userInfo;

    public int reserved;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::Exception1", -1, true);
        ostr_.writeInt(isa);
        ostr_.writeInt(reason);
        ostr_.writeInt(raise);
        ostr_.writeInt(name);
        ostr_.writeInt(callStackReturnAddresses);
        ostr_.writeInt(userInfo);
        ostr_.writeInt(reserved);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        isa = istr_.readInt();
        reason = istr_.readInt();
        raise = istr_.readInt();
        name = istr_.readInt();
        callStackReturnAddresses = istr_.readInt();
        userInfo = istr_.readInt();
        reserved = istr_.readInt();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = 984302318984631920L;
}
