classdef (Sealed) Polyline
    %POLYLINE
    %
    %   Creation
    %     Syntax
    %       obj = Test.Polyline()
    %       obj = Test.Polyline(vertices)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Polyline Properties:
    %     vertices
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % VERTICES
        %   Test.Point vector
        vertices (1, :) Test.Point
    end
    methods
        function obj = Polyline(vertices)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.vertices = vertices;
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
            r = Test.Polyline();
            r.vertices = Test.Points.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Polyline();
            end
            Test.Points.write(os, v.vertices);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.Polyline.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.Polyline.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
