% SubscriberState   Summary of SubscriberState
%
% SubscriberState Properties:
%   SubscriberStateOnline - Online waiting to send events.
%   SubscriberStateOffline - Offline, retrying.
%   SubscriberStateError - Error state, awaiting to be destroyed.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Instrumentation.ice by slice2matlab version 3.7.10

classdef SubscriberState < uint8
    enumeration
        % Online waiting to send events.
        SubscriberStateOnline (0)
        % Offline, retrying.
        SubscriberStateOffline (1)
        % Error state, awaiting to be destroyed.
        SubscriberStateError (2)
    end
    methods(Static)
        function r = ice_getValue(v)
            switch v
                case 0
                    r = IceStorm.Instrumentation.SubscriberState.SubscriberStateOnline;
                case 1
                    r = IceStorm.Instrumentation.SubscriberState.SubscriberStateOffline;
                case 2
                    r = IceStorm.Instrumentation.SubscriberState.SubscriberStateError;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
