% G1   Summary of G1
%
% G1 Properties:
%   a

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef G1
    properties
        a char
    end
    methods
        function obj = G1(a)
            if nargin == 0
                obj.a = '';
            elseif ne(a, IceInternal.NoInit.Instance)
                obj.a = a;
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
            r = Test.G1(IceInternal.NoInit.Instance);
            r.a = is.readString();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.G1.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.G1();
            end
            os.writeString(v.a);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.G1.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
