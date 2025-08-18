classdef (Sealed) ProtocolVersion
    %PROTOCOLVERSION Represents a version of the Ice protocol. The only version implemented and supported by Ice is version 1.0.
    %
    %   Creation
    %     Syntax
    %       obj = Ice.ProtocolVersion()
    %       obj = Ice.ProtocolVersion(major, minor)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ProtocolVersion Properties:
    %     major - The major version of the Ice protocol.
    %     minor - The minor version of the Ice protocol.
    %
    %   Generated from Version.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % MAJOR The major version of the Ice protocol.
        %   uint8 scalar
        major (1, 1) uint8
        
        % MINOR The minor version of the Ice protocol.
        %   uint8 scalar
        minor (1, 1) uint8
    end
    methods
        function obj = ProtocolVersion(major, minor)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.major = major;
                obj.minor = minor;
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
            r = Ice.ProtocolVersion();
            r.major = is.readByte();
            r.minor = is.readByte();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Ice.ProtocolVersion();
            end
            os.writeByte(v.major);
            os.writeByte(v.minor);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Ice.ProtocolVersion.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(2);
                Ice.ProtocolVersion.ice_write(os, v);
            end
        end
    end
end
