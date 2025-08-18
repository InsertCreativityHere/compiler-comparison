classdef ChildInvocationMetrics < IceMX.Metrics
    %CHILDINVOCATIONMETRICS Provides information on child invocations. A child invocation is either remote (sent over an Ice connection) or
    %   collocated. An invocation can have multiple child invocations if it is retried. Child invocation metrics are
    %   embedded within <a href="matlab:help IceMX.InvocationMetrics -displayBanner">InvocationMetrics</a>.
    %
    %   Creation
    %     Syntax
    %       obj = IceMX.ChildInvocationMetrics()
    %       obj = IceMX.ChildInvocationMetrics(size, replySize)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ChildInvocationMetrics Properties:
    %     size - The size of the invocation.
    %     replySize - The size of the invocation reply.
    %
    %   Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SIZE The size of the invocation. This corresponds to the size of the marshaled input parameters.
        %   int64 scalar
        size (1, 1) int64 = 0
        
        % REPLYSIZE The size of the invocation reply. This corresponds to the size of the marshaled output and return
        %   parameters.
        %   int64 scalar
        replySize (1, 1) int64 = 0
    end
    methods
        function obj = ChildInvocationMetrics(id, total, current, totalLifetime, failures, size, replySize)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 7, 'Invalid number of arguments');
                superArgs = {id, total, current, totalLifetime, failures};
            end
            obj = obj@IceMX.Metrics(superArgs{:});
            if nargin > 0
                obj.size = size;
                obj.replySize = replySize;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceMX::ChildInvocationMetrics', -1, false);
            os.writeLong(obj.size);
            os.writeLong(obj.replySize);
            os.endSlice();
            iceWriteImpl@IceMX.Metrics(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.size = is.readLong();
            obj.replySize = is.readLong();
            is.endSlice();
            iceReadImpl@IceMX.Metrics(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::IceMX::ChildInvocationMetrics';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceMX::ChildInvocationMetrics'
    end
end
