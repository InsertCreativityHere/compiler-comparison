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

public class ClassStruct implements java.lang.Cloneable,
                                    java.io.Serializable
{
    public ClassOtherStruct[] otherSeq;

    public ClassOtherStruct other;

    public int y;

    public ClassStruct()
    {
        this.other = new ClassOtherStruct();
    }

    public ClassStruct(ClassOtherStruct[] otherSeq, ClassOtherStruct other, int y)
    {
        this.otherSeq = otherSeq;
        this.other = other;
        this.y = y;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ClassStruct r = null;
        if(rhs instanceof ClassStruct)
        {
            r = (ClassStruct)rhs;
        }

        if(r != null)
        {
            if(!java.util.Arrays.equals(this.otherSeq, r.otherSeq))
            {
                return false;
            }
            if(this.other != r.other)
            {
                if(this.other == null || r.other == null || !this.other.equals(r.other))
                {
                    return false;
                }
            }
            if(this.y != r.y)
            {
                return false;
            }

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::ClassStruct");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, otherSeq);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, other);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, y);
        return h_;
    }

    public ClassStruct clone()
    {
        ClassStruct c = null;
        try
        {
            c = (ClassStruct)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ClassOtherStructSeqHelper.write(ostr, this.otherSeq);
        ClassOtherStruct.ice_write(ostr, this.other);
        ostr.writeInt(this.y);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.otherSeq = ClassOtherStructSeqHelper.read(istr);
        this.other = ClassOtherStruct.ice_read(istr);
        this.y = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ClassStruct v)
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

    static public ClassStruct ice_read(com.zeroc.Ice.InputStream istr)
    {
        ClassStruct v = new ClassStruct();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ClassStruct> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ClassStruct v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ClassStruct> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ClassStruct.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ClassStruct _nullMarshalValue = new ClassStruct();

    /** @hidden */
    public static final long serialVersionUID = 819107360353522010L;
}
