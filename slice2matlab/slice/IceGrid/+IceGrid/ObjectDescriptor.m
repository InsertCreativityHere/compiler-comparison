% ObjectDescriptor   Summary of ObjectDescriptor
%
% An Ice object descriptor.
%
% ObjectDescriptor Properties:
%   id - The identity of the object.
%   type - The object type.
%   proxyOptions - Proxy options to use with the proxy created for this Ice object.

% Copyright (c) ZeroC, Inc.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef ObjectDescriptor
    properties
        % id - The identity of the object.
        id Ice.Identity
        % type - The object type.
        type char
        % proxyOptions - Proxy options to use with the proxy created for this Ice object. If empty, the proxy will be created with
        % the proxy options specified on the object adapter or replica group.
        proxyOptions char
    end
    methods
        function obj = ObjectDescriptor(id, type, proxyOptions)
            if nargin == 0
                obj.id = Ice.Identity();
                obj.type = '';
                obj.proxyOptions = '';
            elseif ne(id, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.ObjectDescriptor(IceInternal.NoInit.Instance);
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
