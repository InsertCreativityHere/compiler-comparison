% ChildInvocationMetrics   Summary of ChildInvocationMetrics
%
% Provides information on child invocations. A child invocation is either remote (sent over an Ice connection) or
% collocated. An invocation can have multiple child invocation if it is retried. Child invocation metrics are
% embedded within InvocationMetrics.
%
% ChildInvocationMetrics Properties:
%   size - The size of the invocation.
%   replySize - The size of the invocation reply.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

classdef ChildInvocationMetrics < IceMX.Metrics
    properties
        % size - The size of the invocation. This corresponds to the size of the marshalled input parameters.
        size int64
        % replySize - The size of the invocation reply. This corresponds to the size of the marshalled output and return parameters.
        replySize int64
    end
    methods
        function obj = ChildInvocationMetrics(id, total, current, totalLifetime, failures, size, replySize)
            if nargin == 0
                id = '';
                total = 0;
                current = 0;
                totalLifetime = 0;
                failures = 0;
                size = 0;
                replySize = 0;
                v = { id, total, current, totalLifetime, failures };
            elseif eq(id, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [], [] };
            else
                v = { id, total, current, totalLifetime, failures };
            end;
            obj = obj@IceMX.Metrics(v{:});
            if ne(id, IceInternal.NoInit.Instance)
                obj.size = size;
                obj.replySize = replySize;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceMX::ChildInvocationMetrics', -1, false);
            os.writeLong(obj.size);
            os.writeLong(obj.replySize);
            os.endSlice();
            iceWriteImpl@IceMX.Metrics(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.size = is.readLong();
            obj.replySize = is.readLong();
            is.endSlice();
            iceReadImpl@IceMX.Metrics(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceMX::ChildInvocationMetrics';
        end
    end
end
