% DispatchMetrics   Summary of DispatchMetrics
%
% Provides information on servant dispatch.
%
% DispatchMetrics Properties:
%   userException - The number of dispatch that failed with a user exception.
%   size - The size of the dispatch.
%   replySize - The size of the dispatch reply.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Metrics.ice by slice2matlab version 3.7.9

classdef DispatchMetrics < IceMX.Metrics
    properties
        % userException - The number of dispatch that failed with a user exception.
        userException int32
        % size - The size of the dispatch. This corresponds to the size of the
        % marshalled input parameters.
        size int64
        % replySize - The size of the dispatch reply. This corresponds to the size of
        % the marshalled output and return parameters.
        replySize int64
    end
    methods
        function obj = DispatchMetrics(id, total, current, totalLifetime, failures, userException, size, replySize)
            if nargin == 0
                id = '';
                total = 0;
                current = 0;
                totalLifetime = 0;
                failures = 0;
                userException = 0;
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
                obj.userException = userException;
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
            os.startSlice('::IceMX::DispatchMetrics', -1, false);
            os.writeInt(obj.userException);
            os.writeLong(obj.size);
            os.writeLong(obj.replySize);
            os.endSlice();
            iceWriteImpl@IceMX.Metrics(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.userException = is.readInt();
            obj.size = is.readLong();
            obj.replySize = is.readLong();
            is.endSlice();
            iceReadImpl@IceMX.Metrics(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceMX::DispatchMetrics';
        end
    end
end
