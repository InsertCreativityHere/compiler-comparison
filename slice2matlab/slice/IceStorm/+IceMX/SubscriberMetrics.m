classdef SubscriberMetrics < IceMX.Metrics
    %SUBSCRIBERMETRICS Provides information about IceStorm subscribers.
    %
    %   Creation
    %     Syntax
    %       obj = IceMX.SubscriberMetrics()
    %       obj = IceMX.SubscriberMetrics(queued, outstanding, delivered)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   SubscriberMetrics Properties:
    %     queued - The number of queued events.
    %     outstanding - The number of outstanding events.
    %     delivered - The number of forwarded events.
    %
    %   Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % QUEUED The number of queued events.
        %   int32 scalar
        queued (1, 1) int32 = 0
        
        % OUTSTANDING The number of outstanding events.
        %   int32 scalar
        outstanding (1, 1) int32 = 0
        
        % DELIVERED The number of forwarded events.
        %   int64 scalar
        delivered (1, 1) int64 = 0
    end
    methods
        function obj = SubscriberMetrics(id, total, current, totalLifetime, failures, queued, outstanding, delivered)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 8, 'Invalid number of arguments');
                superArgs = {id, total, current, totalLifetime, failures};
            end
            obj = obj@IceMX.Metrics(superArgs{:});
            if nargin > 0
                obj.queued = queued;
                obj.outstanding = outstanding;
                obj.delivered = delivered;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
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
    methods (Static)
        function id = ice_staticId()
            id = '::IceMX::SubscriberMetrics';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceMX::SubscriberMetrics'
    end
end
