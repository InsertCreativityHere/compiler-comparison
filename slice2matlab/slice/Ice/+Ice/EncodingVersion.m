classdef (Sealed) EncodingVersion
    %ENCODINGVERSION Represents a version of the Ice encoding. Ice supports version 1.0 and 1.1 of this encoding.
    %
    %   Creation
    %     Syntax
    %       obj = Ice.EncodingVersion()
    %       obj = Ice.EncodingVersion(major, minor)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   EncodingVersion Properties:
    %     major - The major version of the Ice encoding.
    %     minor - The minor version of the Ice encoding.
    %
    %   Remarks
    %     The Ice encoding is also known as the Slice encoding.
    %
    %   Generated from Version.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % MAJOR The major version of the Ice encoding.
        %   uint8 scalar
        major (1, 1) uint8
        
        % MINOR The minor version of the Ice encoding.
        %   uint8 scalar
        minor (1, 1) uint8
    end
    methods
        function obj = EncodingVersion(major, minor)
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
            r = Ice.EncodingVersion();
            r.major = is.readByte();
            r.minor = is.readByte();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Ice.EncodingVersion();
            end
            os.writeByte(v.major);
            os.writeByte(v.minor);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Ice.EncodingVersion.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(2);
                Ice.EncodingVersion.ice_write(os, v);
            end
        end
    end
end
