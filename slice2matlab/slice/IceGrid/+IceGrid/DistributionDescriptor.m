classdef (Sealed) DistributionDescriptor
    %DISTRIBUTIONDESCRIPTOR Describes a distribution.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.DistributionDescriptor()
    %       obj = IceGrid.DistributionDescriptor(icepatch, directories)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   DistributionDescriptor Properties:
    %     icepatch - The proxy of the IcePatch2 server.
    %     directories - The source directories.
    %
    %   Deprecated: This descriptor is provided for schema compatibility. It is no longer used as of Ice 3.8.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ICEPATCH The proxy of the IcePatch2 server.
        %   character vector
        icepatch (1, :) char
        
        % DIRECTORIES The source directories.
        %   string vector
        directories (1, :) char
    end
    methods
        function obj = DistributionDescriptor(icepatch, directories)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.icepatch = icepatch;
                obj.directories = directories;
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
            r = IceGrid.DistributionDescriptor();
            r.icepatch = is.readString();
            r.directories = is.readStringSeq();
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.DistributionDescriptor();
            end
            os.writeString(v.icepatch);
            os.writeStringSeq(v.directories);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.DistributionDescriptor.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.DistributionDescriptor.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
