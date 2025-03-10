// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package test.Ice.optional.AMD.Test;

public class F extends E
{
    public F()
    {
        super();
        this.fsf = new FixedStruct();
    }

    public F(FixedStruct fse)
    {
        super(fse);
        this.fsf = new FixedStruct();
    }

    public F(FixedStruct fse, FixedStruct fsf)
    {
        super(fse);
        setFsf(fsf);
    }

    private FixedStruct fsf;
    private boolean _fsf;

    public FixedStruct getFsf()
    {
        if(!_fsf)
        {
            throw new java.util.NoSuchElementException("fsf is not set");
        }
        return fsf;
    }

    public void setFsf(FixedStruct fsf)
    {
        _fsf = true;
        this.fsf = fsf;
    }

    public boolean hasFsf()
    {
        return _fsf;
    }

    public void clearFsf()
    {
        _fsf = false;
    }

    public void optionalFsf(java.util.Optional<FixedStruct> v)
    {
        if(v == null || !v.isPresent())
        {
            _fsf = false;
        }
        else
        {
            _fsf = true;
            fsf = v.get();
        }
    }

    public java.util.Optional<FixedStruct> optionalFsf()
    {
        if(_fsf)
        {
            return java.util.Optional.of(fsf);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public F clone()
    {
        return (F)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::F";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -9182583090024262716L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        if(_fsf)
        {
            FixedStruct.ice_write(ostr_, 1, fsf);
        }
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        if(_fsf = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            fsf = FixedStruct.ice_read(istr_);
        }
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
