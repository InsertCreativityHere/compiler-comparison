% Circle   Summary of Circle
%
% Circle Properties:
%   center
%   radius

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Circle.ice by slice2matlab version 3.7.10

classdef Circle
    properties
        center Demo.gx.Point
        radius int64
    end
    methods
        function obj = Circle(center, radius)
            if nargin == 0
                obj.center = Demo.gx.Point();
                obj.radius = 0;
            elseif ne(center, IceInternal.NoInit.Instance)
                obj.center = center;
                obj.radius = radius;
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
            r = Demo.gx.Circle(IceInternal.NoInit.Instance);
            r.center = Demo.gx.Point.ice_read(is);
            r.radius = is.readLong();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Demo.gx.Circle.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Demo.gx.Circle();
            end
            Demo.gx.Point.ice_write(os, v.center);
            os.writeLong(v.radius);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(16);
                Demo.gx.Circle.ice_write(os, v);
            end
        end
    end
end
