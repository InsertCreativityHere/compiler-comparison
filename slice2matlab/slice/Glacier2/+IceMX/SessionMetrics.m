% SessionMetrics   Summary of SessionMetrics
%
% Provides information about Glacier2 sessions.
%
% SessionMetrics Properties:
%   forwardedClient - The number of client requests forwarded.
%   forwardedServer - The number of server requests forwarded.
%   routingTableSize - The size of the routing table.
%   queuedClient - The number of client requests queued.
%   queuedServer - The number of server requests queued.
%   overriddenClient - The number of client requests overridden.
%   overriddenServer - The number of server requests overridden.

% Copyright (c) ZeroC, Inc.
% Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

classdef SessionMetrics < IceMX.Metrics
    properties
        % forwardedClient - The number of client requests forwarded.
        forwardedClient int32
        % forwardedServer - The number of server requests forwarded.
        forwardedServer int32
        % routingTableSize - The size of the routing table.
        routingTableSize int32
        % queuedClient - The number of client requests queued.
        queuedClient int32
        % queuedServer - The number of server requests queued.
        queuedServer int32
        % overriddenClient - The number of client requests overridden.
        overriddenClient int32
        % overriddenServer - The number of server requests overridden.
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
            end
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
    properties(Constant, Access=private)
        TypeId char = '::IceMX::SessionMetrics'
    end
end
