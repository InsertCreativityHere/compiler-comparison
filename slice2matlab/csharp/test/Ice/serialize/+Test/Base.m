% Base   Summary of Base
%
% Base Properties:
%   bo
%   by
%   sh
%   i
%   l
%   e

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef Base < Ice.Value
    properties
        bo logical
        by uint8
        sh int16
        i int32
        l int64
        e Test.MyEnum
    end
    methods
        function obj = Base(bo, by, sh, i, l, e)
            if nargin == 0
                obj.bo = false;
                obj.by = 0;
                obj.sh = 0;
                obj.i = 0;
                obj.l = 0;
                obj.e = Test.MyEnum.enum1;
            elseif ne(bo, IceInternal.NoInit.Instance)
                obj.bo = bo;
                obj.by = by;
                obj.sh = sh;
                obj.i = i;
                obj.l = l;
                obj.e = e;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Base', -1, true);
            os.writeBool(obj.bo);
            os.writeByte(obj.by);
            os.writeShort(obj.sh);
            os.writeInt(obj.i);
            os.writeLong(obj.l);
            Test.MyEnum.ice_write(os, obj.e);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.bo = is.readBool();
            obj.by = is.readByte();
            obj.sh = is.readShort();
            obj.i = is.readInt();
            obj.l = is.readLong();
            obj.e = Test.MyEnum.ice_read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Base';
        end
    end
end
