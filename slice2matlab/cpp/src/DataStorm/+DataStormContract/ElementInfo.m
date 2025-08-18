classdef (Sealed) ElementInfo
    %ELEMENTINFO Provides metadata about an element, such as a key, filter, or tag.
    %
    %   Creation
    %     Syntax
    %       obj = DataStormContract.ElementInfo()
    %       obj = DataStormContract.ElementInfo(id, name, value)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ElementInfo Properties:
    %     id - The unique identifier for the element.
    %     name - The name of the element.
    %     value - The encoded value of the element.
    %
    %   Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The unique identifier for the element.
        %   Negative values indicate filter IDs; positive values indicate key or tag IDs.
        %   int64 scalar
        id (1, 1) int64
        
        % NAME The name of the element. Empty for key and tag elements.
        %   character vector
        name (1, :) char
        
        % VALUE The encoded value of the element.
        %   uint8 vector
        value (1, :) uint8
    end
    methods
        function obj = ElementInfo(id, name, value)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
                obj.id = id;
                obj.name = name;
                obj.value = value;
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
            r = DataStormContract.ElementInfo();
            r.id = is.readLong();
            r.name = is.readString();
            r.value = is.readByteSeq();
        end
        function ice_write(os, v)
            if isempty(v)
                v = DataStormContract.ElementInfo();
            end
            os.writeLong(v.id);
            os.writeString(v.name);
            os.writeByteSeq(v.value);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = DataStormContract.ElementInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                DataStormContract.ElementInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
