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

package Test;

public class PNode extends com.zeroc.Ice.Value
{
    public PNode()
    {
    }

    public PNode(PNode next)
    {
        this.next = next;
    }

    public PNode next;

    public PNode clone()
    {
        return (PNode)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::PNode";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -2438013859538709710L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeValue(next);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> next = v, PNode.class);
        istr_.endSlice();
    }
}
