classdef CB8 < Ice.Value
    %CB8
    %
    %   Creation
    %     Syntax
    %       obj = LocalTest.CB8()
    %       obj = LocalTest.CB8(s1, c1seq, s1dict)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   CB8 Properties:
    %     s1
    %     c1seq
    %     s1dict
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S1
        %   LocalTest.S1 scalar
        s1 {mustBeScalarOrEmpty} = LocalTest.S1.empty
        
        % C1SEQ
        %   cell array
        c1seq (1, :) = {}
        
        % S1DICT
        %   int32, LocalTest.S1) scalar
        s1dict (1, 1) = configureDictionary('int32', 'LocalTest.S1')
    end
    methods
        function obj = CB8(s1, c1seq, s1dict)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
                obj.s1 = s1;
                obj.c1seq = c1seq;
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
            obj.s1 = obj.s1.ice_convert();
            obj.c1seq = LocalTest.C1Seq.convert(obj.c1seq);
            obj.s1dict = LocalTest.S1Dict.convert(obj.s1dict);
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::LocalTest::CB8', -1, true);
            LocalTest.S1.ice_write(os, obj.s1);
            LocalTest.C1Seq.write(os, obj.c1seq);
            LocalTest.S1Dict.write(os, obj.s1dict);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s1 = LocalTest.S1.ice_read(is);
            obj.c1seq = LocalTest.C1Seq.read(is);
            obj.s1dict = LocalTest.S1Dict.read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::LocalTest::CB8';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::LocalTest::CB8'
    end
end
