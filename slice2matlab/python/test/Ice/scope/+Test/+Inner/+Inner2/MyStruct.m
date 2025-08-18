classdef (Sealed) MyStruct
    %MYSTRUCT
    %
    %   Creation
    %     Syntax
    %       obj = Test.Inner.Inner2.MyStruct()
    %       obj = Test.Inner.Inner2.MyStruct(v)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   MyStruct Properties:
    %     v
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % V
        %   int32 scalar
        v (1, 1) int32
    end
    methods
        function obj = MyStruct(v)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.v = v;
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
            r = Test.Inner.Inner2.MyStruct();
            r.v = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Inner.Inner2.MyStruct();
            end
            os.writeInt(v.v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.Inner.Inner2.MyStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                Test.Inner.Inner2.MyStruct.ice_write(os, v);
            end
        end
    end
end
