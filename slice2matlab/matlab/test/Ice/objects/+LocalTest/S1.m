classdef (Sealed) S1
    %S1
    %
    %   Creation
    %     Syntax
    %       obj = LocalTest.S1()
    %       obj = LocalTest.S1(c1)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   S1 Properties:
    %     c1
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % C1
        %   LocalTest.C1 scalar | empty array of LocalTest.C1
        c1 {mustBeScalarOrEmpty} = LocalTest.C1.empty
    end
    methods
        function obj = S1(c1)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = LocalTest.S1();
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
