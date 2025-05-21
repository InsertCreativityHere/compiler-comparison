% SubscriberRecordKey   Summary of SubscriberRecordKey
%
% The key for persistent subscribers, or topics.
% If the subscriber identity is empty then the record is used as a place holder for the creation of a topic,
% otherwise the record holds a subscription record.
%
% SubscriberRecordKey Properties:
%   topic - The topic identity.
%   id - The identity of the subscriber.

% Copyright (c) ZeroC, Inc.
% Generated from SubscriberRecord.ice by slice2matlab version 3.8.0-alpha.0

classdef SubscriberRecordKey
    properties
        % topic - The topic identity.
        topic Ice.Identity
        % id - The identity of the subscriber. If this is empty then the key is a placeholder for a topic.
        id Ice.Identity
    end
    methods
        function obj = SubscriberRecordKey(topic, id)
            if nargin == 0
                obj.topic = Ice.Identity();
                obj.id = Ice.Identity();
            elseif ne(topic, IceInternal.NoInit.Instance)
                obj.topic = topic;
                obj.id = id;
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
            r = IceStorm.SubscriberRecordKey(IceInternal.NoInit.Instance);
            r.topic = Ice.Identity.ice_read(is);
            r.id = Ice.Identity.ice_read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceStorm.SubscriberRecordKey();
            end
            Ice.Identity.ice_write(os, v.topic);
            Ice.Identity.ice_write(os, v.id);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStorm.SubscriberRecordKey.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceStorm.SubscriberRecordKey.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
