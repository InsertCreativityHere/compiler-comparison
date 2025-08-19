classdef (Sealed) Identity
    %IDENTITY Represents the identity of an Ice object. It is comparable to the path of a URI. Its string representation is
    %   |name| when the category is empty, and |category/name| when the category is not empty.
    %
    %   Creation
    %     Syntax
    %       obj = Ice.Identity()
    %       obj = Ice.Identity(name, category)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Identity Properties:
    %     name - The name of the Ice object.
    %     category - The category of the object.
    %
    %   Generated from Identity.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME The name of the Ice object. An empty name is not valid.
        %   character vector
        name (1, :) char
        
        % CATEGORY The category of the object.
        %   character vector
        category (1, :) char = sprintf('')
    end
    methods
        function obj = Identity(name, category)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.name = name;
                obj.category = category;
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
            r = Ice.Identity();
            r.name = is.readString();
            r.category = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Ice.Identity();
            end
            os.writeString(v.name);
            os.writeString(v.category);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Ice.Identity.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Ice.Identity.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
