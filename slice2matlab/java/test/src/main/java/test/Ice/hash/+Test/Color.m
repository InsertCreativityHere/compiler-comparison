classdef (Sealed) Color
    %COLOR
    %
    %   Creation
    %     Syntax
    %       obj = Test.Color()
    %       obj = Test.Color(r, g, b, a)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Color Properties:
    %     r
    %     g
    %     b
    %     a
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % R
        %   int32 scalar
        r (1, 1) int32
        
        % G
        %   int32 scalar
        g (1, 1) int32
        
        % B
        %   int32 scalar
        b (1, 1) int32
        
        % A
        %   int32 scalar
        a (1, 1) int32
    end
    methods
        function obj = Color(r, g, b, a)
            if nargin > 0
                assert(nargin == 4, 'Invalid number of arguments');
                obj.r = r;
                obj.g = g;
                obj.b = b;
                obj.a = a;
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
            r = Test.Color();
            r.r = is.readInt();
            r.g = is.readInt();
            r.b = is.readInt();
            r.a = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Color();
            end
            os.writeInt(v.r);
            os.writeInt(v.g);
            os.writeInt(v.b);
            os.writeInt(v.a);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.Color.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(16);
                Test.Color.ice_write(os, v);
            end
        end
    end
end
