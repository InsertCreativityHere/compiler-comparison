
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef StructKey
    properties
        value int32
    end
    methods
        function obj = StructKey(value)
            if nargin == 0
                obj.value = 0;
            elseif ne(value, IceInternal.NoInit.Instance)
                obj.value = value;
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
            r = Test.StructKey(IceInternal.NoInit.Instance);
            r.value = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.StructKey();
            end
            os.writeInt(v.value);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.StructKey.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                Test.StructKey.ice_write(os, v);
            end
        end
    end
end
