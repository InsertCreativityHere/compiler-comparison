% SS3   Summary of SS3
%
% SS3 Properties:
%   c1
%   c2

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef SS3
    properties
        c1
        c2
    end
    methods
        function obj = SS3(c1, c2)
            if nargin == 0
                obj.c1 = [];
                obj.c2 = [];
            elseif ne(c1, IceInternal.NoInit.Instance)
                obj.c1 = c1;
                obj.c2 = c2;
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
            obj.c2 = obj.c2.value;
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.SS3(IceInternal.NoInit.Instance);
            c1_ = IceInternal.ValueHolder();
            r.c1 = c1_;
            is.readValue(@(v_) c1_.set(v_), 'Test.SS1');
            c2_ = IceInternal.ValueHolder();
            r.c2 = c2_;
            is.readValue(@(v_) c2_.set(v_), 'Test.SS2');
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.SS3();
            end
            os.writeValue(v.c1);
            os.writeValue(v.c2);
        end
    end
end
