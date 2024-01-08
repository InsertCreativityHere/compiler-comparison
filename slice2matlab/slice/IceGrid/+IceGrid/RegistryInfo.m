% RegistryInfo   Summary of RegistryInfo
%
% Information about an IceGrid registry replica.
%
% RegistryInfo Properties:
%   name - The name of the registry.
%   hostname - The network name of the host running this registry (as defined in uname()).

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.7.10

classdef RegistryInfo
    properties
        % name - The name of the registry.
        name char
        % hostname - The network name of the host running this registry (as defined in uname()).
        hostname char
    end
    methods
        function obj = RegistryInfo(name, hostname)
            if nargin == 0
                obj.name = '';
                obj.hostname = '';
            elseif ne(name, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.RegistryInfo(IceInternal.NoInit.Instance);
            r.name = is.readString();
            r.hostname = is.readString();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.RegistryInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.RegistryInfo();
            end
            os.writeString(v.name);
            os.writeString(v.hostname);
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
