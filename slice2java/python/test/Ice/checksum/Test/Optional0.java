//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `CTypes.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class Optional0 extends com.zeroc.Ice.Value
{
    public Optional0()
    {
        this.firstName = "";
        this.secondName = "";
        this.emailAddress = "";
    }

    public Optional0(String firstName)
    {
        this.firstName = firstName;
        this.secondName = "";
        this.emailAddress = "";
    }

    public Optional0(String firstName, String secondName, String emailAddress)
    {
        this.firstName = firstName;
        setSecondName(secondName);
        setEmailAddress(emailAddress);
    }

    public String firstName;

    private String secondName;
    private boolean _secondName;

    public String getSecondName()
    {
        if(!_secondName)
        {
            throw new java.util.NoSuchElementException("secondName is not set");
        }
        return secondName;
    }

    public void setSecondName(String secondName)
    {
        _secondName = true;
        this.secondName = secondName;
    }

    public boolean hasSecondName()
    {
        return _secondName;
    }

    public void clearSecondName()
    {
        _secondName = false;
    }

    public void optionalSecondName(java.util.Optional<java.lang.String> v)
    {
        if(v == null || !v.isPresent())
        {
            _secondName = false;
        }
        else
        {
            _secondName = true;
            secondName = v.get();
        }
    }

    public java.util.Optional<java.lang.String> optionalSecondName()
    {
        if(_secondName)
        {
            return java.util.Optional.of(secondName);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private String emailAddress;
    private boolean _emailAddress;

    public String getEmailAddress()
    {
        if(!_emailAddress)
        {
            throw new java.util.NoSuchElementException("emailAddress is not set");
        }
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress)
    {
        _emailAddress = true;
        this.emailAddress = emailAddress;
    }

    public boolean hasEmailAddress()
    {
        return _emailAddress;
    }

    public void clearEmailAddress()
    {
        _emailAddress = false;
    }

    public void optionalEmailAddress(java.util.Optional<java.lang.String> v)
    {
        if(v == null || !v.isPresent())
        {
            _emailAddress = false;
        }
        else
        {
            _emailAddress = true;
            emailAddress = v.get();
        }
    }

    public java.util.Optional<java.lang.String> optionalEmailAddress()
    {
        if(_emailAddress)
        {
            return java.util.Optional.of(emailAddress);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public Optional0 clone()
    {
        return (Optional0)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Optional0";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 3941248971941335182L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(firstName);
        if(_secondName)
        {
            ostr_.writeString(1, secondName);
        }
        if(_emailAddress)
        {
            ostr_.writeString(2, emailAddress);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        firstName = istr_.readString();
        if(_secondName = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.VSize))
        {
            secondName = istr_.readString();
        }
        if(_emailAddress = istr_.readOptional(2, com.zeroc.Ice.OptionalFormat.VSize))
        {
            emailAddress = istr_.readString();
        }
        istr_.endSlice();
    }
}
