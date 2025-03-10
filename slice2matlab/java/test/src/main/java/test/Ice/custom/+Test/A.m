
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef A
    properties
        i int32
    end
    methods
        function obj = A(i)
            if nargin == 0
                obj.i = 0;
            elseif ne(i, IceInternal.NoInit.Instance)
                obj.i = i;
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
            r = Test.A(IceInternal.NoInit.Instance);
            r.i = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.A();
            end
            os.writeInt(v.i);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.A.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                Test.A.ice_write(os, v);
            end
        end
    end
end
