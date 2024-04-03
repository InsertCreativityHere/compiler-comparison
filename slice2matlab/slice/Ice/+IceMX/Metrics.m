% Metrics   Summary of Metrics
%
% The base class for metrics. A metrics object represents a collection of measurements associated to a given a
% system.
%
% Metrics Properties:
%   id - The metrics identifier.
%   total - The total number of objects observed by this metrics.
%   current - The number of objects currently observed by this metrics.
%   totalLifetime - The sum of the lifetime of each observed objects.
%   failures - The number of failures observed.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

classdef Metrics < Ice.Value
    properties
        % id - The metrics identifier.
        id char
        % total - The total number of objects observed by this metrics. This includes the number of currently observed objects
        % and the number of objects observed in the past.
        total int64
        % current - The number of objects currently observed by this metrics.
        current int32
        % totalLifetime - The sum of the lifetime of each observed objects. This does not include the lifetime of objects which are
        % currently observed, only the objects observed in the past.
        totalLifetime int64
        % failures - The number of failures observed.
        failures int32
    end
    methods
        function obj = Metrics(id, total, current, totalLifetime, failures)
            if nargin == 0
                obj.id = '';
                obj.total = 0;
                obj.current = 0;
                obj.totalLifetime = 0;
                obj.failures = 0;
            elseif ne(id, IceInternal.NoInit.Instance)
                obj.id = id;
                obj.total = total;
                obj.current = current;
                obj.totalLifetime = totalLifetime;
                obj.failures = failures;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
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
    methods(Static)
        function id = ice_staticId()
            id = '::IceMX::Metrics';
        end
    end
end
