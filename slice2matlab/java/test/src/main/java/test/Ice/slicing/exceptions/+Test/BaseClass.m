% BaseClass   Summary of BaseClass
%
% BaseClass Properties:
%   bc

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef BaseClass < Ice.Value
    properties
        bc char
    end
    methods
        function obj = BaseClass(bc)
            if nargin == 0
                obj.bc = '';
            elseif ne(bc, IceInternal.NoInit.Instance)
                obj.bc = bc;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
        function r = ice_getSlicedData(obj)
            r = obj.iceSlicedData_;
        end
    end
    methods(Hidden=true)
        function iceWrite(obj, os)
            os.startValue(obj.iceSlicedData_);
            obj.iceWriteImpl(os);
            os.endValue();
        end
        function iceRead(obj, is)
            is.startValue();
            obj.iceReadImpl(is);
            obj.iceSlicedData_ = is.endValue(true);
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::BaseClass', -1, true);
            os.writeString(obj.bc);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.bc = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::BaseClass';
        end
    end
    properties(Access=protected)
        iceSlicedData_
    end
end
