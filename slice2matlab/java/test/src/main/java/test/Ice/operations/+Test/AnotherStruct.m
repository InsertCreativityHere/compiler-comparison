% AnotherStruct   Summary of AnotherStruct
%
% AnotherStruct Properties:
%   s

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef AnotherStruct
    properties
        s char
    end
    methods
        function obj = AnotherStruct(s)
            if nargin == 0
                obj.s = '';
            elseif ne(s, IceInternal.NoInit.Instance)
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
            r = Test.AnotherStruct(IceInternal.NoInit.Instance);
            r.s = is.readString();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.AnotherStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.AnotherStruct();
            end
            os.writeString(v.s);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.AnotherStruct.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
