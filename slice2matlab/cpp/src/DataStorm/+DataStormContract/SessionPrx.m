% SessionPrx   Summary of SessionPrx
%
% The base interface for publisher and subscriber sessions.
%
% This interface specifies the operations for communication between publisher and subscriber sessions.
%
% SessionPrx Methods:
%   announceTopics - Announces topics to the peer during session establishment or when adding new topics.
%   announceTopicsAsync - Announces topics to the peer during session establishment or when adding new topics.
%   attachTopic - This operation is invoked if the session is interested in the announced topic.
%   attachTopicAsync - This operation is invoked if the session is interested in the announced topic.
%   detachTopic - Detaches a topic from the session, typically called when the topic is destroyed.
%   detachTopicAsync - Detaches a topic from the session, typically called when the topic is destroyed.
%   attachTags - Attaches the specified tags to the subscriber of a topic.
%   attachTagsAsync - Attaches the specified tags to the subscriber of a topic.
%   detachTags - Detaches tags from the session.
%   detachTagsAsync - Detaches tags from the session.
%   announceElements - Announces elements associated with a topic to the peer.
%   announceElementsAsync - Announces elements associated with a topic to the peer.
%   attachElements - Attaches the specified elements to the subscribers of a topic.
%   attachElementsAsync - Attaches the specified elements to the subscribers of a topic.
%   attachElementsAck - Acknowledges the attachment of elements to the session in response to a previous attachElements request.
%   attachElementsAckAsync - Acknowledges the attachment of elements to the session in response to a previous attachElements request.
%   detachElements - Instructs the peer to detach specific elements associated with a topic.
%   detachElementsAsync - Instructs the peer to detach specific elements associated with a topic.
%   initSamples - Initializes the subscriber with the publisher queued samples for a topic during session establishment.
%   initSamplesAsync - Initializes the subscriber with the publisher queued samples for a topic during session establishment.
%   disconnected - Notifies the peer that the session is being disconnected.
%   disconnectedAsync - Notifies the peer that the session is being disconnected.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also DataStormContract.PublisherSession, DataStormContract.SubscriberSession

