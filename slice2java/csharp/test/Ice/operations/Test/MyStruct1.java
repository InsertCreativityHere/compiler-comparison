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

public class MyStruct1 implements java.lang.Cloneable,
                                  java.io.Serializable
{
    public String tesT;

    public MyClassPrx myClass;

    public String myStruct1;

    public MyStruct1()
    {
        this.tesT = "";
        this.myStruct1 = "";
    }

    public MyStruct1(String tesT, MyClassPrx myClass, String myStruct1)
    {
        this.tesT = tesT;
        this.myClass = myClass;
        this.myStruct1 = myStruct1;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        MyStruct1 r = null;
        if(rhs instanceof MyStruct1)
        {
            r = (MyStruct1)rhs;
        }

        if(r != null)
        {
            if(this.tesT != r.tesT)
            {
                if(this.tesT == null || r.tesT == null || !this.tesT.equals(r.tesT))
                {
                    return false;
                }
            }
            if(this.myClass != r.myClass)
            {
                if(this.myClass == null || r.myClass == null || !this.myClass.equals(r.myClass))
                {
                    return false;
                }
            }
            if(this.myStruct1 != r.myStruct1)
            {
                if(this.myStruct1 == null || r.myStruct1 == null || !this.myStruct1.equals(r.myStruct1))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::MyStruct1");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, tesT);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, myClass);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, myStruct1);
        return h_;
    }

    public MyStruct1 clone()
    {
        MyStruct1 c = null;
        try
        {
            c = (MyStruct1)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.tesT);
        ostr.writeProxy(this.myClass);
        ostr.writeString(this.myStruct1);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.tesT = istr.readString();
        this.myClass = MyClassPrx.uncheckedCast(istr.readProxy());
        this.myStruct1 = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, MyStruct1 v)
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

    static public MyStruct1 ice_read(com.zeroc.Ice.InputStream istr)
    {
        MyStruct1 v = new MyStruct1();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<MyStruct1> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, MyStruct1 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<MyStruct1> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(MyStruct1.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final MyStruct1 _nullMarshalValue = new MyStruct1();

    /** @hidden */
    public static final long serialVersionUID = -7916352787575342110L;
}
