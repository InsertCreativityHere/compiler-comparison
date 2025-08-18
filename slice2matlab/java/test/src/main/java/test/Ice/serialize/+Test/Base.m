classdef Base < Ice.Value
    %BASE
    %
    %   Creation
    %     Syntax
    %       obj = Test.Base()
    %       obj = Test.Base(b, o, s, seq1, seq2, seq3, seq4, d1, d2, d3, d4)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Base Properties:
    %     b
    %     o
    %     s
    %     seq1
    %     seq2
    %     seq3
    %     seq4
    %     d1
    %     d2
    %     d3
    %     d4
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % B
        %   Test.Base scalar | empty array of Test.Base
        b {mustBeScalarOrEmpty} = Test.Base.empty
        
        % O
        %   Ice.Value scalar | empty array of Ice.Value
        o {mustBeScalarOrEmpty} = Ice.UnknownSlicedValue.empty
        
        % S
        %   Test.Struct1 scalar
        s Test.Struct1 {mustBeScalarOrEmpty} = Test.Struct1.empty
        
        % SEQ1
        %   uint8 vector
        seq1 (1, :) uint8
        
        % SEQ2
        %   int32 vector
        seq2 (1, :) int32
        
        % SEQ3
        %   Test.MyEnum vector
        seq3 (1, :) Test.MyEnum
        
        % SEQ4
        %   cell array
        seq4 (1, :) = {}
        
        % D1
        %   uint8, logical) scalar
        d1 (1, 1) dictionary = configureDictionary('uint8', 'logical')
        
        % D2
        %   int16, int32) scalar
        d2 (1, 1) dictionary = configureDictionary('int16', 'int32')
        
        % D3
        %   string, Test.MyEnum) scalar
        d3 (1, 1) dictionary = configureDictionary('char', 'Test.MyEnum')
        
        % D4
        %   string, cell) scalar
        d4 (1, 1) = configureDictionary('char', 'cell')
    end
    methods
        function obj = Base(b, o, s, seq1, seq2, seq3, seq4, d1, d2, d3, d4)
            if nargin > 0
                assert(nargin == 11, 'Invalid number of arguments');
                obj.b = b;
                obj.o = o;
                obj.s = s;
                obj.seq1 = seq1;
                obj.seq2 = seq2;
                obj.seq3 = seq3;
                obj.seq4 = seq4;
                obj.d1 = d1;
                obj.d2 = d2;
                obj.d3 = d3;
                obj.d4 = d4;
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
            obj.seq4 = Test.BaseS.convert(obj.seq4);
            obj.d4 = Test.StringBaseD.convert(obj.d4);
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Base', -1, true);
            os.writeValue(obj.b);
            os.writeValue(obj.o);
            Test.Struct1.ice_write(os, obj.s);
            os.writeByteSeq(obj.seq1);
            os.writeIntSeq(obj.seq2);
            Test.MyEnumS.write(os, obj.seq3);
            Test.BaseS.write(os, obj.seq4);
            Test.ByteBoolD.write(os, obj.d1);
            Test.ShortIntD.write(os, obj.d2);
            Test.StringMyEnumD.write(os, obj.d3);
            Test.StringBaseD.write(os, obj.d4);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_b, 'Test.Base');
            is.readValue(@obj.iceSetProperty_o, 'Ice.Value');
            obj.s = Test.Struct1.ice_read(is);
            obj.seq1 = is.readByteSeq();
            obj.seq2 = is.readIntSeq();
            obj.seq3 = Test.MyEnumS.read(is);
            obj.seq4 = Test.BaseS.read(is);
            obj.d1 = Test.ByteBoolD.read(is);
            obj.d2 = Test.ShortIntD.read(is);
            obj.d3 = Test.StringMyEnumD.read(is);
            obj.d4 = Test.StringBaseD.read(is);
            is.endSlice();
        end
        function iceSetProperty_b(obj, v)
            obj.b = v;
        end
        function iceSetProperty_o(obj, v)
            obj.o = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Base';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Base'
    end
end
