% Square   Summary of Square
%
% Square Properties:
%   p1
%   p2
%   p3
%   p4

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Square.ice by slice2matlab version 3.7.9

classdef Square
    properties
        p1 Demo.gx.Point
        p2 Demo.gx.Point
        p3 Demo.gx.Point
        p4 Demo.gx.Point
    end
    methods
        function obj = Square(p1, p2, p3, p4)
            if nargin == 0
                obj.p1 = Demo.gx.Point();
                obj.p2 = Demo.gx.Point();
                obj.p3 = Demo.gx.Point();
                obj.p4 = Demo.gx.Point();
            elseif ne(p1, IceInternal.NoInit.Instance)
                obj.p1 = p1;
                obj.p2 = p2;
                obj.p3 = p3;
                obj.p4 = p4;
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
            r = Demo.gx.Square(IceInternal.NoInit.Instance);
            r.p1 = Demo.gx.Point.ice_read(is);
            r.p2 = Demo.gx.Point.ice_read(is);
            r.p3 = Demo.gx.Point.ice_read(is);
            r.p4 = Demo.gx.Point.ice_read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Demo.gx.Square.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Demo.gx.Square();
            end
            Demo.gx.Point.ice_write(os, v.p1);
            Demo.gx.Point.ice_write(os, v.p2);
            Demo.gx.Point.ice_write(os, v.p3);
            Demo.gx.Point.ice_write(os, v.p4);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(32);
                Demo.gx.Square.ice_write(os, v);
            end
        end
    end
end
