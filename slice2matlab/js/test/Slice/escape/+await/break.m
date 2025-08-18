classdef (Sealed) break
    %BREAK
    %
    %   Creation
    %     Syntax
    %       obj = await.break()
    %       obj = await.break(while, constructor)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   break Properties:
    %     while
    %     constructor
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % WHILE
        %   int32 scalar
        while (1, 1) int32
        
        % CONSTRUCTOR
        %   character vector
        constructor (1, :) char
    end
    methods
        function obj = break(while, constructor)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.while = while;
                obj.constructor = constructor;
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
            r = await.break();
            r.while = is.readInt();
            r.constructor = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = await.break();
            end
            os.writeInt(v.while);
            os.writeString(v.constructor);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = await.break.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                await.break.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
