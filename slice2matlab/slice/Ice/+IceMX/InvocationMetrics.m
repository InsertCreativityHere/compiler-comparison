classdef InvocationMetrics < IceMX.Metrics
    %INVOCATIONMETRICS Provide measurements for proxy invocations. Proxy invocations can either be sent over the wire or be collocated.
    %
    %   Creation
    %     Syntax
    %       obj = IceMX.InvocationMetrics()
    %       obj = IceMX.InvocationMetrics(retry, userException, remotes, collocated)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   InvocationMetrics Properties:
    %     retry - The number of retries for the invocations.
    %     userException - The number of invocations that failed with a user exception.
    %     remotes - The remote invocation metrics map.
    %     collocated - The collocated invocation metrics map.
    %
    %   Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % RETRY The number of retries for the invocations.
        %   int32 scalar
        retry (1, 1) int32 = 0
        
        % USEREXCEPTION The number of invocations that failed with a user exception.
        %   int32 scalar
        userException (1, 1) int32 = 0
        
        % REMOTES The remote invocation metrics map.
        %   cell array
        %
        %   See also IceMX.RemoteMetrics
        remotes (1, :) = {}
        
        % COLLOCATED The collocated invocation metrics map.
        %   cell array
        %
        %   See also IceMX.CollocatedMetrics
        collocated (1, :) = {}
    end
    methods
        function obj = InvocationMetrics(id, total, current, totalLifetime, failures, retry, userException, remotes, collocated)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 9, 'Invalid number of arguments');
                superArgs = {id, total, current, totalLifetime, failures};
            end
            obj = obj@IceMX.Metrics(superArgs{:});
            if nargin > 0
                obj.retry = retry;
                obj.userException = userException;
                obj.remotes = remotes;
                obj.collocated = collocated;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Hidden)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            obj.remotes = IceMX.MetricsMap.convert(obj.remotes);
            obj.collocated = IceMX.MetricsMap.convert(obj.collocated);
            icePostUnmarshal@IceMX.Metrics(obj);
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceMX::InvocationMetrics', -1, false);
            os.writeInt(obj.retry);
            os.writeInt(obj.userException);
            IceMX.MetricsMap.write(os, obj.remotes);
            IceMX.MetricsMap.write(os, obj.collocated);
            os.endSlice();
            iceWriteImpl@IceMX.Metrics(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.retry = is.readInt();
            obj.userException = is.readInt();
            obj.remotes = IceMX.MetricsMap.read(is);
            obj.collocated = IceMX.MetricsMap.read(is);
            is.endSlice();
            iceReadImpl@IceMX.Metrics(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::IceMX::InvocationMetrics';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceMX::InvocationMetrics'
    end
end
