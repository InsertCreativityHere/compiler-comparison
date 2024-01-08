% S   Summary of S
%
% S Properties:
%   str

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ObjectsTest.ice by slice2matlab version 3.7.10

classdef S
    properties
        str char
    end
    methods
        function obj = S(str)
            if nargin == 0
                obj.str = '';
            elseif ne(str, IceInternal.NoInit.Instance)
                obj.str = str;
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
            r.str = is.readString();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.S.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.S();
            end
            os.writeString(v.str);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.S.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
