% OptionalClass   Summary of OptionalClass
%
% OptionalClass Properties:
%   bo
%   by
%   sh
%   i

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from StreamTest.ice by slice2matlab version 3.7.10

classdef OptionalClass < Ice.Value
    properties
        bo logical
        by uint8
        sh
        i
    end
    methods
        function obj = OptionalClass(bo, by, sh, i)
            if nargin == 0
                obj.bo = false;
                obj.by = 0;
                obj.sh = IceInternal.UnsetI.Instance;
                obj.i = IceInternal.UnsetI.Instance;
            elseif ne(bo, IceInternal.NoInit.Instance)
                obj.bo = bo;
                obj.by = by;
                obj.sh = sh;
                obj.i = i;
            end;
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
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.bo = is.readBool();
            obj.by = is.readByte();
            obj.sh = is.readShortOpt(1);
            obj.i = is.readIntOpt(2);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::OptionalClass';
        end
    end
end
