classdef (Sealed) MyOtherStruct
    %MYOTHERSTRUCT
    %
    %   Creation
    %     Syntax
    %       obj = Test.MyOtherStruct()
    %       obj = Test.MyOtherStruct(s)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   MyOtherStruct Properties:
    %     s
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S
        %   character vector
        s (1, :) char
    end
    methods
        function obj = MyOtherStruct(s)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.s = s;
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
            r = Test.MyOtherStruct();
            r.s = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.MyOtherStruct();
            end
            os.writeString(v.s);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.MyOtherStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.MyOtherStruct.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
