% CollocatedMetrics   Summary of CollocatedMetrics
%
% Provides information on invocations that are collocated. Collocated
% metrics are embedded within InvocationMetrics.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Metrics.ice by slice2matlab version 3.7.10

classdef CollocatedMetrics < IceMX.ChildInvocationMetrics
    methods
        function obj = CollocatedMetrics(id, total, current, totalLifetime, failures, size, replySize)
            if nargin == 0
                id = '';
                total = 0;
                current = 0;
                totalLifetime = 0;
                failures = 0;
                size = 0;
                replySize = 0;
                v = { id, total, current, totalLifetime, failures, size, replySize };
            elseif eq(id, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [], [], [], [] };
            else
                v = { id, total, current, totalLifetime, failures, size, replySize };
            end;
            obj = obj@IceMX.ChildInvocationMetrics(v{:});
            if ne(id, IceInternal.NoInit.Instance)
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceMX::CollocatedMetrics', -1, false);
            os.endSlice();
            iceWriteImpl@IceMX.ChildInvocationMetrics(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            iceReadImpl@IceMX.ChildInvocationMetrics(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceMX::CollocatedMetrics';
        end
    end
end
