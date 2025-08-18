classdef MyClass < Ice.Value
    %MYCLASS
    %
    %   Creation
    %     Syntax
    %       obj = Test.MyClass()
    %       obj = Test.MyClass(c, o, s, seq1, seq2, seq3, seq4, seq5, seq6, seq7, seq8, seq9, seq10, d)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   MyClass Properties:
    %     c
    %     o
    %     s
    %     seq1
    %     seq2
    %     seq3
    %     seq4
    %     seq5
    %     seq6
    %     seq7
    %     seq8
    %     seq9
    %     seq10
    %     d
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % C
        %   Test.MyClass scalar | empty array of Test.MyClass
        c {mustBeScalarOrEmpty} = Test.MyClass.empty
        
        % O
        %   Ice.Value scalar | empty array of Ice.Value
        o {mustBeScalarOrEmpty} = Ice.UnknownSlicedValue.empty
        
        % S
        %   Test.LargeStruct scalar
        s Test.LargeStruct {mustBeScalarOrEmpty} = Test.LargeStruct.empty
        
        % SEQ1
        %   logical vector
        seq1 (1, :) logical
        
        % SEQ2
        %   uint8 vector
        seq2 (1, :) uint8
        
        % SEQ3
        %   int16 vector
        seq3 (1, :) int16
        
        % SEQ4
        %   int32 vector
        seq4 (1, :) int32
        
        % SEQ5
        %   int64 vector
        seq5 (1, :) int64
        
        % SEQ6
        %   single vector
        seq6 (1, :) single
        
        % SEQ7
        %   double vector
        seq7 (1, :) double
        
        % SEQ8
        %   string vector
        seq8 (1, :) char
        
        % SEQ9
        %   Test.MyEnum vector
        seq9 (1, :) Test.MyEnum
        
        % SEQ10
        %   cell array
        seq10 (1, :) = {}
        
        % D
        %   string, cell) scalar
        d (1, 1) = configureDictionary('char', 'cell')
    end
    methods
        function obj = MyClass(c, o, s, seq1, seq2, seq3, seq4, seq5, seq6, seq7, seq8, seq9, seq10, d)
            if nargin > 0
                assert(nargin == 14, 'Invalid number of arguments');
                obj.c = c;
                obj.o = o;
                obj.s = s;
                obj.seq1 = seq1;
                obj.seq2 = seq2;
                obj.seq3 = seq3;
                obj.seq4 = seq4;
                obj.seq5 = seq5;
                obj.seq6 = seq6;
                obj.seq7 = seq7;
                obj.seq8 = seq8;
                obj.seq9 = seq9;
                obj.seq10 = seq10;
                obj.d = d;
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
            obj.seq10 = Test.MyClassS.convert(obj.seq10);
            obj.d = Test.StringMyClassD.convert(obj.d);
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::MyClass', -1, true);
            os.writeValue(obj.c);
            os.writeValue(obj.o);
            Test.LargeStruct.ice_write(os, obj.s);
            os.writeBoolSeq(obj.seq1);
            os.writeByteSeq(obj.seq2);
            os.writeShortSeq(obj.seq3);
            os.writeIntSeq(obj.seq4);
            os.writeLongSeq(obj.seq5);
            os.writeFloatSeq(obj.seq6);
            os.writeDoubleSeq(obj.seq7);
            os.writeStringSeq(obj.seq8);
            Test.MyEnumS.write(os, obj.seq9);
            Test.MyClassS.write(os, obj.seq10);
            Test.StringMyClassD.write(os, obj.d);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_c, 'Test.MyClass');
            is.readValue(@obj.iceSetProperty_o, 'Ice.Value');
            obj.s = Test.LargeStruct.ice_read(is);
            obj.seq1 = is.readBoolSeq();
            obj.seq2 = is.readByteSeq();
            obj.seq3 = is.readShortSeq();
            obj.seq4 = is.readIntSeq();
            obj.seq5 = is.readLongSeq();
            obj.seq6 = is.readFloatSeq();
            obj.seq7 = is.readDoubleSeq();
            obj.seq8 = is.readStringSeq();
            obj.seq9 = Test.MyEnumS.read(is);
            obj.seq10 = Test.MyClassS.read(is);
            obj.d = Test.StringMyClassD.read(is);
            is.endSlice();
        end
        function iceSetProperty_c(obj, v)
            obj.c = v;
        end
        function iceSetProperty_o(obj, v)
            obj.o = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::MyClass';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::MyClass'
    end
end
