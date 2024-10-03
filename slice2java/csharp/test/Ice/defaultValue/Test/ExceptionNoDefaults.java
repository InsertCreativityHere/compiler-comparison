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

public class ExceptionNoDefaults extends ExceptionNoDefaultsBase
{
    public ExceptionNoDefaults()
    {
        this.st = new InnerStruct();
        this.st2 = new InnerStruct2();
    }

    public ExceptionNoDefaults(String str, Color c1, byte[] bs, InnerStruct st, InnerStruct2 st2, java.util.Map<java.lang.Integer, java.lang.String> dict)
    {
        super(str, c1, bs);
        this.st = st;
        this.st2 = st2;
        this.dict = dict;
    }

    public String ice_id()
    {
        return "::Test::ExceptionNoDefaults";
    }

    public InnerStruct st;

    public InnerStruct2 st2;

    public java.util.Map<java.lang.Integer, java.lang.String> dict;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::ExceptionNoDefaults", -1, false);
        InnerStruct.ice_write(ostr_, st);
        InnerStruct2.ice_write(ostr_, st2);
        IntStringDictHelper.write(ostr_, dict);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        st = InnerStruct.ice_read(istr_);
        st2 = InnerStruct2.ice_read(istr_);
        dict = IntStringDictHelper.read(istr_);
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    private static final long serialVersionUID = -5656633483621992838L;
}
