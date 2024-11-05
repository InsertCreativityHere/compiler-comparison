% RemoteMetrics   Summary of RemoteMetrics
%
% Provides information on invocations that are specifically sent over Ice connections. Remote metrics are embedded
% within {@link InvocationMetrics}.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

classdef RemoteMetrics < IceMX.ChildInvocationMetrics
    methods
        function obj = RemoteMetrics(id, total, current, totalLifetime, failures, size, replySize)
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
            end
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
            os.startSlice('::IceMX::RemoteMetrics', -1, false);
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
            id = '::IceMX::RemoteMetrics';
        end
    end
end
