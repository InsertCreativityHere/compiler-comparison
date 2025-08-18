classdef (Sealed) PointF
    %POINTF
    %
    %   Creation
    %     Syntax
    %       obj = Test.PointF()
    %       obj = Test.PointF(x, y, z)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   PointF Properties:
    %     x
    %     y
    %     z
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % X
        %   single scalar
        x (1, 1) single
        
        % Y
        %   single scalar
        y (1, 1) single
        
        % Z
        %   single scalar
        z (1, 1) single
    end
    methods
        function obj = PointF(x, y, z)
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
            r = Test.PointF();
            r.x = is.readFloat();
            r.y = is.readFloat();
            r.z = is.readFloat();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.PointF();
            end
            os.writeFloat(v.x);
            os.writeFloat(v.y);
            os.writeFloat(v.z);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.PointF.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(12);
                Test.PointF.ice_write(os, v);
            end
        end
    end
end
