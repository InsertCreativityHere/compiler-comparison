
% Copyright (c) ZeroC, Inc.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef SD
    properties
        i int32
    end
    methods
        function obj = SD(i)
            if nargin == 0
                obj.i = 1;
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
            r = Test.SD(IceInternal.NoInit.Instance);
            r.i = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.SD();
            end
            os.writeInt(v.i);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.SD.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                Test.SD.ice_write(os, v);
            end
        end
    end
end
