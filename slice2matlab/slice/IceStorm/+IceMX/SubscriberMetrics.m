% SubscriberMetrics   Summary of SubscriberMetrics
%
% Provides information on IceStorm subscribers.
%
% SubscriberMetrics Properties:
%   queued - Number of queued events.
%   outstanding - Number of outstanding events.
%   delivered - Number of forwarded events.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Metrics.ice by slice2matlab version 3.7.9

classdef SubscriberMetrics < IceMX.Metrics
    properties
        % queued - Number of queued events.
        queued int32
        % outstanding - Number of outstanding events.
        outstanding int32
        % delivered - Number of forwarded events.
        delivered int64
    end
    methods
        function obj = SubscriberMetrics(id, total, current, totalLifetime, failures, queued, outstanding, delivered)
            if nargin == 0
                id = '';
                total = 0;
                current = 0;
                totalLifetime = 0;
                failures = 0;
                queued = 0;
                outstanding = 0;
                delivered = 0;
                v = { id, total, current, totalLifetime, failures };
            elseif eq(id, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [], [] };
            else
                v = { id, total, current, totalLifetime, failures };
            end;
            obj = obj@IceMX.Metrics(v{:});
            if ne(id, IceInternal.NoInit.Instance)
                obj.queued = queued;
                obj.outstanding = outstanding;
                obj.delivered = delivered;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceMX::SubscriberMetrics', -1, false);
            os.writeInt(obj.queued);
            os.writeInt(obj.outstanding);
            os.writeLong(obj.delivered);
            os.endSlice();
            iceWriteImpl@IceMX.Metrics(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.queued = is.readInt();
            obj.outstanding = is.readInt();
            obj.delivered = is.readLong();
            is.endSlice();
            iceReadImpl@IceMX.Metrics(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceMX::SubscriberMetrics';
        end
    end
end
