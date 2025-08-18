classdef (Sealed) and
    %AND
    %
    %   Creation
    %     Syntax
    %       obj = BEGIN.and()
    %       obj = BEGIN.and(begin)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   and Properties:
    %     begin
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % BEGIN
        %   int32 scalar
        begin (1, 1) int32
    end
    methods
        function obj = and(begin)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.begin = begin;
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
            r = BEGIN.and();
            r.begin = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = BEGIN.and();
            end
            os.writeInt(v.begin);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = BEGIN.and.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                BEGIN.and.ice_write(os, v);
            end
        end
    end
end
