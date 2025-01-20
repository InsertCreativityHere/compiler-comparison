
% Copyright (c) ZeroC, Inc.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef G2
    properties
        a int64
    end
    methods
        function obj = G2(a)
            if nargin == 0
                obj.a = 0;
            elseif ne(a, IceInternal.NoInit.Instance)
                obj.a = a;
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
            r = Test.G2(IceInternal.NoInit.Instance);
            r.a = is.readLong();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.G2();
            end
            os.writeLong(v.a);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.G2.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(8);
                Test.G2.ice_write(os, v);
            end
        end
    end
end
