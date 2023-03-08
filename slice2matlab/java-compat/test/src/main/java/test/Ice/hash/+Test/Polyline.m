% Polyline   Summary of Polyline
%
% Polyline Properties:
%   vertices

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef Polyline
    properties
        vertices
    end
    methods
        function obj = Polyline(vertices)
            if nargin == 0
                obj.vertices = [];
            elseif ne(vertices, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = Test.Polyline(IceInternal.NoInit.Instance);
            r.vertices = Test.Points.read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.Polyline.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Polyline();
            end
            Test.Points.write(os, v.vertices);
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
