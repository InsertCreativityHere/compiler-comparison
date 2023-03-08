% OptionalClass   Summary of OptionalClass
%
% OptionalClass Properties:
%   bo
%   by
%   sh
%   i
%   sm
%   enumS4
%   myClassS5
%   byteBoolD6
%   shortIntD7
%   enum8
%   class9
%   stringMyClassD10
%   intSeq12
%   byteSeq13
%   stringSeq14
%   p15

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef OptionalClass < Ice.Value
    properties
        bo logical
        by uint8
        sh
        i
        sm
        enumS4
        myClassS5
        byteBoolD6
        shortIntD7
        enum8
        class9
        stringMyClassD10
        intSeq12
        byteSeq13
        stringSeq14
        p15
    end
    methods
        function obj = OptionalClass(bo, by, sh, i, sm, enumS4, myClassS5, byteBoolD6, shortIntD7, enum8, class9, stringMyClassD10, intSeq12, byteSeq13, stringSeq14, p15)
            if nargin == 0
                obj.bo = false;
                obj.by = 0;
                obj.sh = IceInternal.UnsetI.Instance;
                obj.i = IceInternal.UnsetI.Instance;
                obj.sm = IceInternal.UnsetI.Instance;
                obj.enumS4 = IceInternal.UnsetI.Instance;
                obj.myClassS5 = IceInternal.UnsetI.Instance;
                obj.byteBoolD6 = IceInternal.UnsetI.Instance;
                obj.shortIntD7 = IceInternal.UnsetI.Instance;
                obj.enum8 = IceInternal.UnsetI.Instance;
                obj.class9 = IceInternal.UnsetI.Instance;
                obj.stringMyClassD10 = IceInternal.UnsetI.Instance;
                obj.intSeq12 = IceInternal.UnsetI.Instance;
                obj.byteSeq13 = IceInternal.UnsetI.Instance;
                obj.stringSeq14 = IceInternal.UnsetI.Instance;
                obj.p15 = IceInternal.UnsetI.Instance;
            elseif ne(bo, IceInternal.NoInit.Instance)
                obj.bo = bo;
                obj.by = by;
                obj.sh = sh;
                obj.i = i;
                obj.sm = sm;
                obj.enumS4 = enumS4;
                obj.myClassS5 = myClassS5;
                obj.byteBoolD6 = byteBoolD6;
                obj.shortIntD7 = shortIntD7;
                obj.enum8 = enum8;
                obj.class9 = class9;
                obj.stringMyClassD10 = stringMyClassD10;
                obj.intSeq12 = intSeq12;
                obj.byteSeq13 = byteSeq13;
                obj.stringSeq14 = stringSeq14;
                obj.p15 = p15;
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
            if obj.sm ~= Ice.Unset
                obj.sm = obj.sm.ice_convert();
            end
            if obj.myClassS5 ~= Ice.Unset
                obj.myClassS5 = Test.MyClassS.convert(obj.myClassS5);
            end
            if obj.stringMyClassD10 ~= Ice.Unset
                obj.stringMyClassD10 = Test.StringMyClassD.convert(obj.stringMyClassD10);
            end
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::OptionalClass', -1, true);
            os.writeBool(obj.bo);
            os.writeByte(obj.by);
            os.writeShortOpt(1, obj.sh);
            os.writeIntOpt(2, obj.i);
            Test.SmallStruct.ice_writeOpt(os, 3, obj.sm);
            Test.MyEnumS.writeOpt(os, 4, obj.enumS4);
            Test.MyClassS.writeOpt(os, 5, obj.myClassS5);
            Test.ByteBoolD.writeOpt(os, 6, obj.byteBoolD6);
            Test.ShortIntD.writeOpt(os, 7, obj.shortIntD7);
            Test.MyEnum.ice_writeOpt(os, 8, obj.enum8);
            os.writeValueOpt(9, obj.class9);
            Test.StringMyClassD.writeOpt(os, 10, obj.stringMyClassD10);
            os.writeIntSeqOpt(12, obj.intSeq12);
            os.writeByteSeqOpt(13, obj.byteSeq13);
            os.writeStringSeqOpt(14, obj.stringSeq14);
            Test.Point.ice_writeOpt(os, 15, obj.p15);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.bo = is.readBool();
            obj.by = is.readByte();
            obj.sh = is.readShortOpt(1);
            obj.i = is.readIntOpt(2);
            obj.sm = Test.SmallStruct.ice_readOpt(is, 3);
            obj.enumS4 = Test.MyEnumS.readOpt(is, 4);
            obj.myClassS5 = Test.MyClassS.readOpt(is, 5);
            obj.byteBoolD6 = Test.ByteBoolD.readOpt(is, 6);
            obj.shortIntD7 = Test.ShortIntD.readOpt(is, 7);
            obj.enum8 = Test.MyEnum.ice_readOpt(is, 8);
            is.readValueOpt(9, @obj.iceSetMember_class9, 'Test.MyClass');
            obj.stringMyClassD10 = Test.StringMyClassD.readOpt(is, 10);
            obj.intSeq12 = is.readIntSeqOpt(12);
            obj.byteSeq13 = is.readByteSeqOpt(13);
            obj.stringSeq14 = is.readStringSeqOpt(14);
            obj.p15 = Test.Point.ice_readOpt(is, 15);
            is.endSlice();
        end
        function iceSetMember_class9(obj, v)
            obj.class9 = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::OptionalClass';
        end
    end
end
