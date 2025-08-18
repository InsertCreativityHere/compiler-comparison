classdef (Sealed) ColorPalette
    %COLORPALETTE
    %
    %   Creation
    %     Syntax
    %       obj = Test.ColorPalette()
    %       obj = Test.ColorPalette(colors)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ColorPalette Properties:
    %     colors
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % COLORS
        %   int32, Test.Color) scalar
        colors (1, 1) dictionary = configureDictionary('int32', 'Test.Color')
    end
    methods
        function obj = ColorPalette(colors)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = Test.ColorPalette();
            r.colors = Test.StringColorMap.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.ColorPalette();
            end
            Test.StringColorMap.write(os, v.colors);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.ColorPalette.ice_read(is);
            else
                r = Ice.Unset;
            end
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
