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

public class KnownPreserved extends Base
{
    public KnownPreserved()
    {
        super();
        this.kp = "";
    }

    public KnownPreserved(Throwable cause)
    {
        super(cause);
        this.kp = "";
    }

    public KnownPreserved(String b, String kp)
    {
        super(b);
        this.kp = kp;
    }

    public KnownPreserved(String b, String kp, Throwable cause)
    {
        super(b, cause);
        this.kp = kp;
    }

    public String ice_id()
    {
        return "::Test::KnownPreserved";
    }

    public String kp;

    /** @hidden */
    @Override
    public com.zeroc.Ice.SlicedData ice_getSlicedData()
    {
        return _slicedData;
    }

    /** @hidden */
    @Override
    public void _write(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.startException(_slicedData);
        _writeImpl(ostr);
        ostr.endException();
    }

    /** @hidden */
    @Override
    public void _read(com.zeroc.Ice.InputStream istr)
    {
        istr.startException();
        _readImpl(istr);
        _slicedData = istr.endException(true);
    }

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::KnownPreserved", -1, false);
        ostr_.writeString(kp);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        kp = istr_.readString();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    protected com.zeroc.Ice.SlicedData _slicedData;

    /** @hidden */
    public static final long serialVersionUID = -2733710619246542454L;
}
