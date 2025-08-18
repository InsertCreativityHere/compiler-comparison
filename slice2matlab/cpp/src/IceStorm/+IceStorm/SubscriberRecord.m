classdef (Sealed) SubscriberRecord
    %SUBSCRIBERRECORD Used to store persistent information for persistent subscribers.
    %
    %   Creation
    %     Syntax
    %       obj = IceStorm.SubscriberRecord()
    %       obj = IceStorm.SubscriberRecord(topicName, id, link, obj, theQoS, cost, theTopic)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   SubscriberRecord Properties:
    %     topicName - The name of the topic.
    %     id - The subscriber identity.
    %     link - Is this a link record, or a subscriber record?
    %     obj - The subscriber object.
    %     theQoS - The QoS.
    %     cost - The cost.
    %     theTopic - The linked topic.
    %
    %   Generated from SubscriberRecord.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % TOPICNAME The name of the topic.
        %   character vector
        topicName (1, :) char
        
        % ID The subscriber identity.
        %   Ice.Identity scalar
        id Ice.Identity {mustBeScalarOrEmpty} = Ice.Identity.empty
        
        % LINK Is this a link record, or a subscriber record?
        %   logical scalar
        link (1, 1) logical
        
        % OBJ The subscriber object.
        %   Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
        obj Ice.ObjectPrx {mustBeScalarOrEmpty} = Ice.ObjectPrx.empty
        
        % THEQOS The QoS.
        %   string, string) scalar
        theQoS (1, 1) dictionary = configureDictionary('char', 'char')
        
        % COST The cost.
        %   int32 scalar
        cost (1, 1) int32
        
        % THETOPIC The linked topic.
        %   IceStorm.TopicPrx scalar | empty array of IceStorm.TopicPrx
        theTopic IceStorm.TopicPrx {mustBeScalarOrEmpty} = IceStorm.TopicPrx.empty
    end
    methods
        function obj = SubscriberRecord(topicName, id, link, obj, theQoS, cost, theTopic)
            if nargin > 0
                assert(nargin == 7, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = IceStorm.SubscriberRecord();
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
