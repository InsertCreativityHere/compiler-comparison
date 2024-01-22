% AdapterDynamicInfo   Summary of AdapterDynamicInfo
%
% Dynamic information about the state of an adapter.
%
% AdapterDynamicInfo Properties:
%   id - The id of the adapter.
%   proxy - The direct proxy containing the adapter endpoints.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef AdapterDynamicInfo
    properties
        % id - The id of the adapter.
        id char
        % proxy - The direct proxy containing the adapter endpoints.
        proxy
    end
    methods
        function obj = AdapterDynamicInfo(id, proxy)
            if nargin == 0
                obj.id = '';
                obj.proxy = [];
            elseif ne(id, IceInternal.NoInit.Instance)
                obj.id = id;
                obj.proxy = proxy;
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
            r = IceGrid.AdapterDynamicInfo(IceInternal.NoInit.Instance);
            r.id = is.readString();
            r.proxy = is.readProxy();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.AdapterDynamicInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.AdapterDynamicInfo();
            end
            os.writeString(v.id);
            os.writeProxy(v.proxy);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.AdapterDynamicInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
