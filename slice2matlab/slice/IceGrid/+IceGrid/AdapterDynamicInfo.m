classdef (Sealed) AdapterDynamicInfo
    %ADAPTERDYNAMICINFO Dynamic information about the state of an adapter.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.AdapterDynamicInfo()
    %       obj = IceGrid.AdapterDynamicInfo(id, proxy)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   AdapterDynamicInfo Properties:
    %     id - The id of the adapter.
    %     proxy - The direct proxy containing the adapter endpoints.
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The id of the adapter.
        %   character vector
        id (1, :) char
        
        % PROXY The direct proxy containing the adapter endpoints. This proxy is never null.
        %   Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
        proxy Ice.ObjectPrx {mustBeScalarOrEmpty} = Ice.ObjectPrx.empty
    end
    methods
        function obj = AdapterDynamicInfo(id, proxy)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = IceGrid.AdapterDynamicInfo();
            r.id = is.readString();
            r.proxy = is.readProxy();
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.AdapterDynamicInfo();
            end
            os.writeString(v.id);
            os.writeProxy(v.proxy);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.AdapterDynamicInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
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
