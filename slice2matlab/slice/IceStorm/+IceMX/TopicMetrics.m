classdef TopicMetrics < IceMX.Metrics
    %TOPICMETRICS Provides information about one or more IceStorm topics.
    %
    %   Creation
    %     Syntax
    %       obj = IceMX.TopicMetrics()
    %       obj = IceMX.TopicMetrics(published, forwarded)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   TopicMetrics Properties:
    %     published - The number of events published on the topic(s) by publishers.
    %     forwarded - The number of events forwarded on the topic(s) by IceStorm topic links.
    %
    %   Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % PUBLISHED The number of events published on the topic(s) by publishers.
        %   int64 scalar
        published (1, 1) int64 = 0
        
        % FORWARDED The number of events forwarded on the topic(s) by IceStorm topic links.
        %   int64 scalar
        forwarded (1, 1) int64 = 0
    end
    methods
        function obj = TopicMetrics(id, total, current, totalLifetime, failures, published, forwarded)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 7, 'Invalid number of arguments');
                superArgs = {id, total, current, totalLifetime, failures};
            end
            obj = obj@IceMX.Metrics(superArgs{:});
            if nargin > 0
                obj.published = published;
                obj.forwarded = forwarded;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
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
    methods (Static)
        function id = ice_staticId()
            id = '::IceMX::TopicMetrics';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceMX::TopicMetrics'
    end
end
