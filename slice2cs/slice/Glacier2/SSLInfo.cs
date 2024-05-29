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

#nullable enable

[assembly:Ice.Slice("SSLInfo.ice")]

#pragma warning disable 1591

namespace Glacier2
{
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1704")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1707")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1709")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1710")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1711")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1715")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1716")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1720")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1722")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1724")]
    public sealed partial record class SSLInfo
    {
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public string remoteHost = "";

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public int remotePort;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public string localHost = "";

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public int localPort;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public string cipher = "";

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public string[] certs;

        partial void ice_initialize();

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public SSLInfo(string[] certs)
        {
            global::System.ArgumentNullException.ThrowIfNull(certs);
            this.certs = certs;
            ice_initialize();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public SSLInfo(string remoteHost, int remotePort, string localHost, int localPort, string cipher, string[] certs)
        {
            global::System.ArgumentNullException.ThrowIfNull(remoteHost);
            this.remoteHost = remoteHost;
            this.remotePort = remotePort;
            global::System.ArgumentNullException.ThrowIfNull(localHost);
            this.localHost = localHost;
            this.localPort = localPort;
            global::System.ArgumentNullException.ThrowIfNull(cipher);
            this.cipher = cipher;
            global::System.ArgumentNullException.ThrowIfNull(certs);
            this.certs = certs;
            ice_initialize();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public SSLInfo(Ice.InputStream istr)
        {
            this.remoteHost = istr.readString();
            this.remotePort = istr.readInt();
            this.localHost = istr.readString();
            this.localPort = istr.readInt();
            this.cipher = istr.readString();
            this.certs = global::Ice.StringSeqHelper.read(istr);
            ice_initialize();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public void ice_writeMembers(Ice.OutputStream ostr)
        {
            ostr.writeString(this.remoteHost);
            ostr.writeInt(this.remotePort);
            ostr.writeString(this.localHost);
            ostr.writeInt(this.localPort);
            ostr.writeString(this.cipher);
            global::Ice.StringSeqHelper.write(ostr, this.certs);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static void ice_write(Ice.OutputStream ostr, SSLInfo v)
        {
            v.ice_writeMembers(ostr);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public static SSLInfo ice_read(Ice.InputStream istr) => new(istr);
    }
}
