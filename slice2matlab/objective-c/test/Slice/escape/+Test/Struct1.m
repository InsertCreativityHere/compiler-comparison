% Struct1   Summary of Struct1
%
% Struct1 Properties:
%   isa
%   retainCount

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Inherit.ice by slice2matlab version 3.7.9

classdef Struct1
    properties
        isa int32
        retainCount int32
    end
    methods
        function obj = Struct1(isa, retainCount)
            if nargin == 0
                obj.isa = 0;
                obj.retainCount = 0;
            elseif ne(isa, IceInternal.NoInit.Instance)
                obj.isa = isa;
                obj.retainCount = retainCount;
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
            r = Test.Struct1(IceInternal.NoInit.Instance);
            r.isa = is.readInt();
            r.retainCount = is.readInt();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.Struct1.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Struct1();
            end
            os.writeInt(v.isa);
            os.writeInt(v.retainCount);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(8);
                Test.Struct1.ice_write(os, v);
            end
        end
    end
end
