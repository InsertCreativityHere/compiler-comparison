% PointD   Summary of PointD
%
% PointD Properties:
%   x
%   y
%   z

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from HashTest.ice by slice2matlab version 3.7.10

classdef PointD
    properties
        x double
        y double
        z double
    end
    methods
        function obj = PointD(x, y, z)
            if nargin == 0
                obj.x = 0;
                obj.y = 0;
                obj.z = 0;
            elseif ne(x, IceInternal.NoInit.Instance)
                obj.x = x;
                obj.y = y;
                obj.z = z;
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
            r = Test.PointD(IceInternal.NoInit.Instance);
            r.x = is.readDouble();
            r.y = is.readDouble();
            r.z = is.readDouble();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.PointD.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.PointD();
            end
            os.writeDouble(v.x);
            os.writeDouble(v.y);
            os.writeDouble(v.z);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(24);
                Test.PointD.ice_write(os, v);
            end
        end
    end
end
