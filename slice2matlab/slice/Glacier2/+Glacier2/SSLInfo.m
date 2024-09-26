% SSLInfo   Summary of SSLInfo
%
% Information taken from an SSL connection used for permissions verification.
%
% SSLInfo Properties:
%   remoteHost - The remote host.
%   remotePort - The remote port.
%   localHost - The router's host.
%   localPort - The router's port.
%   cipher - The negotiated cipher suite.
%   certs - The certificate chain.
%
% See also PermissionsVerifier

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from SSLInfo.ice by slice2matlab version 3.8.0-alpha.0

classdef SSLInfo
    properties
        % remoteHost - The remote host.
        remoteHost char
        % remotePort - The remote port.
        remotePort int32
        % localHost - The router's host.
        localHost char
        % localPort - The router's port.
        localPort int32
        % cipher - The negotiated cipher suite.
        cipher char
        % certs - The certificate chain.
        certs
    end
    methods
        function obj = SSLInfo(remoteHost, remotePort, localHost, localPort, cipher, certs)
            if nargin == 0
                obj.remoteHost = '';
                obj.remotePort = 0;
                obj.localHost = '';
                obj.localPort = 0;
                obj.cipher = '';
                obj.certs = [];
            elseif ne(remoteHost, IceInternal.NoInit.Instance)
                obj.remoteHost = remoteHost;
                obj.remotePort = remotePort;
                obj.localHost = localHost;
                obj.localPort = localPort;
                obj.cipher = cipher;
                obj.certs = certs;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Glacier2.SSLInfo(IceInternal.NoInit.Instance);
            r.remoteHost = is.readString();
            r.remotePort = is.readInt();
            r.localHost = is.readString();
            r.localPort = is.readInt();
            r.cipher = is.readString();
            r.certs = is.readStringSeq();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Glacier2.SSLInfo();
            end
            os.writeString(v.remoteHost);
            os.writeInt(v.remotePort);
            os.writeString(v.localHost);
            os.writeInt(v.localPort);
            os.writeString(v.cipher);
            os.writeStringSeq(v.certs);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Glacier2.SSLInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Glacier2.SSLInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
