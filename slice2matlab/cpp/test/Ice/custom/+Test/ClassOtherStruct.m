% ClassOtherStruct   Summary of ClassOtherStruct
%
% ClassOtherStruct Properties:
%   x

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef ClassOtherStruct
    properties
        x int32
    end
    methods
        function obj = ClassOtherStruct(x)
            if nargin == 0
                obj.x = 0;
            elseif ne(x, IceInternal.NoInit.Instance)
                obj.x = x;
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
            r = Test.ClassOtherStruct(IceInternal.NoInit.Instance);
            r.x = is.readInt();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.ClassOtherStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.ClassOtherStruct();
            end
            os.writeInt(v.x);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                Test.ClassOtherStruct.ice_write(os, v);
            end
        end
    end
end
