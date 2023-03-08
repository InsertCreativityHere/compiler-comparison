% ObjectInfo   Summary of ObjectInfo
%
% Information about an Ice object.
%
% ObjectInfo Properties:
%   proxy - The proxy of the object.
%   type - The type of the object.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.7.9

classdef ObjectInfo
    properties
        % proxy - The proxy of the object.
        proxy
        % type - The type of the object.
        type char
    end
    methods
        function obj = ObjectInfo(proxy, type)
            if nargin == 0
                obj.proxy = [];
                obj.type = '';
            elseif ne(proxy, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.ObjectInfo(IceInternal.NoInit.Instance);
            r.proxy = is.readProxy();
            r.type = is.readString();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.ObjectInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.ObjectInfo();
            end
            os.writeProxy(v.proxy);
            os.writeString(v.type);
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
