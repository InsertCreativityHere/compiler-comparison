% Color   Summary of Color
%
% Color Properties:
%   r
%   g
%   b
%   a

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef Color
    properties
        r int32
        g int32
        b int32
        a int32
    end
    methods
        function obj = Color(r, g, b, a)
            if nargin == 0
                obj.r = 0;
                obj.g = 0;
                obj.b = 0;
                obj.a = 0;
            elseif ne(r, IceInternal.NoInit.Instance)
                obj.r = r;
                obj.g = g;
                obj.b = b;
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
            r = Test.Color(IceInternal.NoInit.Instance);
            r.r = is.readInt();
            r.g = is.readInt();
            r.b = is.readInt();
            r.a = is.readInt();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.Color.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Color();
            end
            os.writeInt(v.r);
            os.writeInt(v.g);
            os.writeInt(v.b);
            os.writeInt(v.a);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(16);
                Test.Color.ice_write(os, v);
            end
        end
    end
end
