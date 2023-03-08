% Struct5   Summary of Struct5
%
% Struct5 Properties:
%   str
%   b

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Types.ice by slice2matlab version 3.7.9

classdef Struct5
    properties
        str char
        b logical
    end
    methods
        function obj = Struct5(str, b)
            if nargin == 0
                obj.str = '';
                obj.b = false;
            elseif ne(str, IceInternal.NoInit.Instance)
                obj.str = str;
                obj.b = b;
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
            r = Test.Struct5(IceInternal.NoInit.Instance);
            r.str = is.readString();
            r.b = is.readBool();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.Struct5.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Struct5();
            end
            os.writeString(v.str);
            os.writeBool(v.b);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.Struct5.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
