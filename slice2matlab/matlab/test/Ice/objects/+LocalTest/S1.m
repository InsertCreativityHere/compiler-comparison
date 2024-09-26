% S1   Summary of S1
%
% S1 Properties:
%   c1

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

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
        function ice_write(os, v)
            if isempty(v)
                v = LocalTest.S1();
            end
            os.writeValue(v.c1);
        end
    end
end
