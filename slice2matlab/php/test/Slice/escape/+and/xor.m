
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef xor
    properties
        abstract int32
        var int32
    end
    methods
        function obj = xor(abstract, var)
            if nargin == 0
                obj.abstract = 0;
                obj.var = and.require_once.value;
            elseif ne(abstract, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = and.xor(IceInternal.NoInit.Instance);
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
