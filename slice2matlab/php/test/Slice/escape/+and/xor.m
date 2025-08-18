classdef (Sealed) xor
    %XOR
    %
    %   Creation
    %     Syntax
    %       obj = and.xor()
    %       obj = and.xor(abstract, var)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   xor Properties:
    %     abstract
    %     var
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ABSTRACT
        %   int32 scalar
        abstract (1, 1) int32
        
        % VAR
        %   int32 scalar
        var (1, 1) int32 = and.require_once.value
    end
    methods
        function obj = xor(abstract, var)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.abstract = abstract;
                obj.var = var;
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
            r = and.xor();
            r.abstract = is.readInt();
            r.var = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = and.xor();
            end
            os.writeInt(v.abstract);
            os.writeInt(v.var);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = and.xor.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(8);
                and.xor.ice_write(os, v);
            end
        end
    end
end
