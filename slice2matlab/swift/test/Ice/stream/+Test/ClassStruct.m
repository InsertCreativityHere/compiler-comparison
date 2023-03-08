% ClassStruct   Summary of ClassStruct
%
% ClassStruct Properties:
%   i

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef ClassStruct
    properties
        i int32
    end
    methods
        function obj = ClassStruct(i)
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
            r = Test.ClassStruct(IceInternal.NoInit.Instance);
            r.i = is.readInt();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.ClassStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.ClassStruct();
            end
            os.writeInt(v.i);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                Test.ClassStruct.ice_write(os, v);
            end
        end
    end
end
