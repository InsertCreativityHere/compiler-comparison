classdef (Sealed) InnerStruct2
    %INNERSTRUCT2
    %
    %   Creation
    %     Syntax
    %       obj = Test.InnerStruct2()
    %       obj = Test.InnerStruct2(a)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   InnerStruct2 Properties:
    %     a
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % A
        %   character vector
        a (1, :) char
    end
    methods
        function obj = InnerStruct2(a)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
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
            r = Test.InnerStruct2();
            r.a = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.InnerStruct2();
            end
            os.writeString(v.a);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.InnerStruct2.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.InnerStruct2.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
