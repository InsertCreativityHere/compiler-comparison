classdef Metrics < Ice.Value
    %METRICS The base class for metrics. A metrics object represents a collection of measurements associated to a given a
    %   system.
    %
    %   Creation
    %     Syntax
    %       obj = IceMX.Metrics()
    %       obj = IceMX.Metrics(id, total, current, totalLifetime, failures)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Metrics Properties:
    %     id - The metrics identifier.
    %     total - The total number of objects observed by this metrics.
    %     current - The number of objects currently observed by this metrics.
    %     totalLifetime - The sum of the lifetime of each observed objects.
    %     failures - The number of failures observed.
    %
    %   Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The metrics identifier.
        %   character vector
        id (1, :) char
        
        % TOTAL The total number of objects observed by this metrics. This includes the number of currently observed objects
        %   and the number of objects observed in the past.
        %   int64 scalar
        total (1, 1) int64 = 0
        
        % CURRENT The number of objects currently observed by this metrics.
        %   int32 scalar
        current (1, 1) int32 = 0
        
        % TOTALLIFETIME The sum of the lifetime of each observed objects. This does not include the lifetime of objects which are
        %   currently observed, only the objects observed in the past.
        %   int64 scalar
        totalLifetime (1, 1) int64 = 0
        
        % FAILURES The number of failures observed.
        %   int32 scalar
        failures (1, 1) int32 = 0
    end
    methods
        function obj = Metrics(id, total, current, totalLifetime, failures)
            if nargin > 0
                assert(nargin == 5, 'Invalid number of arguments');
                obj.id = id;
                obj.total = total;
                obj.current = current;
                obj.totalLifetime = totalLifetime;
                obj.failures = failures;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceMX::Metrics', -1, true);
            os.writeString(obj.id);
            os.writeLong(obj.total);
            os.writeInt(obj.current);
            os.writeLong(obj.totalLifetime);
            os.writeInt(obj.failures);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.id = is.readString();
            obj.total = is.readLong();
            obj.current = is.readInt();
            obj.totalLifetime = is.readLong();
            obj.failures = is.readInt();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::IceMX::Metrics';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceMX::Metrics'
    end
end
