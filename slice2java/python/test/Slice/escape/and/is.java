//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package and;

public class is extends com.zeroc.Ice.UserException
{
    public is()
    {
    }

    public is(int lambda)
    {
        this.lambda = lambda;
    }

    public String ice_id()
    {
        return "::and::is";
    }

    public int lambda;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::and::is", -1, true);
        ostr_.writeInt(lambda);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        lambda = istr_.readInt();
        istr_.endSlice();
    }

    /** @hidden */
    private static final long serialVersionUID = -4585935067793766741L;
}
