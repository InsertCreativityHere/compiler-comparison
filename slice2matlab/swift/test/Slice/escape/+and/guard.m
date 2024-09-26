% guard   Summary of guard
%
% guard Properties:
%   default

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef guard
    properties
        default int32
    end
    methods
        function obj = guard(default)
            if nargin == 0
                obj.default = 0;
            elseif ne(default, IceInternal.NoInit.Instance)
                obj.default = default;
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
            r = and.guard(IceInternal.NoInit.Instance);
            r.default = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = and.guard();
            end
            os.writeInt(v.default);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = and.guard.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                and.guard.ice_write(os, v);
            end
        end
    end
end
