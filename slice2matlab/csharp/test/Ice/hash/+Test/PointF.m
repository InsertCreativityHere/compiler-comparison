% PointF   Summary of PointF
%
% PointF Properties:
%   x
%   y
%   z

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef PointF
    properties
        x single
        y single
        z single
    end
    methods
        function obj = PointF(x, y, z)
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
            r = Test.PointF(IceInternal.NoInit.Instance);
            r.x = is.readFloat();
            r.y = is.readFloat();
            r.z = is.readFloat();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.PointF.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.PointF();
            end
            os.writeFloat(v.x);
            os.writeFloat(v.y);
            os.writeFloat(v.z);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(12);
                Test.PointF.ice_write(os, v);
            end
        end
    end
end
