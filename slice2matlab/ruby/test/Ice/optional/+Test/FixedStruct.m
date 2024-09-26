% FixedStruct   Summary of FixedStruct
%
% FixedStruct Properties:
%   m

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef FixedStruct
    properties
        m int32
    end
    methods
        function obj = FixedStruct(m)
            if nargin == 0
                obj.m = 0;
            elseif ne(m, IceInternal.NoInit.Instance)
                obj.m = m;
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
            r = Test.FixedStruct(IceInternal.NoInit.Instance);
            r.m = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.FixedStruct();
            end
            os.writeInt(v.m);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.FixedStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                Test.FixedStruct.ice_write(os, v);
            end
        end
    end
end
