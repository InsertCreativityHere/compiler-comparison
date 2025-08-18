classdef D < Ice.Value
    %D
    %
    %   Creation
    %     Syntax
    %       obj = Test.D()
    %       obj = Test.D(boolSeq, byteSeq, shortSeq, intSeq, longSeq, floatSeq, doubleSeq)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   D Properties:
    %     boolSeq
    %     byteSeq
    %     shortSeq
    %     intSeq
    %     longSeq
    %     floatSeq
    %     doubleSeq
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % BOOLSEQ
        %   logical vector | Ice.Unset
        boolSeq (1, :) = IceInternal.UnsetI.Instance
        
        % BYTESEQ
        %   uint8 vector | Ice.Unset
        byteSeq (1, :) = IceInternal.UnsetI.Instance
        
        % SHORTSEQ
        %   int16 vector | Ice.Unset
        shortSeq (1, :) = IceInternal.UnsetI.Instance
        
        % INTSEQ
        %   int32 vector | Ice.Unset
        intSeq (1, :) = IceInternal.UnsetI.Instance
        
        % LONGSEQ
        %   int64 vector | Ice.Unset
        longSeq (1, :) = IceInternal.UnsetI.Instance
        
        % FLOATSEQ
        %   single vector | Ice.Unset
        floatSeq (1, :) = IceInternal.UnsetI.Instance
        
        % DOUBLESEQ
        %   double vector | Ice.Unset
        doubleSeq (1, :) = IceInternal.UnsetI.Instance
    end
    methods
        function obj = D(boolSeq, byteSeq, shortSeq, intSeq, longSeq, floatSeq, doubleSeq)
            if nargin > 0
                assert(nargin == 7, 'Invalid number of arguments');
                obj.boolSeq = boolSeq;
                obj.byteSeq = byteSeq;
                obj.shortSeq = shortSeq;
                obj.intSeq = intSeq;
                obj.longSeq = longSeq;
                obj.floatSeq = floatSeq;
                obj.doubleSeq = doubleSeq;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::D', -1, true);
            os.writeBoolSeqOpt(1, obj.boolSeq);
            os.writeByteSeqOpt(2, obj.byteSeq);
            os.writeShortSeqOpt(3, obj.shortSeq);
            os.writeIntSeqOpt(4, obj.intSeq);
            os.writeLongSeqOpt(5, obj.longSeq);
            os.writeFloatSeqOpt(6, obj.floatSeq);
            os.writeDoubleSeqOpt(7, obj.doubleSeq);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.boolSeq = is.readBoolSeqOpt(1);
            obj.byteSeq = is.readByteSeqOpt(2);
            obj.shortSeq = is.readShortSeqOpt(3);
            obj.intSeq = is.readIntSeqOpt(4);
            obj.longSeq = is.readLongSeqOpt(5);
            obj.floatSeq = is.readFloatSeqOpt(6);
            obj.doubleSeq = is.readDoubleSeqOpt(7);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::D';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::D'
    end
end
