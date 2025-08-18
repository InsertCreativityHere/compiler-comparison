classdef (Sealed) ObjectInfo
    %OBJECTINFO Information about an Ice well-known object.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.ObjectInfo()
    %       obj = IceGrid.ObjectInfo(proxy, type)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ObjectInfo Properties:
    %     proxy - The proxy of the object.
    %     type - The type of the object.
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % PROXY The proxy of the object.
        %   Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
        proxy Ice.ObjectPrx {mustBeScalarOrEmpty} = Ice.ObjectPrx.empty
        
        % TYPE The type of the object.
        %   character vector
        type (1, :) char
    end
    methods
        function obj = ObjectInfo(proxy, type)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.proxy = proxy;
                obj.type = type;
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
            r = IceGrid.ObjectInfo();
            r.proxy = is.readProxy();
            r.type = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.ObjectInfo();
            end
            os.writeProxy(v.proxy);
            os.writeString(v.type);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.ObjectInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.ObjectInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
