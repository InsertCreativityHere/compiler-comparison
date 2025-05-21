
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TEstNv
    properties
        d containers.Map
        s
    end
    methods
        function obj = TEstNv(d, s)
            if nargin == 0
                obj.d = containers.Map('KeyType', 'int32', 'ValueType', 'int32');
                obj.s = [];
            elseif ne(d, IceInternal.NoInit.Instance)
                obj.d = d;
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
            r = Test.TEstNv(IceInternal.NoInit.Instance);
            r.d = Test.NV.read(is);
            r.s = is.readIntSeq();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.TEstNv();
            end
            Test.NV.write(os, v.d);
            os.writeIntSeq(v.s);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.TEstNv.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.TEstNv.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
