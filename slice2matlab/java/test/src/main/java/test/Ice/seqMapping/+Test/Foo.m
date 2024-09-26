% Foo   Summary of Foo
%
% Foo Properties:
%   SLmem
%   SLSmem

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Foo
    properties
        SLmem
        SLSmem
    end
    methods
        function obj = Foo(SLmem, SLSmem)
            if nargin == 0
                obj.SLmem = [];
                obj.SLSmem = [];
            elseif ne(SLmem, IceInternal.NoInit.Instance)
                obj.SLmem = SLmem;
                obj.SLSmem = SLSmem;
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
            r = Test.Foo(IceInternal.NoInit.Instance);
            r.SLmem = is.readByteSeq();
            r.SLSmem = Test.SLS.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Foo();
            end
            os.writeByteSeq(v.SLmem);
            Test.SLS.write(os, v.SLSmem);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.Foo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.Foo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
