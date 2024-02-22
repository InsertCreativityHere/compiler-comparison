//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `FileInfo.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IcePatch2;

/**
 * Basic information about a single file.
 **/
public class FileInfo implements java.lang.Cloneable,
                                 java.io.Serializable
{
    /**
     * The pathname.
     **/
    public String path;

    /**
     * The SHA-1 checksum of the file.
     **/
    public byte[] checksum;

    /**
     * The size of the compressed file in number of bytes.
     **/
    public int size;

    /**
     * The executable flag.
     **/
    public boolean executable;

    public FileInfo()
    {
        this.path = "";
    }

    public FileInfo(String path, byte[] checksum, int size, boolean executable)
    {
        this.path = path;
        this.checksum = checksum;
        this.size = size;
        this.executable = executable;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        FileInfo r = null;
        if(rhs instanceof FileInfo)
        {
            r = (FileInfo)rhs;
        }

        if(r != null)
        {
            if(this.path != r.path)
            {
                if(this.path == null || r.path == null || !this.path.equals(r.path))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.checksum, r.checksum))
            {
                return false;
            }
            if(this.size != r.size)
            {
                return false;
            }
            if(this.executable != r.executable)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IcePatch2::FileInfo");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, path);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, checksum);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, size);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, executable);
        return h_;
    }

    public FileInfo clone()
    {
        FileInfo c = null;
        try
        {
            c = (FileInfo)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.path);
        ostr.writeByteSeq(this.checksum);
        ostr.writeInt(this.size);
        ostr.writeBool(this.executable);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.path = istr.readString();
        this.checksum = istr.readByteSeq();
        this.size = istr.readInt();
        this.executable = istr.readBool();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, FileInfo v)
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

    static public FileInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        FileInfo v = new FileInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<FileInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, FileInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<FileInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(FileInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final FileInfo _nullMarshalValue = new FileInfo();

    /** @hidden */
    public static final long serialVersionUID = -4975906957549334098L;
}
