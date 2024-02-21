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

public class TestToken implements java.lang.Cloneable,
                                  java.io.Serializable
{
    public boolean expectedResult;

    public String description;

    public StateCode code;

    public short config;

    public short caseIndex;

    public String testReference;

    public TestToken()
    {
        this.description = "";
        this.code = StateCode.Initial;
        this.testReference = "";
    }

    public TestToken(boolean expectedResult, String description, StateCode code, short config, short caseIndex, String testReference)
    {
        this.expectedResult = expectedResult;
        this.description = description;
        this.code = code;
        this.config = config;
        this.caseIndex = caseIndex;
        this.testReference = testReference;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        TestToken r = null;
        if(rhs instanceof TestToken)
        {
            r = (TestToken)rhs;
        }

        if(r != null)
        {
            if(this.expectedResult != r.expectedResult)
            {
                return false;
            }
            if(this.description != r.description)
            {
                if(this.description == null || r.description == null || !this.description.equals(r.description))
                {
                    return false;
                }
            }
            if(this.code != r.code)
            {
                if(this.code == null || r.code == null || !this.code.equals(r.code))
                {
                    return false;
                }
            }
            if(this.config != r.config)
            {
                return false;
            }
            if(this.caseIndex != r.caseIndex)
            {
                return false;
            }
            if(this.testReference != r.testReference)
            {
                if(this.testReference == null || r.testReference == null || !this.testReference.equals(r.testReference))
                {
                    return false;
                }
            }

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::TestToken");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, expectedResult);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, description);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, code);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, config);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, caseIndex);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, testReference);
        return h_;
    }

    public TestToken clone()
    {
        TestToken c = null;
        try
        {
            c = (TestToken)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeBool(this.expectedResult);
        ostr.writeString(this.description);
        StateCode.ice_write(ostr, this.code);
        ostr.writeShort(this.config);
        ostr.writeShort(this.caseIndex);
        ostr.writeString(this.testReference);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.expectedResult = istr.readBool();
        this.description = istr.readString();
        this.code = StateCode.ice_read(istr);
        this.config = istr.readShort();
        this.caseIndex = istr.readShort();
        this.testReference = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, TestToken v)
    {
        if(v == null)
        {
            _nullMarshalValue.ice_writeMembers(ostr);
        }
        else
        {
            v.ice_writeMembers(ostr);
        }
    }

    static public TestToken ice_read(com.zeroc.Ice.InputStream istr)
    {
        TestToken v = new TestToken();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<TestToken> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, TestToken v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<TestToken> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(TestToken.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final TestToken _nullMarshalValue = new TestToken();

    /** @hidden */
    public static final long serialVersionUID = 3268578220638848357L;
}
