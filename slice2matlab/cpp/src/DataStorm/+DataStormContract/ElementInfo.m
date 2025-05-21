% ElementInfo   Summary of ElementInfo
%
% Provides metadata about an element, such as a key, filter, or tag.
%
% ElementInfo Properties:
%   id - The unique identifier for the element.
%   name - The name of the element.
%   value - The encoded value of the element.

% Copyright (c) ZeroC, Inc.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef ElementInfo
    properties
        % id - The unique identifier for the element.
        % Negative values indicate filter IDs; positive values indicate key or tag IDs.
        id int64
        % name - The name of the element. Empty for key and tag elements.
        name char
        % value - The encoded value of the element.
        value
    end
    methods
        function obj = ElementInfo(id, name, value)
            if nargin == 0
                obj.id = 0;
                obj.name = '';
                obj.value = [];
            elseif ne(id, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = DataStormContract.ElementInfo(IceInternal.NoInit.Instance);
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
