classdef (Sealed) continue
    %CONTINUE
    %
    %   Creation
    %     Syntax
    %       obj = Test.and.continue()
    %       obj = Test.and.continue(def)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   continue Properties:
    %     def
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % DEF
        %   int32 scalar
        def (1, 1) int32
    end
    methods
        function obj = continue(def)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.def = def;
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
            r = Test.and.continue();
            r.def = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.and.continue();
            end
            os.writeInt(v.def);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.and.continue.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                Test.and.continue.ice_write(os, v);
            end
        end
    end
end
