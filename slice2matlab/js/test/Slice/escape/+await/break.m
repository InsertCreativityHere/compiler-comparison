
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef break
    properties
        while int32
        constructor char
    end
    methods
        function obj = break(while, constructor)
            if nargin == 0
                obj.while = 0;
                obj.constructor = '';
            elseif ne(while, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = await.break(IceInternal.NoInit.Instance);
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
