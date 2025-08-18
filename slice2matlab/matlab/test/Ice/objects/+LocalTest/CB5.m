classdef CB5 < Ice.Value
    %CB5
    %
    %   Creation
    %     Syntax
    %       obj = LocalTest.CB5()
    %       obj = LocalTest.CB5(s1dict)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   CB5 Properties:
    %     s1dict
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S1DICT
        %   int32, LocalTest.S1) scalar
        s1dict (1, 1) = configureDictionary('int32', 'LocalTest.S1')
    end
    methods
        function obj = CB5(s1dict)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.s1dict = s1dict;
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
            obj.s1dict = LocalTest.S1Dict.convert(obj.s1dict);
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::LocalTest::CB5', -1, true);
            LocalTest.S1Dict.write(os, obj.s1dict);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s1dict = LocalTest.S1Dict.read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::LocalTest::CB5';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::LocalTest::CB5'
    end
end