% Copyright (c) ZeroC, Inc.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef SessionPrx < Ice.ObjectPrx
    methods
        function announceTopics(obj, topics, initialize, varargin)
            % announceTopics   Announces topics to the peer during session establishment or when adding new topics.
            %
            % - During session establishment, announces existing topics.
            % - For established sessions, announces newly added topics.
            %
            % A publisher session announces the topics it writes, and a subscriber session announces the topics it reads.
            %
            % The receiving peer invokes attachTopic for topics it is interested in.
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
            % announceTopicsAsync   Announces topics to the peer during session establishment or when adding new topics.
            %
            % - During session establishment, announces existing topics.
            % - For established sessions, announces newly added topics.
            %
            % A publisher session announces the topics it writes, and a subscriber session announces the topics it reads.
            %
            % The receiving peer invokes attachTopic for topics it is interested in.
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
            % attachTopic   This operation is invoked if the session is interested in the announced topic. Which occurs when:
            %
            % - The session has a reader for a topic that the peer writes, or
            % - The session has a writer for a topic that the peer reads.
            %
            % Parameters:
            %   topic (DataStormContract.TopicSpec) - The TopicSpec describing the topic to attach.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            DataStormContract.TopicSpec.ice_write(os_, topic);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachTopic', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = attachTopicAsync(obj, topic, varargin)
            % attachTopicAsync   This operation is invoked if the session is interested in the announced topic. Which occurs when:
            %
            % - The session has a reader for a topic that the peer writes, or
            % - The session has a writer for a topic that the peer reads.
            %
            % Parameters:
            %   topic (DataStormContract.TopicSpec) - The TopicSpec describing the topic to attach.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            DataStormContract.TopicSpec.ice_write(os_, topic);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('attachTopic', 0, false, os_, 0, [], {}, varargin{:});
        end
        function detachTopic(obj, topicId, varargin)
            % detachTopic   Detaches a topic from the session, typically called when the topic is destroyed.
            %
            % This operation is invoked by the topic on listener sessions during its destruction.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic to detach.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('detachTopic', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = detachTopicAsync(obj, topicId, varargin)
            % detachTopicAsync   Detaches a topic from the session, typically called when the topic is destroyed.
            %
            % This operation is invoked by the topic on listener sessions during its destruction.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic to detach.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('detachTopic', 0, false, os_, 0, [], {}, varargin{:});
        end
        function attachTags(obj, topicId, tags, initialize, varargin)
            % attachTags   Attaches the specified tags to the subscriber of a topic.
            %
            % Tags are used to support partial update samples.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic to which the tags will be attached.
            %   tags (DataStormContract.ElementInfoSeq) - The sequence of tags to attach, representing the partial update associations.
            %   initialize (logical) - Indicates whether the tags are being attached during session initialization.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.ElementInfoSeq.write(os_, tags);
            os_.writeBool(initialize);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachTags', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = attachTagsAsync(obj, topicId, tags, initialize, varargin)
            % attachTagsAsync   Attaches the specified tags to the subscriber of a topic.
            %
            % Tags are used to support partial update samples.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic to which the tags will be attached.
            %   tags (DataStormContract.ElementInfoSeq) - The sequence of tags to attach, representing the partial update associations.
            %   initialize (logical) - Indicates whether the tags are being attached during session initialization.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.ElementInfoSeq.write(os_, tags);
            os_.writeBool(initialize);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('attachTags', 0, false, os_, 0, [], {}, varargin{:});
        end
        function detachTags(obj, topicId, tags, varargin)
            % detachTags   Detaches tags from the session.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic.
            %   tags (Ice.LongSeq) - The sequence of tag identifiers to detach.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            os_.writeLongSeq(tags);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('detachTags', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = detachTagsAsync(obj, topicId, tags, varargin)
            % detachTagsAsync   Detaches tags from the session.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic.
            %   tags (Ice.LongSeq) - The sequence of tag identifiers to detach.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            os_.writeLongSeq(tags);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('detachTags', 0, false, os_, 0, [], {}, varargin{:});
        end
        function announceElements(obj, topicId, elements, varargin)
            % announceElements   Announces elements associated with a topic to the peer.
            %
            % This operation informs the peer about new data readers or data writers associated with the specified topic.
            % The receiving peer will invoke `attachElements` for any elements it is interested in.
            %
            % - A publisher session announces its data writers.
            % - A subscriber session announces its data readers.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic to which the elements belong.
            %   elements (DataStormContract.ElementInfoSeq) - The sequence of elements to announce, representing the data readers or data writers.
            %   context (containers.Map) - Optional request context.
            %
            % See also DataStormContract.Session.attachElements
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.ElementInfoSeq.write(os_, elements);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('announceElements', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = announceElementsAsync(obj, topicId, elements, varargin)
            % announceElementsAsync   Announces elements associated with a topic to the peer.
            %
            % This operation informs the peer about new data readers or data writers associated with the specified topic.
            % The receiving peer will invoke `attachElements` for any elements it is interested in.
            %
            % - A publisher session announces its data writers.
            % - A subscriber session announces its data readers.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic to which the elements belong.
            %   elements (DataStormContract.ElementInfoSeq) - The sequence of elements to announce, representing the data readers or data writers.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % See also DataStormContract.Session.attachElements
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.ElementInfoSeq.write(os_, elements);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('announceElements', 0, false, os_, 0, [], {}, varargin{:});
        end
        function attachElements(obj, topicId, elements, initialize, varargin)
            % attachElements   Attaches the specified elements to the subscribers of a topic.
            %
            % This operation associates the provided elements, such as keys or filters, with the subscribers of the given
            % topic.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic to which the elements belong.
            %   elements (DataStormContract.ElementSpecSeq) - The sequence of `ElementSpec` objects representing the elements to attach.
            %   initialize (logical) - Indicates whether the elements are being attached during session initialization.
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
            % attachElementsAsync   Attaches the specified elements to the subscribers of a topic.
            %
            % This operation associates the provided elements, such as keys or filters, with the subscribers of the given
            % topic.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic to which the elements belong.
            %   elements (DataStormContract.ElementSpecSeq) - The sequence of `ElementSpec` objects representing the elements to attach.
            %   initialize (logical) - Indicates whether the elements are being attached during session initialization.
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
        function attachElementsAck(obj, topicId, elements, varargin)
            % attachElementsAck   Acknowledges the attachment of elements to the session in response to a previous attachElements request.
            %
            % This method confirms that the specified elements, such as keys or filters, have been successfully attached
            % to the session.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic to which the elements belong.
            %   elements (DataStormContract.ElementSpecAckSeq) - A sequence of `ElementSpecAck` objects representing the confirmed attachments.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.ElementSpecAckSeq.write(os_, elements);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachElementsAck', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = attachElementsAckAsync(obj, topicId, elements, varargin)
            % attachElementsAckAsync   Acknowledges the attachment of elements to the session in response to a previous attachElements request.
            %
            % This method confirms that the specified elements, such as keys or filters, have been successfully attached
            % to the session.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic to which the elements belong.
            %   elements (DataStormContract.ElementSpecAckSeq) - A sequence of `ElementSpecAck` objects representing the confirmed attachments.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.ElementSpecAckSeq.write(os_, elements);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('attachElementsAck', 0, false, os_, 0, [], {}, varargin{:});
        end
        function detachElements(obj, topicId, elements, varargin)
            % detachElements   Instructs the peer to detach specific elements associated with a topic.
            %
            % This operation is invoked when the specified elements, such as keys or filters, are no longer valid
            % and should be removed from the peer's session.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic to which the elements belong.
            %   elements (Ice.LongSeq) - A sequence of element identifiers representing the keys or filters to detach.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            os_.writeLongSeq(elements);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('detachElements', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = detachElementsAsync(obj, topicId, elements, varargin)
            % detachElementsAsync   Instructs the peer to detach specific elements associated with a topic.
            %
            % This operation is invoked when the specified elements, such as keys or filters, are no longer valid
            % and should be removed from the peer's session.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic to which the elements belong.
            %   elements (Ice.LongSeq) - A sequence of element identifiers representing the keys or filters to detach.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            os_.writeLongSeq(elements);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('detachElements', 0, false, os_, 0, [], {}, varargin{:});
        end
        function initSamples(obj, topicId, samples, varargin)
            % initSamples   Initializes the subscriber with the publisher queued samples for a topic during session establishment.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic.
            %   samples (DataStormContract.DataSamplesSeq) - A sequence of `DataSamples` containing the queued samples to initialize the subscriber.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.DataSamplesSeq.write(os_, samples);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initSamples', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = initSamplesAsync(obj, topicId, samples, varargin)
            % initSamplesAsync   Initializes the subscriber with the publisher queued samples for a topic during session establishment.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic.
            %   samples (DataStormContract.DataSamplesSeq) - A sequence of `DataSamples` containing the queued samples to initialize the subscriber.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.DataSamplesSeq.write(os_, samples);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('initSamples', 0, false, os_, 0, [], {}, varargin{:});
        end
        function disconnected(obj, varargin)
            % disconnected   Notifies the peer that the session is being disconnected.
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
