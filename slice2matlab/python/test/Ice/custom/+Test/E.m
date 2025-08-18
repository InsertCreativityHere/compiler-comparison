classdef E < Ice.Value
    %E
    %
    %   Creation
    %     Syntax
    %       obj = Test.E()
    %       obj = Test.E(boolSeq, byteSeq, shortSeq, intSeq, longSeq, floatSeq, doubleSeq)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   E Properties:
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
        %   logical vector
        boolSeq (1, :) logical
        
        % BYTESEQ
        %   uint8 vector
        byteSeq (1, :) uint8
        
        % SHORTSEQ
        %   int16 vector
        shortSeq (1, :) int16
        
        % INTSEQ
        %   int32 vector
        intSeq (1, :) int32
        
        % LONGSEQ
        %   int64 vector
        longSeq (1, :) int64
        
        % FLOATSEQ
        %   single vector
        floatSeq (1, :) single
        
        % DOUBLESEQ
        %   double vector
        doubleSeq (1, :) double
    end
    methods
        function obj = E(boolSeq, byteSeq, shortSeq, intSeq, longSeq, floatSeq, doubleSeq)
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
            os.startSlice('::Test::E', -1, true);
            os.writeBoolSeq(obj.boolSeq);
            os.writeByteSeq(obj.byteSeq);
            os.writeShortSeq(obj.shortSeq);
            os.writeIntSeq(obj.intSeq);
            os.writeLongSeq(obj.longSeq);
            os.writeFloatSeq(obj.floatSeq);
            os.writeDoubleSeq(obj.doubleSeq);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.boolSeq = is.readBoolSeq();
            obj.byteSeq = is.readByteSeq();
            obj.shortSeq = is.readShortSeq();
            obj.intSeq = is.readIntSeq();
            obj.longSeq = is.readLongSeq();
            obj.floatSeq = is.readFloatSeq();
            obj.doubleSeq = is.readDoubleSeq();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::E';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::E'
    end
end
