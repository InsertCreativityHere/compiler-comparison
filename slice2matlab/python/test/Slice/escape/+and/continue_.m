
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef continue_
    properties
        def int32
    end
    methods
        function obj = continue_(def)
            if nargin == 0
                obj.def = 0;
            elseif ne(def, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = and.continue_(IceInternal.NoInit.Instance);
            r.def = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = and.continue_();
            end
            os.writeInt(v.def);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = and.continue_.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                and.continue_.ice_write(os, v);
            end
        end
    end
end
