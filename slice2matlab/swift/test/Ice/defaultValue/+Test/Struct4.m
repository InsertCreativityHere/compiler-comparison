
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Struct4
    properties
        foo char
        bar char
    end
    methods
        function obj = Struct4(foo, bar)
            if nargin == 0
                obj.foo = sprintf('foo');
                obj.bar = '';
            elseif ne(foo, IceInternal.NoInit.Instance)
                obj.foo = foo;
                obj.bar = bar;
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
            r = Test.Struct4(IceInternal.NoInit.Instance);
            r.foo = is.readString();
            r.bar = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Struct4();
            end
            os.writeString(v.foo);
            os.writeString(v.bar);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.Struct4.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.Struct4.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
