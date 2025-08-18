classdef (Sealed) SSLInfo
    %SSLINFO Represents information gathered from an incoming SSL connection and used for authentication and authorization.
    %
    %   Creation
    %     Syntax
    %       obj = Glacier2.SSLInfo()
    %       obj = Glacier2.SSLInfo(remoteHost, remotePort, localHost, localPort, cipher, certs)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   SSLInfo Properties:
    %     remoteHost - The remote host.
    %     remotePort - The remote port.
    %     localHost - The router's host.
    %     localPort - The router's port.
    %     cipher - The negotiated cipher suite.
    %     certs - The certificate chain.
    %
    %   See also SSLPermissionsVerifier
    %
    %   Generated from SSLInfo.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % REMOTEHOST The remote host.
        %   character vector
        remoteHost (1, :) char
        
        % REMOTEPORT The remote port.
        %   int32 scalar
        remotePort (1, 1) int32
        
        % LOCALHOST The router's host.
        %   character vector
        localHost (1, :) char
        
        % LOCALPORT The router's port.
        %   int32 scalar
        localPort (1, 1) int32
        
        % CIPHER The negotiated cipher suite.
        %   character vector
        cipher (1, :) char
        
        % CERTS The certificate chain.
        %   string vector
        certs (1, :) char
    end
    methods
        function obj = SSLInfo(remoteHost, remotePort, localHost, localPort, cipher, certs)
            if nargin > 0
                assert(nargin == 6, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = Glacier2.SSLInfo();
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
