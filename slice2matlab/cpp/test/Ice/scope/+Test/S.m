
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef S
    properties
        v int32
    end
    methods
        function obj = S(v)
            if nargin == 0
                obj.v = 0;
            elseif ne(v, IceInternal.NoInit.Instance)
                obj.v = v;
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
            r.v = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.S();
            end
            os.writeInt(v.v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.S.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                Test.S.ice_write(os, v);
            end
        end
    end
end
