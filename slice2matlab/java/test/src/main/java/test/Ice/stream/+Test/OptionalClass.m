
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef OptionalClass < Ice.Value
    properties
        bo logical
        by uint8
        sh
        i
        s
        enumS4
        byteBoolD6
        shortIntD7
        enum8
        intSeq12
        byteSeq13
        stringSeq14
        p15
    end
    methods
        function obj = OptionalClass(bo, by, sh, i, s, enumS4, byteBoolD6, shortIntD7, enum8, intSeq12, byteSeq13, stringSeq14, p15)
            if nargin == 0
                obj.bo = false;
                obj.by = 0;
                obj.sh = IceInternal.UnsetI.Instance;
                obj.i = IceInternal.UnsetI.Instance;
                obj.s = IceInternal.UnsetI.Instance;
                obj.enumS4 = IceInternal.UnsetI.Instance;
                obj.byteBoolD6 = IceInternal.UnsetI.Instance;
                obj.shortIntD7 = IceInternal.UnsetI.Instance;
                obj.enum8 = IceInternal.UnsetI.Instance;
                obj.intSeq12 = IceInternal.UnsetI.Instance;
                obj.byteSeq13 = IceInternal.UnsetI.Instance;
                obj.stringSeq14 = IceInternal.UnsetI.Instance;
                obj.p15 = IceInternal.UnsetI.Instance;
            elseif ne(bo, IceInternal.NoInit.Instance)
                obj.bo = bo;
                obj.by = by;
                obj.sh = sh;
                obj.i = i;
                obj.s = s;
                obj.enumS4 = enumS4;
                obj.byteBoolD6 = byteBoolD6;
                obj.shortIntD7 = shortIntD7;
                obj.enum8 = enum8;
                obj.intSeq12 = intSeq12;
                obj.byteSeq13 = byteSeq13;
                obj.stringSeq14 = stringSeq14;
                obj.p15 = p15;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::OptionalClass', -1, true);
            os.writeBool(obj.bo);
            os.writeByte(obj.by);
            os.writeShortOpt(1, obj.sh);
            os.writeIntOpt(2, obj.i);
            Test.LargeStruct.ice_writeOpt(os, 3, obj.s);
            Test.MyEnumS.writeOpt(os, 4, obj.enumS4);
            Test.ByteBoolD.writeOpt(os, 6, obj.byteBoolD6);
            Test.ShortIntD.writeOpt(os, 7, obj.shortIntD7);
            Test.MyEnum.ice_writeOpt(os, 8, obj.enum8);
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
            obj.s = Test.LargeStruct.ice_readOpt(is, 3);
            obj.enumS4 = Test.MyEnumS.readOpt(is, 4);
            obj.byteBoolD6 = Test.ByteBoolD.readOpt(is, 6);
            obj.shortIntD7 = Test.ShortIntD.readOpt(is, 7);
            obj.enum8 = Test.MyEnum.ice_readOpt(is, 8);
            obj.intSeq12 = is.readIntSeqOpt(12);
            obj.byteSeq13 = is.readByteSeqOpt(13);
            obj.stringSeq14 = is.readStringSeqOpt(14);
            obj.p15 = Test.Point.ice_readOpt(is, 15);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::OptionalClass';
        end
    end
end
