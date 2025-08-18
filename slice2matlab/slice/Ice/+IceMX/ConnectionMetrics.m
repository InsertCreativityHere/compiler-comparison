classdef ConnectionMetrics < IceMX.Metrics
    %CONNECTIONMETRICS Provides information on the data sent and received over Ice connections.
    %
    %   Creation
    %     Syntax
    %       obj = IceMX.ConnectionMetrics()
    %       obj = IceMX.ConnectionMetrics(receivedBytes, sentBytes)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ConnectionMetrics Properties:
    %     receivedBytes - The number of bytes received by the connection.
    %     sentBytes - The number of bytes sent by the connection.
    %
    %   Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % RECEIVEDBYTES The number of bytes received by the connection.
        %   int64 scalar
        receivedBytes (1, 1) int64 = 0
        
        % SENTBYTES The number of bytes sent by the connection.
        %   int64 scalar
        sentBytes (1, 1) int64 = 0
    end
    methods
        function obj = ConnectionMetrics(id, total, current, totalLifetime, failures, receivedBytes, sentBytes)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 7, 'Invalid number of arguments');
                superArgs = {id, total, current, totalLifetime, failures};
            end
            obj = obj@IceMX.Metrics(superArgs{:});
            if nargin > 0
                obj.receivedBytes = receivedBytes;
                obj.sentBytes = sentBytes;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
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
    methods (Static)
        function id = ice_staticId()
            id = '::IceMX::ConnectionMetrics';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceMX::ConnectionMetrics'
    end
end
