% PropertyDescriptor   Summary of PropertyDescriptor
%
% Property descriptor.
%
% PropertyDescriptor Properties:
%   name - The name of the property.
%   value - The value of the property.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef PropertyDescriptor
    properties
        % name - The name of the property.
        name char
        % value - The value of the property.
        value char
    end
    methods
        function obj = PropertyDescriptor(name, value)
            if nargin == 0
                obj.name = '';
                obj.value = '';
            elseif ne(name, IceInternal.NoInit.Instance)
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
            r = IceGrid.PropertyDescriptor(IceInternal.NoInit.Instance);
            r.name = is.readString();
            r.value = is.readString();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.PropertyDescriptor.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.PropertyDescriptor();
            end
            os.writeString(v.name);
            os.writeString(v.value);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.PropertyDescriptor.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
