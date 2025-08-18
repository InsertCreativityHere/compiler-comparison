classdef (Sealed) break
    %BREAK
    %
    %   Creation
    %     Syntax
    %       obj = abstract.break()
    %       obj = abstract.break(case)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   break Properties:
    %     case
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % CASE
        %   int32 scalar
        case (1, 1) int32
    end
    methods
        function obj = break(case)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.case = case;
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
            r = abstract.break();
            r.case = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = abstract.break();
            end
            os.writeInt(v.case);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = abstract.break.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                abstract.break.ice_write(os, v);
            end
        end
    end
end
