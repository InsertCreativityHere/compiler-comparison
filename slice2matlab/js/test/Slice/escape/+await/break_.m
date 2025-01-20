
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef break_
    properties
        while_ int32
        clone char
        equals char
        hashCode char
        constructor char
    end
    methods
        function obj = break_(while_, clone, equals, hashCode, constructor)
            if nargin == 0
                obj.while_ = 0;
                obj.clone = '';
                obj.equals = '';
                obj.hashCode = '';
                obj.constructor = '';
            elseif ne(while_, IceInternal.NoInit.Instance)
                obj.while_ = while_;
                obj.clone = clone;
                obj.equals = equals;
                obj.hashCode = hashCode;
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
            r = await.break_(IceInternal.NoInit.Instance);
            r.while_ = is.readInt();
            r.clone = is.readString();
            r.equals = is.readString();
            r.hashCode = is.readString();
            r.constructor = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = await.break_();
            end
            os.writeInt(v.while_);
            os.writeString(v.clone);
            os.writeString(v.equals);
            os.writeString(v.hashCode);
            os.writeString(v.constructor);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = await.break_.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                await.break_.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
