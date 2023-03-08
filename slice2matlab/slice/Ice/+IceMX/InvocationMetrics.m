% InvocationMetrics   Summary of InvocationMetrics
%
% Provide measurements for proxy invocations. Proxy invocations can
% either be sent over the wire or be collocated.
%
% InvocationMetrics Properties:
%   retry - The number of retries for the invocation(s).
%   userException - The number of invocations that failed with a user exception.
%   remotes - The remote invocation metrics map.
%   collocated - The collocated invocation metrics map.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Metrics.ice by slice2matlab version 3.7.9

classdef InvocationMetrics < IceMX.Metrics
    properties
        % retry - The number of retries for the invocation(s).
        retry int32
        % userException - The number of invocations that failed with a user exception.
        userException int32
        % remotes - The remote invocation metrics map.
        %
        % See also IceMX.RemoteMetrics
        remotes
        % collocated - The collocated invocation metrics map.
        %
        % See also IceMX.CollocatedMetrics
        collocated
    end
    methods
        function obj = InvocationMetrics(id, total, current, totalLifetime, failures, retry, userException, remotes, collocated)
            if nargin == 0
                id = '';
                total = 0;
                current = 0;
                totalLifetime = 0;
                failures = 0;
                retry = 0;
                userException = 0;
                remotes = [];
                collocated = [];
                v = { id, total, current, totalLifetime, failures };
            elseif eq(id, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [], [] };
            else
                v = { id, total, current, totalLifetime, failures };
            end;
            obj = obj@IceMX.Metrics(v{:});
            if ne(id, IceInternal.NoInit.Instance)
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
    methods(Hidden=true)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            obj.remotes = IceMX.MetricsMap.convert(obj.remotes);
            obj.collocated = IceMX.MetricsMap.convert(obj.collocated);
            icePostUnmarshal@IceMX.Metrics(obj);
        end
    end
    methods(Access=protected)
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
    methods(Static)
        function id = ice_staticId()
            id = '::IceMX::InvocationMetrics';
        end
    end
end
