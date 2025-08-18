classdef (Sealed) PointD
    %POINTD
    %
    %   Creation
    %     Syntax
    %       obj = Test.PointD()
    %       obj = Test.PointD(x, y, z)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   PointD Properties:
    %     x
    %     y
    %     z
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % X
        %   double scalar
        x (1, 1) double
        
        % Y
        %   double scalar
        y (1, 1) double
        
        % Z
        %   double scalar
        z (1, 1) double
    end
    methods
        function obj = PointD(x, y, z)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = Test.PointD();
            r.x = is.readDouble();
            r.y = is.readDouble();
            r.z = is.readDouble();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.PointD();
            end
            os.writeDouble(v.x);
            os.writeDouble(v.y);
            os.writeDouble(v.z);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.PointD.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(24);
                Test.PointD.ice_write(os, v);
            end
        end
    end
end
