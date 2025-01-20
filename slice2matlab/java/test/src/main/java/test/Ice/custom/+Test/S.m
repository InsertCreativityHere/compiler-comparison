
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef S
    properties
        en Test.E
    end
    methods
        function obj = S(en)
            if nargin == 0
                obj.en = Test.E.E1;
            elseif ne(en, IceInternal.NoInit.Instance)
                obj.en = en;
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
            r = Test.S(IceInternal.NoInit.Instance);
            r.en = Test.E.ice_read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.S();
            end
            Test.E.ice_write(os, v.en);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.S.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.S.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
