classdef OptionalClass < Ice.Value
    %OPTIONALCLASS
    %
    %   Creation
    %     Syntax
    %       obj = Test.OptionalClass()
    %       obj = Test.OptionalClass(bo, by, sh, i, s, enumS4, byteBoolD6, shortIntD7, enum8, intSeq12, byteSeq13, stringSeq14, p15)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   OptionalClass Properties:
    %     bo
    %     by
    %     sh
    %     i
    %     s
    %     enumS4
    %     byteBoolD6
    %     shortIntD7
    %     enum8
    %     intSeq12
    %     byteSeq13
    %     stringSeq14
    %     p15
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % BO
        %   logical scalar
        bo (1, 1) logical
        
        % BY
        %   uint8 scalar
        by (1, 1) uint8
        
        % SH
        %   int16 scalar | Ice.Unset
        sh (1, 1) = IceInternal.UnsetI.Instance
        
        % I
        %   int32 scalar | Ice.Unset
        i (1, 1) = IceInternal.UnsetI.Instance
        
        % S
        %   Test.LargeStruct scalar | Ice.Unset
        s {mustBeScalarOrEmpty} = IceInternal.UnsetI.Instance
        
        % ENUMS4
        %   Test.MyEnum vector | Ice.Unset
        enumS4 (1, :) = IceInternal.UnsetI.Instance
        
        % BYTEBOOLD6
        %   uint8, logical) scalar | Ice.Unset
        byteBoolD6 (1, 1) = IceInternal.UnsetI.Instance
        
        % SHORTINTD7
        %   int16, int32) scalar | Ice.Unset
        shortIntD7 (1, 1) = IceInternal.UnsetI.Instance
        
        % ENUM8
        %   Test.MyEnum scalar | Ice.Unset
        enum8 (1, 1) = IceInternal.UnsetI.Instance
        
        % INTSEQ12
        %   int32 vector | Ice.Unset
        intSeq12 (1, :) = IceInternal.UnsetI.Instance
        
        % BYTESEQ13
        %   uint8 vector | Ice.Unset
        byteSeq13 (1, :) = IceInternal.UnsetI.Instance
        
        % STRINGSEQ14
        %   string vector | Ice.Unset
        stringSeq14 (1, :) = IceInternal.UnsetI.Instance
        
        % P15
        %   Test.Point scalar | Ice.Unset
        p15 {mustBeScalarOrEmpty} = IceInternal.UnsetI.Instance
    end
    methods
        function obj = OptionalClass(bo, by, sh, i, s, enumS4, byteBoolD6, shortIntD7, enum8, intSeq12, byteSeq13, stringSeq14, p15)
            if nargin > 0
                assert(nargin == 13, 'Invalid number of arguments');
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
    methods (Access = protected)
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
    methods (Static)
        function id = ice_staticId()
            id = '::Test::OptionalClass';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::OptionalClass'
    end
end
