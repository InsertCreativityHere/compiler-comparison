% SubscriberState   Summary of SubscriberState
%
% SubscriberState Properties:
%   SubscriberStateOnline - Online waiting to send events.
%   SubscriberStateOffline - Offline, retrying.
%   SubscriberStateError - Error state, awaiting to be destroyed.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Instrumentation.ice by slice2matlab version 3.7.9

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
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(IceStorm.Instrumentation.SubscriberState.SubscriberStateOnline), 2);
            else
                os.writeEnum(int32(v), 2);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                IceStorm.Instrumentation.SubscriberState.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(2);
            r = IceStorm.Instrumentation.SubscriberState.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = IceStorm.Instrumentation.SubscriberState.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
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
