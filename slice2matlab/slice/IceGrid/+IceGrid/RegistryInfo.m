classdef (Sealed) RegistryInfo
    %REGISTRYINFO Information about an IceGrid registry replica.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.RegistryInfo()
    %       obj = IceGrid.RegistryInfo(name, hostname)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   RegistryInfo Properties:
    %     name - The name of the registry.
    %     hostname - The network name of the host running this registry.
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME The name of the registry.
        %   character vector
        name (1, :) char
        
        % HOSTNAME The network name of the host running this registry.
        %   character vector
        hostname (1, :) char
    end
    methods
        function obj = RegistryInfo(name, hostname)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.name = name;
                obj.hostname = hostname;
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
            r = IceGrid.RegistryInfo();
            r.name = is.readString();
            r.hostname = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.RegistryInfo();
            end
            os.writeString(v.name);
            os.writeString(v.hostname);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.RegistryInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.RegistryInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
