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

public class not extends is
{
    public not()
    {
    }

    public not(int lambda, int or, int pass)
    {
        super(lambda);
        this.or = or;
        this.pass = pass;
    }

    public String ice_id()
    {
        return "::and::not";
    }

    public int or;

    public int pass;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::and::not", -1, false);
        ostr_.writeInt(or);
        ostr_.writeInt(pass);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        or = istr_.readInt();
        pass = istr_.readInt();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    private static final long serialVersionUID = -3875591791303946823L;
}
