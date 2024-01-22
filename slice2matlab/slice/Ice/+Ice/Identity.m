% Identity   Summary of Identity
%
% The identity of an Ice object. In a proxy, an empty Identity.name denotes a nil proxy. An identity with an
% empty Identity.name and a non-empty Identity.category is illegal. You cannot add a servant with an
% empty name to the Active Servant Map.
%
% Identity Properties:
%   name - The name of the Ice object.
%   category - The Ice object category.
%
% See also ServantLocator, ObjectAdapter.addServantLocator

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Identity.ice by slice2matlab version 3.8.0-alpha.0

classdef Identity
    properties
        % name - The name of the Ice object.
        name char
        % category - The Ice object category.
        category char
    end
    methods
        function obj = Identity(name, category)
            if nargin == 0
                obj.name = '';
                obj.category = '';
            elseif ne(name, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = Ice.Identity(IceInternal.NoInit.Instance);
            r.name = is.readString();
            r.category = is.readString();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Ice.Identity.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Ice.Identity();
            end
            os.writeString(v.name);
            os.writeString(v.category);
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
