classdef SessionMetrics < IceMX.Metrics
    %SESSIONMETRICS Provides information about Glacier2 sessions.
    %
    %   Creation
    %     Syntax
    %       obj = IceMX.SessionMetrics()
    %       obj = IceMX.SessionMetrics(forwardedClient, forwardedServer, routingTableSize, queuedClient, queuedServer, overriddenClient, overriddenServer)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   SessionMetrics Properties:
    %     forwardedClient - The number of client requests forwarded.
    %     forwardedServer - The number of server requests forwarded.
    %     routingTableSize - The size of the routing table.
    %     queuedClient - The number of client requests queued.
    %     queuedServer - The number of server requests queued.
    %     overriddenClient - The number of client requests overridden.
    %     overriddenServer - The number of server requests overridden.
    %
    %   Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % FORWARDEDCLIENT The number of client requests forwarded.
        %   int32 scalar
        forwardedClient (1, 1) int32 = 0
        
        % FORWARDEDSERVER The number of server requests forwarded.
        %   int32 scalar
        forwardedServer (1, 1) int32 = 0
        
        % ROUTINGTABLESIZE The size of the routing table.
        %   int32 scalar
        routingTableSize (1, 1) int32 = 0
        
        % QUEUEDCLIENT The number of client requests queued.
        %   int32 scalar
        %
        %   Deprecated: As of Ice 3.8, the Glacier2 router no longer queues requests.
        queuedClient (1, 1) int32 = 0
        
        % QUEUEDSERVER The number of server requests queued.
        %   int32 scalar
        %
        %   Deprecated: As of Ice 3.8, the Glacier2 router no longer queues requests.
        queuedServer (1, 1) int32 = 0
        
        % OVERRIDDENCLIENT The number of client requests overridden.
        %   int32 scalar
        %
        %   Deprecated: As of Ice 3.8, the Glacier2 router no longer queues requests.
        overriddenClient (1, 1) int32 = 0
        
        % OVERRIDDENSERVER The number of server requests overridden.
        %   int32 scalar
        %
        %   Deprecated: As of Ice 3.8, the Glacier2 router no longer queues requests.
        overriddenServer (1, 1) int32 = 0
    end
    methods
        function obj = SessionMetrics(id, total, current, totalLifetime, failures, forwardedClient, forwardedServer, routingTableSize, queuedClient, queuedServer, overriddenClient, overriddenServer)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 12, 'Invalid number of arguments');
                superArgs = {id, total, current, totalLifetime, failures};
            end
            obj = obj@IceMX.Metrics(superArgs{:});
            if nargin > 0
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
    methods (Access = protected)
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
    methods (Static)
        function id = ice_staticId()
            id = '::IceMX::SessionMetrics';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceMX::SessionMetrics'
    end
end
