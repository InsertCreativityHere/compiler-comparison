% SubscriberRecord   Summary of SubscriberRecord
%
% Used to store persistent information for persistent subscribers.
%
% SubscriberRecord Properties:
%   topicName - The name of the topic.
%   id - The subscriber identity.
%   link - Is this a link record, or a subscriber record?
%   obj - The subscriber object.
%   theQoS - The QoS.
%   cost - The cost.
%   theTopic - The linked topic.

% Copyright (c) ZeroC, Inc.
% Generated from SubscriberRecord.ice by slice2matlab version 3.8.0-alpha.0

classdef SubscriberRecord
    properties
        % topicName - The name of the topic.
        topicName char
        % id - The subscriber identity.
        id Ice.Identity
        % link - Is this a link record, or a subscriber record?
        link logical
        % obj - The subscriber object.
        obj
        % theQoS - The QoS.
        theQoS containers.Map
        % cost - The cost.
        cost int32
        % theTopic - The linked topic.
        theTopic
    end
    methods
        function obj = SubscriberRecord(topicName, id, link, obj, theQoS, cost, theTopic)
            if nargin == 0
                obj.topicName = '';
                obj.id = Ice.Identity();
                obj.link = false;
                obj.obj = [];
                obj.theQoS = containers.Map('KeyType', 'char', 'ValueType', 'char');
                obj.cost = 0;
                obj.theTopic = [];
            elseif ne(topicName, IceInternal.NoInit.Instance)
                obj.topicName = topicName;
                obj.id = id;
                obj.link = link;
                obj.obj = obj;
                obj.theQoS = theQoS;
                obj.cost = cost;
                obj.theTopic = theTopic;
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
            r = IceStorm.SubscriberRecord(IceInternal.NoInit.Instance);
            r.topicName = is.readString();
            r.id = Ice.Identity.ice_read(is);
            r.link = is.readBool();
            r.obj = is.readProxy();
            r.theQoS = IceStorm.QoS.read(is);
            r.cost = is.readInt();
            r.theTopic = IceStorm.TopicPrx.ice_read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceStorm.SubscriberRecord();
            end
            os.writeString(v.topicName);
            Ice.Identity.ice_write(os, v.id);
            os.writeBool(v.link);
            os.writeProxy(v.obj);
            IceStorm.QoS.write(os, v.theQoS);
            os.writeInt(v.cost);
            os.writeProxy(v.theTopic);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStorm.SubscriberRecord.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceStorm.SubscriberRecord.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
