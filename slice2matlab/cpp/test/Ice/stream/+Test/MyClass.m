
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MyClass < Ice.Value
    properties
        c
        o
        s Test.LargeStruct
        seq1
        seq2
        seq3
        seq4
        seq5
        seq6
        seq7
        seq8
        seq9
        seq10
        d containers.Map
    end
    methods
        function obj = MyClass(c, o, s, seq1, seq2, seq3, seq4, seq5, seq6, seq7, seq8, seq9, seq10, d)
            if nargin == 0
                obj.c = [];
                obj.o = [];
                obj.s = Test.LargeStruct();
                obj.seq1 = [];
                obj.seq2 = [];
                obj.seq3 = [];
                obj.seq4 = [];
                obj.seq5 = [];
                obj.seq6 = [];
                obj.seq7 = [];
                obj.seq8 = [];
                obj.seq9 = [];
                obj.seq10 = [];
                obj.d = containers.Map('KeyType', 'char', 'ValueType', 'any');
            elseif ne(c, IceInternal.NoInit.Instance)
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
    methods(Hidden=true)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            obj.seq10 = Test.MyClassS.convert(obj.seq10);
            obj.d = Test.StringMyClassD.convert(obj.d);
        end
    end
    methods(Access=protected)
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
            is.readValue(@obj.iceSetMember_c, 'Test.MyClass');
            is.readValue(@obj.iceSetMember_o, 'Ice.Value');
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
        function iceSetMember_c(obj, v)
            obj.c = v;
        end
        function iceSetMember_o(obj, v)
            obj.o = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MyClass';
        end
    end
end
