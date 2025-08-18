classdef CB4 < Ice.Value
    %CB4
    %
    %   Creation
    %     Syntax
    %       obj = LocalTest.CB4()
    %       obj = LocalTest.CB4(c1dict)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   CB4 Properties:
    %     c1dict
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % C1DICT
        %   int32, cell) scalar
        c1dict (1, 1) = configureDictionary('int32', 'cell')
    end
    methods
        function obj = CB4(c1dict)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.c1dict = c1dict;
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
            obj.c1dict = LocalTest.C1Dict.convert(obj.c1dict);
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::LocalTest::CB4', -1, true);
            LocalTest.C1Dict.write(os, obj.c1dict);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.c1dict = LocalTest.C1Dict.read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::LocalTest::CB4';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::LocalTest::CB4'
    end
end
