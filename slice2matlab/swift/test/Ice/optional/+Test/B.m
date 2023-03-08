% B   Summary of B
%
% B Properties:
%   requiredB
%   md

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef B < Test.A
    properties
        requiredB int32
        md
    end
    methods
        function obj = B(requiredA, ma, mb, mc, requiredB, md)
            if nargin == 0
                requiredA = 0;
                ma = IceInternal.UnsetI.Instance;
                mb = IceInternal.UnsetI.Instance;
                mc = IceInternal.UnsetI.Instance;
                requiredB = 0;
                md = IceInternal.UnsetI.Instance;
                v = { requiredA, ma, mb, mc };
            elseif eq(requiredA, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [] };
            else
                v = { requiredA, ma, mb, mc };
            end;
            obj = obj@Test.A(v{:});
            if ne(requiredA, IceInternal.NoInit.Instance)
                obj.requiredB = requiredB;
                obj.md = md;
            end
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
            os.startSlice('::Test::B', -1, false);
            os.writeInt(obj.requiredB);
            os.writeIntOpt(10, obj.md);
            os.endSlice();
            iceWriteImpl@Test.A(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.requiredB = is.readInt();
            obj.md = is.readIntOpt(10);
            is.endSlice();
            iceReadImpl@Test.A(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::B';
        end
    end
    properties(Access=protected)
        iceSlicedData_
    end
end
