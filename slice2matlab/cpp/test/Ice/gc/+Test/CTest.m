% CTest   Summary of CTest
%
% CTest Properties:
%   theCSeq
%   theSSeq
%   theC2DictSeq
%   theCSeqSeq
%   theS
%   theA
%   theS2
%   theB
%   theCDict
%   theCSeqDict
%   theSDict
%   theCDictDict

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef CTest < Ice.Value
    properties
        theCSeq
        theSSeq
        theC2DictSeq
        theCSeqSeq
        theS Test.S
        theA Test.A
        theS2 Test.S2
        theB Test.B
        theCDict containers.Map
        theCSeqDict containers.Map
        theSDict containers.Map
        theCDictDict containers.Map
    end
    methods
        function obj = CTest(theCSeq, theSSeq, theC2DictSeq, theCSeqSeq, theS, theA, theS2, theB, theCDict, theCSeqDict, theSDict, theCDictDict)
            if nargin == 0
                obj.theCSeq = [];
                obj.theSSeq = [];
                obj.theC2DictSeq = [];
                obj.theCSeqSeq = [];
                obj.theS = Test.S();
                obj.theA = Test.A();
                obj.theS2 = Test.S2();
                obj.theB = Test.B();
                obj.theCDict = containers.Map('KeyType', 'int32', 'ValueType', 'any');
                obj.theCSeqDict = containers.Map('KeyType', 'int32', 'ValueType', 'any');
                obj.theSDict = containers.Map('KeyType', 'int32', 'ValueType', 'any');
                obj.theCDictDict = containers.Map('KeyType', 'int32', 'ValueType', 'any');
            elseif ne(theCSeq, IceInternal.NoInit.Instance)
                obj.theCSeq = theCSeq;
                obj.theSSeq = theSSeq;
                obj.theC2DictSeq = theC2DictSeq;
                obj.theCSeqSeq = theCSeqSeq;
                obj.theS = theS;
                obj.theA = theA;
                obj.theS2 = theS2;
                obj.theB = theB;
                obj.theCDict = theCDict;
                obj.theCSeqDict = theCSeqDict;
                obj.theSDict = theSDict;
                obj.theCDictDict = theCDictDict;
            end;
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
            obj.theCSeq = Test.CSeq.convert(obj.theCSeq);
            obj.theSSeq = Test.SSeq.convert(obj.theSSeq);
            obj.theC2DictSeq = Test.C2DictSeq.convert(obj.theC2DictSeq);
            obj.theCSeqSeq = Test.CSeqSeq.convert(obj.theCSeqSeq);
            obj.theS = obj.theS.ice_convert();
            obj.theA = obj.theA.ice_convert();
            obj.theS2 = obj.theS2.ice_convert();
            obj.theB = obj.theB.ice_convert();
            obj.theCDict = Test.CDict.convert(obj.theCDict);
            obj.theCSeqDict = Test.CSeqDict.convert(obj.theCSeqDict);
            obj.theSDict = Test.SDict.convert(obj.theSDict);
            obj.theCDictDict = Test.CDictDict.convert(obj.theCDictDict);
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::CTest', -1, true);
            Test.CSeq.write(os, obj.theCSeq);
            Test.SSeq.write(os, obj.theSSeq);
            Test.C2DictSeq.write(os, obj.theC2DictSeq);
            Test.CSeqSeq.write(os, obj.theCSeqSeq);
            Test.S.ice_write(os, obj.theS);
            Test.A.ice_write(os, obj.theA);
            Test.S2.ice_write(os, obj.theS2);
            Test.B.ice_write(os, obj.theB);
            Test.CDict.write(os, obj.theCDict);
            Test.CSeqDict.write(os, obj.theCSeqDict);
            Test.SDict.write(os, obj.theSDict);
            Test.CDictDict.write(os, obj.theCDictDict);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.theCSeq = Test.CSeq.read(is);
            obj.theSSeq = Test.SSeq.read(is);
            obj.theC2DictSeq = Test.C2DictSeq.read(is);
            obj.theCSeqSeq = Test.CSeqSeq.read(is);
            obj.theS = Test.S.ice_read(is);
            obj.theA = Test.A.ice_read(is);
            obj.theS2 = Test.S2.ice_read(is);
            obj.theB = Test.B.ice_read(is);
            obj.theCDict = Test.CDict.read(is);
            obj.theCSeqDict = Test.CSeqDict.read(is);
            obj.theSDict = Test.SDict.read(is);
            obj.theCDictDict = Test.CDictDict.read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::CTest';
        end
    end
end
