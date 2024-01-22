% Point   Summary of Point
%
% Point Properties:
%   x
%   y

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Point
    properties
        x int32
        y int32
    end
    methods
        function obj = Point(x, y)
            if nargin == 0
                obj.x = 0;
                obj.y = 0;
            elseif ne(x, IceInternal.NoInit.Instance)
                obj.x = x;
                obj.y = y;
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
            r = Test.Point(IceInternal.NoInit.Instance);
            r.x = is.readInt();
            r.y = is.readInt();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.Point.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Point();
            end
            os.writeInt(v.x);
            os.writeInt(v.y);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(8);
                Test.Point.ice_write(os, v);
            end
        end
    end
end
