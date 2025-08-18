classdef CB1 < Ice.Value
    %CB1
    %
    %   Creation
    %     Syntax
    %       obj = LocalTest.CB1()
    %       obj = LocalTest.CB1(s1)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   CB1 Properties:
    %     s1
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S1
        %   LocalTest.S1 scalar
        s1 {mustBeScalarOrEmpty} = LocalTest.S1.empty
    end
    methods
        function obj = CB1(s1)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.s1 = s1;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Hidden)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            obj.s1 = obj.s1.ice_convert();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::LocalTest::CB1', -1, true);
            LocalTest.S1.ice_write(os, obj.s1);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s1 = LocalTest.S1.ice_read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::LocalTest::CB1';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::LocalTest::CB1'
    end
end
