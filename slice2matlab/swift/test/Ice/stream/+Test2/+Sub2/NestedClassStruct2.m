% NestedClassStruct2   Summary of NestedClassStruct2
%
% NestedClassStruct2 Properties:
%   i

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef NestedClassStruct2
    properties
        i int32
    end
    methods
        function obj = NestedClassStruct2(i)
            if nargin == 0
                obj.i = 0;
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
            r = Test2.Sub2.NestedClassStruct2(IceInternal.NoInit.Instance);
            r.i = is.readInt();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test2.Sub2.NestedClassStruct2.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test2.Sub2.NestedClassStruct2();
            end
            os.writeInt(v.i);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                Test2.Sub2.NestedClassStruct2.ice_write(os, v);
            end
        end
    end
end
