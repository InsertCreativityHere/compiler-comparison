classdef (Sealed) VarStruct
    %VARSTRUCT
    %
    %   Creation
    %     Syntax
    %       obj = Test.VarStruct()
    %       obj = Test.VarStruct(m)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   VarStruct Properties:
    %     m
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % M
        %   character vector
        m (1, :) char
    end
    methods
        function obj = VarStruct(m)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.m = m;
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
            r = Test.VarStruct();
            r.m = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.VarStruct();
            end
            os.writeString(v.m);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.VarStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.VarStruct.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
