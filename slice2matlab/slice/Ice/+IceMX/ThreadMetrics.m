% ThreadMetrics   Summary of ThreadMetrics
%
% Provides information on the number of threads currently in use and their activity.
%
% ThreadMetrics Properties:
%   inUseForIO - The number of threads which are currently performing socket read or writes.
%   inUseForUser - The number of threads which are currently calling user code (servant dispatch, AMI callbacks, etc).
%   inUseForOther - The number of threads which are currently performing other activities.

% Copyright (c) ZeroC, Inc.
% Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

classdef ThreadMetrics < IceMX.Metrics
    properties
        % inUseForIO - The number of threads which are currently performing socket read or writes.
        inUseForIO int32
        % inUseForUser - The number of threads which are currently calling user code (servant dispatch, AMI callbacks, etc).
        inUseForUser int32
        % inUseForOther - The number of threads which are currently performing other activities. These are all other that are not
        % counted with inUseForUser or inUseForIO, such as DNS lookups, garbage collection).
        inUseForOther int32
    end
    methods
        function obj = ThreadMetrics(id, total, current, totalLifetime, failures, inUseForIO, inUseForUser, inUseForOther)
            if nargin == 0
                id = '';
                total = 0;
                current = 0;
                totalLifetime = 0;
                failures = 0;
                inUseForIO = 0;
                inUseForUser = 0;
                inUseForOther = 0;
                v = { id, total, current, totalLifetime, failures };
            elseif eq(id, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [], [] };
            else
                v = { id, total, current, totalLifetime, failures };
            end
            obj = obj@IceMX.Metrics(v{:});
            if ne(id, IceInternal.NoInit.Instance)
                obj.inUseForIO = inUseForIO;
                obj.inUseForUser = inUseForUser;
                obj.inUseForOther = inUseForOther;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceMX::ThreadMetrics', -1, false);
            os.writeInt(obj.inUseForIO);
            os.writeInt(obj.inUseForUser);
            os.writeInt(obj.inUseForOther);
            os.endSlice();
            iceWriteImpl@IceMX.Metrics(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.inUseForIO = is.readInt();
            obj.inUseForUser = is.readInt();
            obj.inUseForOther = is.readInt();
            is.endSlice();
            iceReadImpl@IceMX.Metrics(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceMX::ThreadMetrics';
        end
    end
end
