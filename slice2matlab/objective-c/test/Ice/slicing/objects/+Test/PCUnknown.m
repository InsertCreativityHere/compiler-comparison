% PCUnknown   Summary of PCUnknown
%
% PCUnknown Properties:
%   pu

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from SlicingObjectsTestClient.ice by slice2matlab version 3.7.9

classdef PCUnknown < Test.PBase
    properties
        pu char
    end
    methods
        function obj = PCUnknown(pi, pu)
            if nargin == 0
                pi = 0;
                pu = '';
                v = { pi };
            elseif eq(pi, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { pi };
            end;
            obj = obj@Test.PBase(v{:});
            if ne(pi, IceInternal.NoInit.Instance)
                obj.pu = pu;
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
            os.startSlice('::Test::PCUnknown', -1, false);
            os.writeString(obj.pu);
            os.endSlice();
            iceWriteImpl@Test.PBase(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.pu = is.readString();
            is.endSlice();
            iceReadImpl@Test.PBase(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::PCUnknown';
        end
    end
    properties(Access=protected)
        iceSlicedData_
    end
end
