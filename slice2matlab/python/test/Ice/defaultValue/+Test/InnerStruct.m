classdef (Sealed) InnerStruct
    %INNERSTRUCT
    %
    %   Creation
    %     Syntax
    %       obj = Test.InnerStruct()
    %       obj = Test.InnerStruct(a)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   InnerStruct Properties:
    %     a
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % A
        %   int32 scalar
        a (1, 1) int32
    end
    methods
        function obj = InnerStruct(a)
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
            r = Test.InnerStruct();
            r.a = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.InnerStruct();
            end
            os.writeInt(v.a);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.InnerStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                Test.InnerStruct.ice_write(os, v);
            end
        end
    end
end
