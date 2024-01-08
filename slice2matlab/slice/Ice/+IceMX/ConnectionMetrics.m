% ConnectionMetrics   Summary of ConnectionMetrics
%
% Provides information on the data sent and received over Ice connections.
%
% ConnectionMetrics Properties:
%   receivedBytes - The number of bytes received by the connection.
%   sentBytes - The number of bytes sent by the connection.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Metrics.ice by slice2matlab version 3.7.10

classdef ConnectionMetrics < IceMX.Metrics
    properties
        % receivedBytes - The number of bytes received by the connection.
        receivedBytes int64
        % sentBytes - The number of bytes sent by the connection.
        sentBytes int64
    end
    methods
        function obj = ConnectionMetrics(id, total, current, totalLifetime, failures, receivedBytes, sentBytes)
            if nargin == 0
                id = '';
                total = 0;
                current = 0;
                totalLifetime = 0;
                failures = 0;
                receivedBytes = 0;
                sentBytes = 0;
                v = { id, total, current, totalLifetime, failures };
            elseif eq(id, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [], [] };
            else
                v = { id, total, current, totalLifetime, failures };
            end;
            obj = obj@IceMX.Metrics(v{:});
            if ne(id, IceInternal.NoInit.Instance)
                obj.receivedBytes = receivedBytes;
                obj.sentBytes = sentBytes;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceMX::ConnectionMetrics', -1, false);
            os.writeLong(obj.receivedBytes);
            os.writeLong(obj.sentBytes);
            os.endSlice();
            iceWriteImpl@IceMX.Metrics(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.receivedBytes = is.readLong();
            obj.sentBytes = is.readLong();
            is.endSlice();
            iceReadImpl@IceMX.Metrics(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceMX::ConnectionMetrics';
        end
    end
end
