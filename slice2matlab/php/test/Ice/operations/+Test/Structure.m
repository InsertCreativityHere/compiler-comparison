
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Structure
    properties
        p
        e Test.MyEnum
        s Test.AnotherStruct
    end
    methods
        function obj = Structure(p, e, s)
            if nargin == 0
                obj.p = [];
                obj.e = Test.MyEnum.enum1;
                obj.s = Test.AnotherStruct();
            elseif ne(p, IceInternal.NoInit.Instance)
                obj.p = p;
                obj.e = e;
                obj.s = s;
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
            r = Test.Structure(IceInternal.NoInit.Instance);
            r.p = Test.MyClassPrx.ice_read(is);
            r.e = Test.MyEnum.ice_read(is);
            r.s = Test.AnotherStruct.ice_read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Structure();
            end
            os.writeProxy(v.p);
            Test.MyEnum.ice_write(os, v.e);
            Test.AnotherStruct.ice_write(os, v.s);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.Structure.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.Structure.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
