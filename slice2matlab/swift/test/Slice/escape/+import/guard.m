classdef (Sealed) guard
    %GUARD
    %
    %   Creation
    %     Syntax
    %       obj = import.guard()
    %       obj = import.guard(default)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   guard Properties:
    %     default
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % DEFAULT
        %   int32 scalar
        default (1, 1) int32
    end
    methods
        function obj = guard(default)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.default = default;
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
            r = import.guard();
            r.default = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = import.guard();
            end
            os.writeInt(v.default);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = import.guard.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                import.guard.ice_write(os, v);
            end
        end
    end
end
