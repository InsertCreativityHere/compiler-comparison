classdef (Sealed) ClassStruct
    %CLASSSTRUCT
    %
    %   Creation
    %     Syntax
    %       obj = Test.ClassStruct()
    %       obj = Test.ClassStruct(i)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ClassStruct Properties:
    %     i
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % I
        %   int32 scalar
        i (1, 1) int32
    end
    methods
        function obj = ClassStruct(i)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.i = i;
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
            r = Test.ClassStruct();
            r.i = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.ClassStruct();
            end
            os.writeInt(v.i);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.ClassStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                Test.ClassStruct.ice_write(os, v);
            end
        end
    end
end
