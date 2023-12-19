% AdapterInfo   Summary of AdapterInfo
%
% Information about an adapter registered with the IceGrid registry.
%
% AdapterInfo Properties:
%   id - The id of the adapter.
%   proxy - A dummy direct proxy that contains the adapter endpoints.
%   replicaGroupId - The replica group id of the object adapter, or empty if the adapter doesn't belong to a replica group.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.7.10

classdef AdapterInfo
    properties
        % id - The id of the adapter.
        id char
        % proxy - A dummy direct proxy that contains the adapter endpoints.
        proxy
        % replicaGroupId - The replica group id of the object adapter, or empty if the adapter doesn't belong to a replica group.
        replicaGroupId char
    end
    methods
        function obj = AdapterInfo(id, proxy, replicaGroupId)
            if nargin == 0
                obj.id = '';
                obj.proxy = [];
                obj.replicaGroupId = '';
            elseif ne(id, IceInternal.NoInit.Instance)
                obj.id = id;
                obj.proxy = proxy;
                obj.replicaGroupId = replicaGroupId;
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
            r = IceGrid.AdapterInfo(IceInternal.NoInit.Instance);
            r.id = is.readString();
            r.proxy = is.readProxy();
            r.replicaGroupId = is.readString();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.AdapterInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.AdapterInfo();
            end
            os.writeString(v.id);
            os.writeProxy(v.proxy);
            os.writeString(v.replicaGroupId);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.AdapterInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
