classdef SessionPrx < Ice.ObjectPrx
    %SESSIONPRX The base interface for publisher and subscriber sessions.
    %
    %   This interface specifies the operations for communication between publisher and subscriber sessions.
    %
    %   Creation
    %     Syntax
    %       prx = DataStormContract.SessionPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   SessionPrx Methods:
    %     announceElements - Announces elements associated with a topic to the peer.
    %     announceElementsAsync - An asynchronous announceElements.
    %     announceTopics - Announces topics to the peer during session establishment or when adding new topics.
    %     announceTopicsAsync - An asynchronous announceTopics.
    %     attachElements - Attaches the specified elements to the subscribers of a topic.
    %     attachElementsAsync - An asynchronous attachElements.
    %     attachElementsAck - Acknowledges the attachment of elements to the session in response to a previous attachElements request.
    %     attachElementsAckAsync - An asynchronous attachElementsAck.
    %     attachTags - Attaches the specified tags to the subscriber of a topic.
    %     attachTagsAsync - An asynchronous attachTags.
    %     attachTopic - This operation is invoked if the session is interested in the announced topic.
    %     attachTopicAsync - An asynchronous attachTopic.
    %     detachElements - Instructs the peer to detach specific elements associated with a topic.
    %     detachElementsAsync - An asynchronous detachElements.
    %     detachTags - Detaches tags from the session.
    %     detachTagsAsync - An asynchronous detachTags.
    %     detachTopic - Detaches a topic from the session, typically called when the topic is destroyed.
    %     detachTopicAsync - An asynchronous detachTopic.
    %     disconnected - Notifies the peer that the session is being disconnected.
    %     disconnectedAsync - An asynchronous disconnected.
    %     initSamples - Initializes the subscriber with the publisher queued samples for a topic during session establishment.
    %     initSamplesAsync - An asynchronous initSamples.
    %
    %   SessionPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::DataStormContract::Session.
    %     uncheckedCast - Creates a SessionPrx from another proxy without any validation.
    %
    %   See also DataStormContract.PublisherSession, DataStormContract.SubscriberSession
    %
    %   Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function announceTopics(obj, topics, initialize, context)
            %ANNOUNCETOPICS Announces topics to the peer during session establishment or when adding new topics.
            %
            %   - During session establishment, announces existing topics.
            %   - For established sessions, announces newly added topics.
            %
            %   A publisher session announces the topics it writes, and a subscriber session announces the topics it reads.
            %
            %   The receiving peer invokes attachTopic for topics it is interested in.
            %
            %   Input Arguments
            %     topics - The sequence of topics to announce.
            %       DataStormContract.TopicInfo vector
            %     initialize - Currently unused.
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   See also DataStormContract.Session.attachTopic
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topics (1, :) DataStormContract.TopicInfo
                initialize (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            DataStormContract.TopicInfoSeq.write(os_, topics);
            os_.writeBool(initialize);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('announceTopics', 0, false, os_, false, {}, context);
        end

        function future = announceTopicsAsync(obj, topics, initialize, context)
            %ANNOUNCETOPICSASYNC Announces topics to the peer during session establishment or when adding new topics.
            %
            %   - During session establishment, announces existing topics.
            %   - For established sessions, announces newly added topics.
            %
            %   A publisher session announces the topics it writes, and a subscriber session announces the topics it reads.
            %
            %   The receiving peer invokes attachTopic for topics it is interested in.
            %
            %   Input Arguments
            %     topics - The sequence of topics to announce.
            %       DataStormContract.TopicInfo vector
            %     initialize - Currently unused.
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also announceTopics, Ice.Future.
            %
            %   See also DataStormContract.Session.attachTopic
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topics (1, :) DataStormContract.TopicInfo
                initialize (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            DataStormContract.TopicInfoSeq.write(os_, topics);
            os_.writeBool(initialize);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('announceTopics', 0, false, os_, 0, [], {}, context);
        end

        function attachTopic(obj, topic, context)
            %ATTACHTOPIC This operation is invoked if the session is interested in the announced topic. Which occurs when:
            %
            %   - The session has a reader for a topic that the peer writes, or
            %   - The session has a writer for a topic that the peer reads.
            %
            %   Input Arguments
            %     topic - The TopicSpec describing the topic to attach.
            %       DataStormContract.TopicSpec scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topic (1, 1) DataStormContract.TopicSpec
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            DataStormContract.TopicSpec.ice_write(os_, topic);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachTopic', 0, false, os_, false, {}, context);
        end

        function future = attachTopicAsync(obj, topic, context)
            %ATTACHTOPICASYNC This operation is invoked if the session is interested in the announced topic. Which occurs when:
            %
            %   - The session has a reader for a topic that the peer writes, or
            %   - The session has a writer for a topic that the peer reads.
            %
            %   Input Arguments
            %     topic - The TopicSpec describing the topic to attach.
            %       DataStormContract.TopicSpec scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also attachTopic, Ice.Future.
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topic (1, 1) DataStormContract.TopicSpec
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            DataStormContract.TopicSpec.ice_write(os_, topic);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('attachTopic', 0, false, os_, 0, [], {}, context);
        end

        function detachTopic(obj, topicId, context)
            %DETACHTOPIC Detaches a topic from the session, typically called when the topic is destroyed.
            %
            %   This operation is invoked by the topic on listener sessions during its destruction.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic to detach.
            %       int64 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topicId (1, 1) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('detachTopic', 0, false, os_, false, {}, context);
        end

        function future = detachTopicAsync(obj, topicId, context)
            %DETACHTOPICASYNC Detaches a topic from the session, typically called when the topic is destroyed.
            %
            %   This operation is invoked by the topic on listener sessions during its destruction.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic to detach.
            %       int64 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also detachTopic, Ice.Future.
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topicId (1, 1) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('detachTopic', 0, false, os_, 0, [], {}, context);
        end

        function attachTags(obj, topicId, tags, initialize, context)
            %ATTACHTAGS Attaches the specified tags to the subscriber of a topic.
            %
            %   Tags are used to support partial update samples.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic to which the tags will be attached.
            %       int64 scalar
            %     tags - The sequence of tags to attach, representing the partial update associations.
            %       DataStormContract.ElementInfo vector
            %     initialize - Indicates whether the tags are being attached during session initialization.
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topicId (1, 1) int64
                tags (1, :) DataStormContract.ElementInfo
                initialize (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.ElementInfoSeq.write(os_, tags);
            os_.writeBool(initialize);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachTags', 0, false, os_, false, {}, context);
        end

        function future = attachTagsAsync(obj, topicId, tags, initialize, context)
            %ATTACHTAGSASYNC Attaches the specified tags to the subscriber of a topic.
            %
            %   Tags are used to support partial update samples.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic to which the tags will be attached.
            %       int64 scalar
            %     tags - The sequence of tags to attach, representing the partial update associations.
            %       DataStormContract.ElementInfo vector
            %     initialize - Indicates whether the tags are being attached during session initialization.
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also attachTags, Ice.Future.
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topicId (1, 1) int64
                tags (1, :) DataStormContract.ElementInfo
                initialize (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.ElementInfoSeq.write(os_, tags);
            os_.writeBool(initialize);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('attachTags', 0, false, os_, 0, [], {}, context);
        end

        function detachTags(obj, topicId, tags, context)
            %DETACHTAGS Detaches tags from the session.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic.
            %       int64 scalar
            %     tags - The sequence of tag identifiers to detach.
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topicId (1, 1) int64
                tags (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            os_.writeLongSeq(tags);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('detachTags', 0, false, os_, false, {}, context);
        end

        function future = detachTagsAsync(obj, topicId, tags, context)
            %DETACHTAGSASYNC Detaches tags from the session.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic.
            %       int64 scalar
            %     tags - The sequence of tag identifiers to detach.
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also detachTags, Ice.Future.
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topicId (1, 1) int64
                tags (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            os_.writeLongSeq(tags);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('detachTags', 0, false, os_, 0, [], {}, context);
        end

        function announceElements(obj, topicId, elements, context)
            %ANNOUNCEELEMENTS Announces elements associated with a topic to the peer.
            %
            %   This operation informs the peer about new data readers or data writers associated with the specified topic.
            %   The receiving peer will invoke |attachElements| for any elements it is interested in.
            %
            %   - A publisher session announces its data writers.
            %   - A subscriber session announces its data readers.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic to which the elements belong.
            %       int64 scalar
            %     elements - The sequence of elements to announce, representing the data readers or data writers.
            %       DataStormContract.ElementInfo vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   See also DataStormContract.Session.attachElements
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topicId (1, 1) int64
                elements (1, :) DataStormContract.ElementInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.ElementInfoSeq.write(os_, elements);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('announceElements', 0, false, os_, false, {}, context);
        end

        function future = announceElementsAsync(obj, topicId, elements, context)
            %ANNOUNCEELEMENTSASYNC Announces elements associated with a topic to the peer.
            %
            %   This operation informs the peer about new data readers or data writers associated with the specified topic.
            %   The receiving peer will invoke |attachElements| for any elements it is interested in.
            %
            %   - A publisher session announces its data writers.
            %   - A subscriber session announces its data readers.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic to which the elements belong.
            %       int64 scalar
            %     elements - The sequence of elements to announce, representing the data readers or data writers.
            %       DataStormContract.ElementInfo vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also announceElements, Ice.Future.
            %
            %   See also DataStormContract.Session.attachElements
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topicId (1, 1) int64
                elements (1, :) DataStormContract.ElementInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.ElementInfoSeq.write(os_, elements);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('announceElements', 0, false, os_, 0, [], {}, context);
        end

        function attachElements(obj, topicId, elements, initialize, context)
            %ATTACHELEMENTS Attaches the specified elements to the subscribers of a topic.
            %
            %   This operation associates the provided elements, such as keys or filters, with the subscribers of the given
            %   topic.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic to which the elements belong.
            %       int64 scalar
            %     elements - The sequence of |ElementSpec| objects representing the elements to attach.
            %       DataStormContract.ElementSpec vector
            %     initialize - Indicates whether the elements are being attached during session initialization.
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topicId (1, 1) int64
                elements (1, :) DataStormContract.ElementSpec
                initialize (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.ElementSpecSeq.write(os_, elements);
            os_.writeBool(initialize);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachElements', 0, false, os_, false, {}, context);
        end

        function future = attachElementsAsync(obj, topicId, elements, initialize, context)
            %ATTACHELEMENTSASYNC Attaches the specified elements to the subscribers of a topic.
            %
            %   This operation associates the provided elements, such as keys or filters, with the subscribers of the given
            %   topic.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic to which the elements belong.
            %       int64 scalar
            %     elements - The sequence of |ElementSpec| objects representing the elements to attach.
            %       DataStormContract.ElementSpec vector
            %     initialize - Indicates whether the elements are being attached during session initialization.
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also attachElements, Ice.Future.
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topicId (1, 1) int64
                elements (1, :) DataStormContract.ElementSpec
                initialize (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.ElementSpecSeq.write(os_, elements);
            os_.writeBool(initialize);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('attachElements', 0, false, os_, 0, [], {}, context);
        end

        function attachElementsAck(obj, topicId, elements, context)
            %ATTACHELEMENTSACK Acknowledges the attachment of elements to the session in response to a previous attachElements request.
            %
            %   This method confirms that the specified elements, such as keys or filters, have been successfully attached
            %   to the session.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic to which the elements belong.
            %       int64 scalar
            %     elements - A sequence of |ElementSpecAck| objects representing the confirmed attachments.
            %       DataStormContract.ElementSpecAck vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topicId (1, 1) int64
                elements (1, :) DataStormContract.ElementSpecAck
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.ElementSpecAckSeq.write(os_, elements);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachElementsAck', 0, false, os_, false, {}, context);
        end

        function future = attachElementsAckAsync(obj, topicId, elements, context)
            %ATTACHELEMENTSACKASYNC Acknowledges the attachment of elements to the session in response to a previous attachElements request.
            %
            %   This method confirms that the specified elements, such as keys or filters, have been successfully attached
            %   to the session.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic to which the elements belong.
            %       int64 scalar
            %     elements - A sequence of |ElementSpecAck| objects representing the confirmed attachments.
            %       DataStormContract.ElementSpecAck vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also attachElementsAck, Ice.Future.
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topicId (1, 1) int64
                elements (1, :) DataStormContract.ElementSpecAck
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.ElementSpecAckSeq.write(os_, elements);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('attachElementsAck', 0, false, os_, 0, [], {}, context);
        end

        function detachElements(obj, topicId, elements, context)
            %DETACHELEMENTS Instructs the peer to detach specific elements associated with a topic.
            %
            %   This operation is invoked when the specified elements, such as keys or filters, are no longer valid
            %   and should be removed from the peer's session.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic to which the elements belong.
            %       int64 scalar
            %     elements - A sequence of element identifiers representing the keys or filters to detach.
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topicId (1, 1) int64
                elements (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            os_.writeLongSeq(elements);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('detachElements', 0, false, os_, false, {}, context);
        end

        function future = detachElementsAsync(obj, topicId, elements, context)
            %DETACHELEMENTSASYNC Instructs the peer to detach specific elements associated with a topic.
            %
            %   This operation is invoked when the specified elements, such as keys or filters, are no longer valid
            %   and should be removed from the peer's session.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic to which the elements belong.
            %       int64 scalar
            %     elements - A sequence of element identifiers representing the keys or filters to detach.
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also detachElements, Ice.Future.
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topicId (1, 1) int64
                elements (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            os_.writeLongSeq(elements);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('detachElements', 0, false, os_, 0, [], {}, context);
        end

        function initSamples(obj, topicId, samples, context)
            %INITSAMPLES Initializes the subscriber with the publisher queued samples for a topic during session establishment.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic.
            %       int64 scalar
            %     samples - A sequence of |DataSamples| containing the queued samples to initialize the subscriber.
            %       DataStormContract.DataSamples vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topicId (1, 1) int64
                samples (1, :) DataStormContract.DataSamples
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.DataSamplesSeq.write(os_, samples);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initSamples', 0, false, os_, false, {}, context);
        end

        function future = initSamplesAsync(obj, topicId, samples, context)
            %INITSAMPLESASYNC Initializes the subscriber with the publisher queued samples for a topic during session establishment.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic.
            %       int64 scalar
            %     samples - A sequence of |DataSamples| containing the queued samples to initialize the subscriber.
            %       DataStormContract.DataSamples vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also initSamples, Ice.Future.
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                topicId (1, 1) int64
                samples (1, :) DataStormContract.DataSamples
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            DataStormContract.DataSamplesSeq.write(os_, samples);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('initSamples', 0, false, os_, 0, [], {}, context);
        end

        function disconnected(obj, context)
            %DISCONNECTED Notifies the peer that the session is being disconnected.
            %
            %   For sessions established through a relay node, this operation is invoked by the relay node if the connection
            %   between the relay node and the target node is lost.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('disconnected', 0, false, [], false, {}, context);
        end

        function future = disconnectedAsync(obj, context)
            %DISCONNECTEDASYNC Notifies the peer that the session is being disconnected.
            %
            %   For sessions established through a relay node, this operation is invoked by the relay node if the connection
            %   between the relay node and the target node is lost.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also disconnected, Ice.Future.
            
            arguments
                obj (1, 1) DataStormContract.SessionPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('disconnected', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::DataStormContract::Session';
        end

        function r = ice_read(is)
            r = is.readProxy('DataStormContract.SessionPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::DataStormContract::Session.
            %
            %   Input Arguments
            %     p - The proxy to check.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %     context - The request context (optional).
            %       dictionary(string, string) scalar
            %
            %   Output Arguments
            %     r - A DataStormContract.SessionPrx scalar if the target object implements Slice interface 
            %       ::DataStormContract::Session; otherwise, an empty array of DataStormContract.SessionPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, DataStormContract.SessionPrx.ice_staticId(), 'DataStormContract.SessionPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a DataStormContract.SessionPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new DataStormContract.SessionPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'DataStormContract.SessionPrx', varargin{:});
        end
    end
end
