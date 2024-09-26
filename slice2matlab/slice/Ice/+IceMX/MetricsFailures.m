% MetricsFailures   Summary of MetricsFailures
%
% A structure to keep track of failures associated with a given metrics.
%
% MetricsFailures Properties:
%   id - The identifier of the metrics object associated to the failures.
%   failures - The failures observed for this metrics.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

classdef MetricsFailures
    properties
        % id - The identifier of the metrics object associated to the failures.
        id char
        % failures - The failures observed for this metrics.
        failures containers.Map
    end
    methods
        function obj = MetricsFailures(id, failures)
            if nargin == 0
                obj.id = '';
                obj.failures = containers.Map('KeyType', 'char', 'ValueType', 'int32');
            elseif ne(id, IceInternal.NoInit.Instance)
                obj.id = id;
                obj.failures = failures;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = IceMX.MetricsFailures(IceInternal.NoInit.Instance);
            r.id = is.readString();
            r.failures = IceMX.StringIntDict.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceMX.MetricsFailures();
            end
            os.writeString(v.id);
            IceMX.StringIntDict.write(os, v.failures);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceMX.MetricsFailures.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceMX.MetricsFailures.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
