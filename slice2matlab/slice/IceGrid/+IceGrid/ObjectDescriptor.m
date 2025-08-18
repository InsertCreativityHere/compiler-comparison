classdef (Sealed) ObjectDescriptor
    %OBJECTDESCRIPTOR Describes a well-known Ice object.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.ObjectDescriptor()
    %       obj = IceGrid.ObjectDescriptor(id, type, proxyOptions)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ObjectDescriptor Properties:
    %     id - The identity of the object.
    %     type - The object type.
    %     proxyOptions - The proxy options to use when creating a proxy for this well-known object.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The identity of the object.
        %   Ice.Identity scalar
        id Ice.Identity {mustBeScalarOrEmpty} = Ice.Identity.empty
        
        % TYPE The object type.
        %   character vector
        type (1, :) char
        
        % PROXYOPTIONS The proxy options to use when creating a proxy for this well-known object. If empty, the proxy is created
        %   with the proxy options specified on the object adapter or replica group.
        %   character vector
        proxyOptions (1, :) char
    end
    methods
        function obj = ObjectDescriptor(id, type, proxyOptions)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
                obj.id = id;
                obj.type = type;
                obj.proxyOptions = proxyOptions;
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
            r = IceGrid.ObjectDescriptor();
            r.id = Ice.Identity.ice_read(is);
            r.type = is.readString();
            r.proxyOptions = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.ObjectDescriptor();
            end
            Ice.Identity.ice_write(os, v.id);
            os.writeString(v.type);
            os.writeString(v.proxyOptions);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.ObjectDescriptor.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.ObjectDescriptor.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
