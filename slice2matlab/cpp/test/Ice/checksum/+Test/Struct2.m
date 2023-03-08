% Struct2   Summary of Struct2
%
% Struct2 Properties:
%   str
%   b
%   f

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef Struct2
    properties
        str char
        b logical
        f single
    end
    methods
        function obj = Struct2(str, b, f)
            if nargin == 0
                obj.str = '';
                obj.b = false;
                obj.f = 0;
            elseif ne(str, IceInternal.NoInit.Instance)
                obj.str = str;
                obj.b = b;
                obj.f = f;
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
            r = Test.Struct2(IceInternal.NoInit.Instance);
            r.str = is.readString();
            r.b = is.readBool();
            r.f = is.readFloat();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.Struct2.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Struct2();
            end
            os.writeString(v.str);
            os.writeBool(v.b);
            os.writeFloat(v.f);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.Struct2.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
