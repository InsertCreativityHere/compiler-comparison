//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `SSLInfo.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.Glacier2;

/**
 * Information taken from an SSL connection used for permissions verification.
 *
 * @see PermissionsVerifier
 **/
public class SSLInfo implements java.lang.Cloneable,
                                java.io.Serializable
{
    /**
     * The remote host.
     **/
    public String remoteHost;

    /**
     * The remote port.
     **/
    public int remotePort;

    /**
     * The router's host.
     **/
    public String localHost;

    /**
     * The router's port.
     **/
    public int localPort;

    /**
     * The negotiated cipher suite.
     **/
    public String cipher;

    /**
     * The certificate chain.
     **/
    public String[] certs;

    public SSLInfo()
    {
        this.remoteHost = "";
        this.localHost = "";
        this.cipher = "";
    }

    public SSLInfo(String remoteHost, int remotePort, String localHost, int localPort, String cipher, String[] certs)
    {
        this.remoteHost = remoteHost;
        this.remotePort = remotePort;
        this.localHost = localHost;
        this.localPort = localPort;
        this.cipher = cipher;
        this.certs = certs;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        SSLInfo r = null;
        if(rhs instanceof SSLInfo)
        {
            r = (SSLInfo)rhs;
        }

        if(r != null)
        {
            if(this.remoteHost != r.remoteHost)
            {
                if(this.remoteHost == null || r.remoteHost == null || !this.remoteHost.equals(r.remoteHost))
                {
                    return false;
                }
            }
            if(this.remotePort != r.remotePort)
            {
                return false;
            }
            if(this.localHost != r.localHost)
            {
                if(this.localHost == null || r.localHost == null || !this.localHost.equals(r.localHost))
                {
                    return false;
                }
            }
            if(this.localPort != r.localPort)
            {
                return false;
            }
            if(this.cipher != r.cipher)
            {
                if(this.cipher == null || r.cipher == null || !this.cipher.equals(r.cipher))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.certs, r.certs))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::Glacier2::SSLInfo");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, remoteHost);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, remotePort);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, localHost);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, localPort);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, cipher);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, certs);
        return h_;
    }

    public SSLInfo clone()
    {
        SSLInfo c = null;
        try
        {
            c = (SSLInfo)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.remoteHost);
        ostr.writeInt(this.remotePort);
        ostr.writeString(this.localHost);
        ostr.writeInt(this.localPort);
        ostr.writeString(this.cipher);
        ostr.writeStringSeq(this.certs);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.remoteHost = istr.readString();
        this.remotePort = istr.readInt();
        this.localHost = istr.readString();
        this.localPort = istr.readInt();
        this.cipher = istr.readString();
        this.certs = istr.readStringSeq();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, SSLInfo v)
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

    static public SSLInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        SSLInfo v = new SSLInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<SSLInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, SSLInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<SSLInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(SSLInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final SSLInfo _nullMarshalValue = new SSLInfo();

    /** @hidden */
    private static final long serialVersionUID = -3375901984146926273L;
}
