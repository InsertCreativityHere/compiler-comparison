//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServerPrivateAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.slicing.objects.serverAMD.Test;

public class PSUnknown extends Preserved
{
    public PSUnknown()
    {
        super();
        this.psu = "";
    }

    public PSUnknown(int pi, String ps, String psu, PNode graph, MyClass cl)
    {
        super(pi, ps);
        this.psu = psu;
        this.graph = graph;
        this.cl = cl;
    }

    public String psu;

    public PNode graph;

    public MyClass cl;

    public PSUnknown clone()
    {
        return (PSUnknown)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::PSUnknown";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 7900347739982967253L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeString(psu);
        ostr_.writeValue(graph);
        ostr_.writeValue(cl);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        psu = istr_.readString();
        istr_.readValue(v -> graph = v, PNode.class);
        istr_.readValue(v -> cl = v, MyClass.class);
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
