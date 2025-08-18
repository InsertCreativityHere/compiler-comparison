classdef C2 < Ice.Value
    %C2
    %
    %   Creation
    %     Syntax
    %       obj = Test.C2()
    %       obj = Test.C2(e1, s1, c1, myOtherStructSeq, myOtherStructMap)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   C2 Properties:
    %     e1
    %     s1
    %     c1
    %     myOtherStructSeq
    %     myOtherStructMap
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % E1
        %   Test.MyEnum scalar
        e1 (1, 1) Test.MyEnum
        
        % S1
        %   Test.MyOtherStruct scalar
        s1 Test.MyOtherStruct {mustBeScalarOrEmpty} = Test.MyOtherStruct.empty
        
        % C1
        %   Test.MyOtherClass scalar | empty array of Test.MyOtherClass
        c1 {mustBeScalarOrEmpty} = Test.MyOtherClass.empty
        
        % MYOTHERSTRUCTSEQ
        %   Test.MyOtherStruct vector
        myOtherStructSeq (1, :) Test.MyOtherStruct
        
        % MYOTHERSTRUCTMAP
        %   string, Test.MyOtherStruct) scalar
        myOtherStructMap (1, 1) dictionary = configureDictionary('char', 'Test.MyOtherStruct')
    end
    methods
        function obj = C2(e1, s1, c1, myOtherStructSeq, myOtherStructMap)
            if nargin > 0
                assert(nargin == 5, 'Invalid number of arguments');
                obj.e1 = e1;
                obj.s1 = s1;
                obj.c1 = c1;
                obj.myOtherStructSeq = myOtherStructSeq;
                obj.myOtherStructMap = myOtherStructMap;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::C2', -1, true);
            Test.MyEnum.ice_write(os, obj.e1);
            Test.MyOtherStruct.ice_write(os, obj.s1);
            os.writeValue(obj.c1);
            Test.MyOtherStructSeq.write(os, obj.myOtherStructSeq);
            Test.MyOtherStructMap.write(os, obj.myOtherStructMap);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.e1 = Test.MyEnum.ice_read(is);
            obj.s1 = Test.MyOtherStruct.ice_read(is);
            is.readValue(@obj.iceSetProperty_c1, 'Test.MyOtherClass');
            obj.myOtherStructSeq = Test.MyOtherStructSeq.read(is);
            obj.myOtherStructMap = Test.MyOtherStructMap.read(is);
            is.endSlice();
        end
        function iceSetProperty_c1(obj, v)
            obj.c1 = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::C2';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::C2'
    end
end
