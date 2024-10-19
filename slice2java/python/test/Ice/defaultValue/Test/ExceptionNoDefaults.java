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
    }

    public ExceptionNoDefaults(String str, Color c1, byte[] bs, InnerStruct st, java.util.Map<java.lang.Integer, java.lang.String> dict)
    {
        super(str, c1, bs);
        this.st = st;
        this.dict = dict;
    }

    public String ice_id()
    {
        return "::Test::ExceptionNoDefaults";
    }

    public InnerStruct st;

    public java.util.Map<java.lang.Integer, java.lang.String> dict;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::ExceptionNoDefaults", -1, false);
        InnerStruct.ice_write(ostr_, st);
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
        dict = IntStringDictHelper.read(istr_);
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    private static final long serialVersionUID = -985510521616269223L;
}
