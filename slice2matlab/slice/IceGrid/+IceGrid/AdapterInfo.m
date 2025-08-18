classdef (Sealed) AdapterInfo
    %ADAPTERINFO Information about an adapter registered with the IceGrid registry.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.AdapterInfo()
    %       obj = IceGrid.AdapterInfo(id, proxy, replicaGroupId)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   AdapterInfo Properties:
    %     id - The ID of the adapter.
    %     proxy - A dummy direct proxy that contains the adapter endpoints.
    %     replicaGroupId - The replica group ID of the object adapter, or empty if the adapter doesn't belong to a replica group.
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The ID of the adapter.
        %   character vector
        id (1, :) char
        
        % PROXY A dummy direct proxy that contains the adapter endpoints.
        %   Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
        proxy Ice.ObjectPrx {mustBeScalarOrEmpty} = Ice.ObjectPrx.empty
        
        % REPLICAGROUPID The replica group ID of the object adapter, or empty if the adapter doesn't belong to a replica group.
        %   character vector
        replicaGroupId (1, :) char
    end
    methods
        function obj = AdapterInfo(id, proxy, replicaGroupId)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = IceGrid.AdapterInfo();
            r.id = is.readString();
            r.proxy = is.readProxy();
            r.replicaGroupId = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.AdapterInfo();
            end
            os.writeString(v.id);
            os.writeProxy(v.proxy);
            os.writeString(v.replicaGroupId);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.AdapterInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
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
