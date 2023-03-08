% D   Summary of D
%
% D Properties:
%   boolSeq
%   byteSeq
%   shortSeq
%   intSeq
%   longSeq
%   floatSeq
%   doubleSeq

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from TestNumPy.ice by slice2matlab version 3.7.9

classdef D < Ice.Value
    properties
        boolSeq
        byteSeq
        shortSeq
        intSeq
        longSeq
        floatSeq
        doubleSeq
    end
    methods
        function obj = D(boolSeq, byteSeq, shortSeq, intSeq, longSeq, floatSeq, doubleSeq)
            if nargin == 0
                obj.boolSeq = IceInternal.UnsetI.Instance;
                obj.byteSeq = IceInternal.UnsetI.Instance;
                obj.shortSeq = IceInternal.UnsetI.Instance;
                obj.intSeq = IceInternal.UnsetI.Instance;
                obj.longSeq = IceInternal.UnsetI.Instance;
                obj.floatSeq = IceInternal.UnsetI.Instance;
                obj.doubleSeq = IceInternal.UnsetI.Instance;
            elseif ne(boolSeq, IceInternal.NoInit.Instance)
                obj.boolSeq = boolSeq;
                obj.byteSeq = byteSeq;
                obj.shortSeq = shortSeq;
                obj.intSeq = intSeq;
                obj.longSeq = longSeq;
                obj.floatSeq = floatSeq;
                obj.doubleSeq = doubleSeq;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::NumPy::D', -1, true);
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
    methods(Static)
        function id = ice_staticId()
            id = '::Test::NumPy::D';
        end
    end
end
