% Preserved   Summary of Preserved
%
% Preserved Properties:
%   ps

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from SlicingObjectsTestClient.ice by slice2matlab version 3.7.9

classdef Preserved < Test.PBase
    properties
        ps char
    end
    methods
        function obj = Preserved(pi, ps)
            if nargin == 0
                pi = 0;
                ps = '';
                v = { pi };
            elseif eq(pi, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { pi };
            end;
            obj = obj@Test.PBase(v{:});
            if ne(pi, IceInternal.NoInit.Instance)
                obj.ps = ps;
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
            os.startSlice('::Test::Preserved', -1, false);
            os.writeString(obj.ps);
            os.endSlice();
            iceWriteImpl@Test.PBase(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.ps = is.readString();
            is.endSlice();
            iceReadImpl@Test.PBase(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Preserved';
        end
    end
    properties(Access=protected)
        iceSlicedData_
    end
end
