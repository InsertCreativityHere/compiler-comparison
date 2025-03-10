// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package and;

public class _for extends com.zeroc.Ice.Value
{
    public _for()
    {
    }

    public _for(int lambda, execPrx from, int global)
    {
        this.lambda = lambda;
        this.from = from;
        this.global = global;
    }

    public int lambda;

    public execPrx from;

    public int global;

    public _for clone()
    {
        return (_for)super.clone();
    }

    public static String ice_staticId()
    {
        return "::and::for";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 4184344701393856156L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(lambda);
        ostr_.writeProxy(from);
        ostr_.writeInt(global);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        lambda = istr_.readInt();
        from = execPrx.uncheckedCast(istr_.readProxy());
        global = istr_.readInt();
        istr_.endSlice();
    }
}
