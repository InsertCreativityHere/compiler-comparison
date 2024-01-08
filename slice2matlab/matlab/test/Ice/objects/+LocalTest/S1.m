% S1   Summary of S1
%
% S1 Properties:
%   c1

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocalTest.ice by slice2matlab version 3.7.10

classdef S1
    properties
        c1
    end
    methods
        function obj = S1(c1)
            if nargin == 0
                obj.c1 = [];
            elseif ne(c1, IceInternal.NoInit.Instance)
                obj.c1 = c1;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.c1 = obj.c1.value;
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = LocalTest.S1(IceInternal.NoInit.Instance);
            c1_ = IceInternal.ValueHolder();
            r.c1 = c1_;
            is.readValue(@(v_) c1_.set(v_), 'LocalTest.C1');
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = LocalTest.S1.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = LocalTest.S1();
            end
            os.writeValue(v.c1);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                LocalTest.S1.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
