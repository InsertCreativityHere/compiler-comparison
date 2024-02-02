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

public class Recursive extends com.zeroc.Ice.Value
{
    public Recursive()
    {
    }

    public Recursive(Recursive[] value)
    {
        setValue(value);
    }

    private Recursive[] value;
    private boolean _value;

    public Recursive[] getValue()
    {
        if(!_value)
        {
            throw new java.util.NoSuchElementException("value is not set");
        }
        return value;
    }

    public void setValue(Recursive[] value)
    {
        _value = true;
        this.value = value;
    }

    public boolean hasValue()
    {
        return _value;
    }

    public void clearValue()
    {
        _value = false;
    }

    public void optionalValue(java.util.Optional<Recursive[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _value = false;
        }
        else
        {
            _value = true;
            value = v.get();
        }
    }

    public java.util.Optional<Recursive[]> optionalValue()
    {
        if(_value)
        {
            return java.util.Optional.of(value);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public Recursive getValue(int index)
    {
        if(!_value)
        {
            throw new java.util.NoSuchElementException("value is not set");
        }
        return this.value[index];
    }

    public void setValue(int index, Recursive val)
    {
        if(!_value)
        {
            throw new java.util.NoSuchElementException("value is not set");
        }
        this.value[index] = val;
    }

    public Recursive clone()
    {
        return (Recursive)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Recursive";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 9055419570479160436L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        if(_value)
        {
            RecursiveSeqHelper.write(ostr_, 0, value);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        if(_value = istr_.readOptional(0, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            value = RecursiveSeqHelper.read(istr_);
        }
        istr_.endSlice();
    }
}
