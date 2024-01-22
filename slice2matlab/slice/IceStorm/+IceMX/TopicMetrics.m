% TopicMetrics   Summary of TopicMetrics
%
% Provides information on IceStorm topics.
%
% TopicMetrics Properties:
%   published - Number of events published on the topic by publishers.
%   forwarded - Number of events forwarded on the topic by IceStorm topic links.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

classdef TopicMetrics < IceMX.Metrics
    properties
        % published - Number of events published on the topic by publishers.
        published int64
        % forwarded - Number of events forwarded on the topic by IceStorm topic links.
        forwarded int64
    end
    methods
        function obj = TopicMetrics(id, total, current, totalLifetime, failures, published, forwarded)
            if nargin == 0
                id = '';
                total = 0;
                current = 0;
                totalLifetime = 0;
                failures = 0;
                published = 0;
                forwarded = 0;
                v = { id, total, current, totalLifetime, failures };
            elseif eq(id, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [], [] };
            else
                v = { id, total, current, totalLifetime, failures };
            end;
            obj = obj@IceMX.Metrics(v{:});
            if ne(id, IceInternal.NoInit.Instance)
                obj.published = published;
                obj.forwarded = forwarded;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceMX::TopicMetrics', -1, false);
            os.writeLong(obj.published);
            os.writeLong(obj.forwarded);
            os.endSlice();
            iceWriteImpl@IceMX.Metrics(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.published = is.readLong();
            obj.forwarded = is.readLong();
            is.endSlice();
            iceReadImpl@IceMX.Metrics(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceMX::TopicMetrics';
        end
    end
end
