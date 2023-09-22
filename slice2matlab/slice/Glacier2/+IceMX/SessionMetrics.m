% SessionMetrics   Summary of SessionMetrics
%
% Provides information on Glacier2 sessions.
%
% SessionMetrics Properties:
%   forwardedClient - Number of client requests forwared.
%   forwardedServer - Number of server requests forwared.
%   routingTableSize - The size of the routing table.
%   queuedClient - Number of client requests queued.
%   queuedServer - Number of server requests queued.
%   overriddenClient - Number of client requests overridden.
%   overriddenServer - Number of server requests overridden.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Metrics.ice by slice2matlab version 3.7.10

classdef SessionMetrics < IceMX.Metrics
    properties
        % forwardedClient - Number of client requests forwared.
        forwardedClient int32
        % forwardedServer - Number of server requests forwared.
        forwardedServer int32
        % routingTableSize - The size of the routing table.
        routingTableSize int32
        % queuedClient - Number of client requests queued.
        queuedClient int32
        % queuedServer - Number of server requests queued.
        queuedServer int32
        % overriddenClient - Number of client requests overridden.
        overriddenClient int32
        % overriddenServer - Number of server requests overridden.
        overriddenServer int32
    end
    methods
        function obj = SessionMetrics(id, total, current, totalLifetime, failures, forwardedClient, forwardedServer, routingTableSize, queuedClient, queuedServer, overriddenClient, overriddenServer)
            if nargin == 0
                id = '';
                total = 0;
                current = 0;
                totalLifetime = 0;
                failures = 0;
                forwardedClient = 0;
                forwardedServer = 0;
                routingTableSize = 0;
                queuedClient = 0;
                queuedServer = 0;
                overriddenClient = 0;
                overriddenServer = 0;
                v = { id, total, current, totalLifetime, failures };
            elseif eq(id, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [], [] };
            else
                v = { id, total, current, totalLifetime, failures };
            end;
            obj = obj@IceMX.Metrics(v{:});
            if ne(id, IceInternal.NoInit.Instance)
                obj.forwardedClient = forwardedClient;
                obj.forwardedServer = forwardedServer;
                obj.routingTableSize = routingTableSize;
                obj.queuedClient = queuedClient;
                obj.queuedServer = queuedServer;
                obj.overriddenClient = overriddenClient;
                obj.overriddenServer = overriddenServer;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceMX::SessionMetrics', -1, false);
            os.writeInt(obj.forwardedClient);
            os.writeInt(obj.forwardedServer);
            os.writeInt(obj.routingTableSize);
            os.writeInt(obj.queuedClient);
            os.writeInt(obj.queuedServer);
            os.writeInt(obj.overriddenClient);
            os.writeInt(obj.overriddenServer);
            os.endSlice();
            iceWriteImpl@IceMX.Metrics(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.forwardedClient = is.readInt();
            obj.forwardedServer = is.readInt();
            obj.routingTableSize = is.readInt();
            obj.queuedClient = is.readInt();
            obj.queuedServer = is.readInt();
            obj.overriddenClient = is.readInt();
            obj.overriddenServer = is.readInt();
            is.endSlice();
            iceReadImpl@IceMX.Metrics(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceMX::SessionMetrics';
        end
    end
end
