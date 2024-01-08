% StructKey   Summary of StructKey
%
% StructKey Properties:
%   i
%   s

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef StructKey
    properties
        i int32
        s char
    end
    methods
        function obj = StructKey(i, s)
            if nargin == 0
                obj.i = 0;
                obj.s = '';
            elseif ne(i, IceInternal.NoInit.Instance)
                obj.i = i;
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
            r = Test.StructKey(IceInternal.NoInit.Instance);
            r.i = is.readInt();
            r.s = is.readString();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.StructKey.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.StructKey();
            end
            os.writeInt(v.i);
            os.writeString(v.s);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.StructKey.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
