% SessionPrx   Summary of SessionPrx
%
% The base interface for publisher and subscriber sessions.
%
% This interface enables nodes to exchange topic and element information, as well as data samples.
%
% SessionPrx Methods:
%   announceTopics - Announces new and existing topics to the peer.
%   announceTopicsAsync - Announces new and existing topics to the peer.
%   attachTopic - Attaches a local topic to a remote topic when a session receives a topic announcement from a peer.
%   attachTopicAsync - Attaches a local topic to a remote topic when a session receives a topic announcement from a peer.
%   detachTopic - Detaches a topic from the session.
%   detachTopicAsync - Detaches a topic from the session.
%   attachTags
%   attachTagsAsync
%   detachTags
%   detachTagsAsync
%   announceElements - Announces new elements to the peer.
%   announceElementsAsync - Announces new elements to the peer.
%   attachElements - Attaches the given topic elements to all subscribers of the specified topic.
%   attachElementsAsync - Attaches the given topic elements to all subscribers of the specified topic.
%   attachElementsAck
%   attachElementsAckAsync
%   detachElements
%   detachElementsAsync
%   initSamples
%   initSamplesAsync
%   disconnected - Notifies the peer that the session is being disconnected.
%   disconnectedAsync - Notifies the peer that the session is being disconnected.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also DataStormContract.PublisherSession, DataStormContract.SubscriberSession

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef SessionPrx < Ice.ObjectPrx
    methods
        function announceTopics(obj, topics, initialize, varargin)
            % announceTopics   Announces new and existing topics to the peer.
            %
            % - During session establishment, this operation announces existing topics.
            % - For already established sessions, it is used to announce new topics.
            %
            % A publisher session announces the topics it writes, while a subscriber session announces the topics it reads.
            %
            % The peer receiving the announcement will invoke `attachTopic` for any topics it is interested in.
            %
            % Parameters:
            %   topics (DataStormContract.TopicInfoSeq) - The sequence of topics to announce.
            %   initialize (logical) - Currently unused.
            %   context (containers.Map) - Optional request context.
            %
            % See also DataStormContract.Session.attachTopic
            
            os_ = obj.iceStartWriteParams([]);
            DataStormContract.TopicInfoSeq.write(os_, topics);
            os_.writeBool(initialize);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('announceTopics', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = announceTopicsAsync(obj, topics, initialize, varargin)
            % announceTopicsAsync   Announces new and existing topics to the peer.
            %
            % - During session establishment, this operation announces existing topics.
            % - For already established sessions, it is used to announce new topics.
            %
            % A publisher session announces the topics it writes, while a subscriber session announces the topics it reads.
            %
            % The peer receiving the announcement will invoke `attachTopic` for any topics it is interested in.
            %
            % Parameters:
            %   topics (DataStormContract.TopicInfoSeq) - The sequence of topics to announce.
            %   initialize (logical) - Currently unused.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % See also DataStormContract.Session.attachTopic
            
            os_ = obj.iceStartWriteParams([]);
            DataStormContract.TopicInfoSeq.write(os_, topics);
            os_.writeBool(initialize);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('announceTopics', 0, false, os_, 0, [], {}, varargin{:});
        end
        function attachTopic(obj, topic, varargin)
            % attachTopic   Attaches a local topic to a remote topic when a session receives a topic announcement from a peer.
            %
            % This operation is called if the session is interested in the announced topic, which occurs when:
            %
            % - The session has a reader for a topic that the peer has a writer for, or
            % - The session has a writer for a topic that the peer has a reader for.
            %
            % Parameters:
            %   topic (DataStormContract.TopicSpec) - The TopicSpec object describing the topic being attached to the remote topic.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            DataStormContract.TopicSpec.ice_write(os_, topic);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachTopic', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = attachTopicAsync(obj, topic, varargin)
            % attachTopicAsync   Attaches a local topic to a remote topic when a session receives a topic announcement from a peer.
            %
            % This operation is called if the session is interested in the announced topic, which occurs when:
            %
            % - The session has a reader for a topic that the peer has a writer for, or
            % - The session has a writer for a topic that the peer has a reader for.
            %
            % Parameters:
            %   topic (DataStormContract.TopicSpec) - The TopicSpec object describing the topic being attached to the remote topic.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            DataStormContract.TopicSpec.ice_write(os_, topic);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('attachTopic', 0, false, os_, 0, [], {}, varargin{:});
        end
        function detachTopic(obj, topic, varargin)
            % detachTopic   Detaches a topic from the session.
            %
            % This operation is called by the topic on listener sessions when the topic is being destroyed.
            %
            % Parameters:
            %   topic (int64) - The ID of the topic to detach.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('detachTopic', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = detachTopicAsync(obj, topic, varargin)
            % detachTopicAsync   Detaches a topic from the session.
            %
            % This operation is called by the topic on listener sessions when the topic is being destroyed.
            %
            % Parameters:
            %   topic (int64) - The ID of the topic to detach.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('detachTopic', 0, false, os_, 0, [], {}, varargin{:});
        end
        function attachTags(obj, topic, tags, initialize, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.ElementInfoSeq.write(os_, tags);
            os_.writeBool(initialize);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachTags', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = attachTagsAsync(obj, topic, tags, initialize, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.ElementInfoSeq.write(os_, tags);
            os_.writeBool(initialize);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('attachTags', 0, false, os_, 0, [], {}, varargin{:});
        end
        function detachTags(obj, topic, tags, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            os_.writeLongSeq(tags);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('detachTags', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = detachTagsAsync(obj, topic, tags, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            os_.writeLongSeq(tags);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('detachTags', 0, false, os_, 0, [], {}, varargin{:});
        end
        function announceElements(obj, topic, elements, varargin)
            % announceElements   Announces new elements to the peer.
            %
            % The peer will invoke `attachElements` for the elements it is interested in. The announced elements include
            % the readers and writers associated with the specified topic.
            %
            % Parameters:
            %   topic (int64) - The ID of the topic associated with the elements.
            %   elements (DataStormContract.ElementInfoSeq) - The sequence of elements to announce.
            %   context (containers.Map) - Optional request context.
            %
            % See also DataStormContract.Session.attachElements
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.ElementInfoSeq.write(os_, elements);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('announceElements', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = announceElementsAsync(obj, topic, elements, varargin)
            % announceElementsAsync   Announces new elements to the peer.
            %
            % The peer will invoke `attachElements` for the elements it is interested in. The announced elements include
            % the readers and writers associated with the specified topic.
            %
            % Parameters:
            %   topic (int64) - The ID of the topic associated with the elements.
            %   elements (DataStormContract.ElementInfoSeq) - The sequence of elements to announce.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % See also DataStormContract.Session.attachElements
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.ElementInfoSeq.write(os_, elements);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('announceElements', 0, false, os_, 0, [], {}, varargin{:});
        end
        function attachElements(obj, topicId, elements, initialize, varargin)
            % attachElements   Attaches the given topic elements to all subscribers of the specified topic.
            %
            % Parameters:
            %   topicId (int64) - The ID of the topic to which the elements belong.
            %   elements (DataStormContract.ElementSpecSeq) - The sequence of elements to attach to the topic's subscribers.
            %   initialize (logical) - True if called from attachTopic, false otherwise.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.ElementSpecSeq.write(os_, elements);
            os_.writeBool(initialize);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachElements', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = attachElementsAsync(obj, topicId, elements, initialize, varargin)
            % attachElementsAsync   Attaches the given topic elements to all subscribers of the specified topic.
            %
            % Parameters:
            %   topicId (int64) - The ID of the topic to which the elements belong.
            %   elements (DataStormContract.ElementSpecSeq) - The sequence of elements to attach to the topic's subscribers.
            %   initialize (logical) - True if called from attachTopic, false otherwise.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.ElementSpecSeq.write(os_, elements);
            os_.writeBool(initialize);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('attachElements', 0, false, os_, 0, [], {}, varargin{:});
        end
        function attachElementsAck(obj, topic, elements, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.ElementSpecAckSeq.write(os_, elements);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachElementsAck', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = attachElementsAckAsync(obj, topic, elements, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.ElementSpecAckSeq.write(os_, elements);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('attachElementsAck', 0, false, os_, 0, [], {}, varargin{:});
        end
        function detachElements(obj, topic, keys, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            os_.writeLongSeq(keys);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('detachElements', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = detachElementsAsync(obj, topic, keys, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            os_.writeLongSeq(keys);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('detachElements', 0, false, os_, 0, [], {}, varargin{:});
        end
        function initSamples(obj, topic, samples, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.DataSamplesSeq.write(os_, samples);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initSamples', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = initSamplesAsync(obj, topic, samples, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.DataSamplesSeq.write(os_, samples);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('initSamples', 0, false, os_, 0, [], {}, varargin{:});
        end
        function disconnected(obj, varargin)
            % disconnected   Notifies the peer that the session is being disconnected.
            %
            % This operation is called by the DataStorm node during shutdown to inform established sessions of the disconnection.
            %
            % For sessions established through a relay node, this operation is invoked by the relay node if the connection
            % between the relay node and the target node is lost.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('disconnected', 0, false, [], false, {}, varargin{:});
        end
        function r_ = disconnectedAsync(obj, varargin)
            % disconnectedAsync   Notifies the peer that the session is being disconnected.
            %
            % This operation is called by the DataStorm node during shutdown to inform established sessions of the disconnection.
            %
            % For sessions established through a relay node, this operation is invoked by the relay node if the connection
            % between the relay node and the target node is lost.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('disconnected', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::DataStormContract::Session';
        end
        function r = ice_read(is)
            r = is.readProxy('DataStormContract.SessionPrx');
        end
        function r = checkedCast(p, varargin)
            % checkedCast   Contacts the remote server to verify that the object implements this type.
            %   Raises a local exception if a communication error occurs. You can optionally supply a
            %   facet name and a context map.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %   context - The optional context map to send with the invocation.
            %
            % Returns (DataStormContract.SessionPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, DataStormContract.SessionPrx.ice_staticId(), 'DataStormContract.SessionPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (DataStormContract.SessionPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'DataStormContract.SessionPrx', varargin{:});
        end
    end
end
