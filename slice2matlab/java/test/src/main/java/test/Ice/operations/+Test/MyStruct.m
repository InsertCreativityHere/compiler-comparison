classdef (Sealed) MyStruct
    %MYSTRUCT
    %
    %   Creation
    %     Syntax
    %       obj = Test.MyStruct()
    %       obj = Test.MyStruct(i, j)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   MyStruct Properties:
    %     i
    %     j
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % I
        %   int32 scalar
        i (1, 1) int32
        
        % J
        %   int32 scalar
        j (1, 1) int32
    end
    methods
        function obj = MyStruct(i, j)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.i = i;
                obj.j = j;
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
            r = Test.MyStruct();
            r.i = is.readInt();
            r.j = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.MyStruct();
            end
            os.writeInt(v.i);
            os.writeInt(v.j);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.MyStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(8);
                Test.MyStruct.ice_write(os, v);
            end
        end
    end
end
