classdef (Sealed) SS3
    %SS3
    %
    %   Creation
    %     Syntax
    %       obj = Test.SS3()
    %       obj = Test.SS3(c1, c2)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   SS3 Properties:
    %     c1
    %     c2
    %
    %   Generated from ServerPrivateAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % C1
        %   Test.SS1 scalar | empty array of Test.SS1
        c1 {mustBeScalarOrEmpty} = Test.SS1.empty
        
        % C2
        %   Test.SS2 scalar | empty array of Test.SS2
        c2 {mustBeScalarOrEmpty} = Test.SS2.empty
    end
    methods
        function obj = SS3(c1, c2)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = Test.SS3();
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
