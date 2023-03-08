% Fixed   Summary of Fixed
%
% Fixed Properties:
%   s

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef Fixed
    properties
        s int16
    end
    methods
        function obj = Fixed(s)
            if nargin == 0
                obj.s = 0;
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
            r = Test.Fixed(IceInternal.NoInit.Instance);
            r.s = is.readShort();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.Fixed.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Fixed();
            end
            os.writeShort(v.s);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(2);
                Test.Fixed.ice_write(os, v);
            end
        end
    end
end
