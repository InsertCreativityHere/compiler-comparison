% Struct4   Summary of Struct4
%
% Struct4 Properties:
%   b

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef Struct4
    properties
        b logical
    end
    methods
        function obj = Struct4(b)
            if nargin == 0
                obj.b = false;
            elseif ne(b, IceInternal.NoInit.Instance)
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
            r = Test.Struct4(IceInternal.NoInit.Instance);
            r.b = is.readBool();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.Struct4.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Struct4();
            end
            os.writeBool(v.b);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(1);
                Test.Struct4.ice_write(os, v);
            end
        end
    end
end
