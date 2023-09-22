% ColorPalette   Summary of ColorPalette
%
% ColorPalette Properties:
%   colors

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef ColorPalette
    properties
        colors containers.Map
    end
    methods
        function obj = ColorPalette(colors)
            if nargin == 0
                obj.colors = containers.Map('KeyType', 'int32', 'ValueType', 'any');
            elseif ne(colors, IceInternal.NoInit.Instance)
                obj.colors = colors;
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
            r = Test.ColorPalette(IceInternal.NoInit.Instance);
            r.colors = Test.StringColorMap.read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.ColorPalette.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.ColorPalette();
            end
            Test.StringColorMap.write(os, v.colors);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.ColorPalette.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
