classdef ReplicaObserverPrx < Ice.ObjectPrx
    %REPLICAOBSERVERPRX The replica observer.
    %
    %   Creation
    %     Syntax
    %       prx = IceStormElection.ReplicaObserverPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ReplicaObserverPrx Methods:
    %     addSubscriber - Add a subscriber to a topic.
    %     addSubscriberAsync - An asynchronous addSubscriber.
    %     createTopic - Create the topic with the given name.
    %     createTopicAsync - An asynchronous createTopic.
    %     destroyTopic - Destroy the topic with the given name.
    %     destroyTopicAsync - An asynchronous destroyTopic.
    %     init - Initialize the observer.
    %     initAsync - An asynchronous init.
    %     removeSubscriber - Remove a subscriber from a topic.
    %     removeSubscriberAsync - An asynchronous removeSubscriber.
    %
    %   ReplicaObserverPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceStormElection::ReplicaObserver.
    %     uncheckedCast - Creates a ReplicaObserverPrx from another proxy without any validation.
    %
    %   Generated from Election.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function init(obj, llu, content, context)
            %INIT Initialize the observer.
            %
            %   Input Arguments
            %     llu - The last log update seen by the master.
            %       IceStormElection.LogUpdate scalar
            %     content - The topic content.
            %       IceStormElection.TopicContent vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceStormElection.ObserverInconsistencyException - Raised if an inconsistency was detected.
            
            arguments
                obj (1, 1) IceStormElection.ReplicaObserverPrx
                llu (1, 1) IceStormElection.LogUpdate
                content (1, :) IceStormElection.TopicContent
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            IceStormElection.TopicContentSeq.write(os_, content);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('init', 0, true, os_, false, IceStormElection.ReplicaObserverPrx.init_ex_, context);
        end

        function future = initAsync(obj, llu, content, context)
            %INITASYNC Initialize the observer.
            %
            %   Input Arguments
            %     llu - The last log update seen by the master.
            %       IceStormElection.LogUpdate scalar
            %     content - The topic content.
            %       IceStormElection.TopicContent vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also init, Ice.Future.
            
            arguments
                obj (1, 1) IceStormElection.ReplicaObserverPrx
                llu (1, 1) IceStormElection.LogUpdate
                content (1, :) IceStormElection.TopicContent
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            IceStormElection.TopicContentSeq.write(os_, content);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('init', 0, true, os_, 0, [], IceStormElection.ReplicaObserverPrx.init_ex_, context);
        end

        function createTopic(obj, llu, name, context)
            %CREATETOPIC Create the topic with the given name.
            %
            %   Input Arguments
            %     llu - The log update token.
            %       IceStormElection.LogUpdate scalar
            %     name - The topic name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceStormElection.ObserverInconsistencyException - Raised if an inconsistency was detected.
            
            arguments
                obj (1, 1) IceStormElection.ReplicaObserverPrx
                llu (1, 1) IceStormElection.LogUpdate
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('createTopic', 0, true, os_, false, IceStormElection.ReplicaObserverPrx.createTopic_ex_, context);
        end

        function future = createTopicAsync(obj, llu, name, context)
            %CREATETOPICASYNC Create the topic with the given name.
            %
            %   Input Arguments
            %     llu - The log update token.
            %       IceStormElection.LogUpdate scalar
            %     name - The topic name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also createTopic, Ice.Future.
            
            arguments
                obj (1, 1) IceStormElection.ReplicaObserverPrx
                llu (1, 1) IceStormElection.LogUpdate
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('createTopic', 0, true, os_, 0, [], IceStormElection.ReplicaObserverPrx.createTopic_ex_, context);
        end

        function destroyTopic(obj, llu, name, context)
            %DESTROYTOPIC Destroy the topic with the given name.
            %
            %   Input Arguments
            %     llu - The log update token.
            %       IceStormElection.LogUpdate scalar
            %     name - The topic name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceStormElection.ObserverInconsistencyException - Raised if an inconsistency was detected.
            
            arguments
                obj (1, 1) IceStormElection.ReplicaObserverPrx
                llu (1, 1) IceStormElection.LogUpdate
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('destroyTopic', 0, true, os_, false, IceStormElection.ReplicaObserverPrx.destroyTopic_ex_, context);
        end

        function future = destroyTopicAsync(obj, llu, name, context)
            %DESTROYTOPICASYNC Destroy the topic with the given name.
            %
            %   Input Arguments
            %     llu - The log update token.
            %       IceStormElection.LogUpdate scalar
            %     name - The topic name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also destroyTopic, Ice.Future.
            
            arguments
                obj (1, 1) IceStormElection.ReplicaObserverPrx
                llu (1, 1) IceStormElection.LogUpdate
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('destroyTopic', 0, true, os_, 0, [], IceStormElection.ReplicaObserverPrx.destroyTopic_ex_, context);
        end

        function addSubscriber(obj, llu, topic, record, context)
            %ADDSUBSCRIBER Add a subscriber to a topic.
            %
            %   Input Arguments
            %     llu - The log update token.
            %       IceStormElection.LogUpdate scalar
            %     topic - The topic name to which to add the subscriber.
            %       character vector
            %     record - The subscriber information.
            %       IceStorm.SubscriberRecord scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceStormElection.ObserverInconsistencyException - Raised if an inconsistency was detected.
            
            arguments
                obj (1, 1) IceStormElection.ReplicaObserverPrx
                llu (1, 1) IceStormElection.LogUpdate
                topic (1, :) char
                record (1, 1) IceStorm.SubscriberRecord
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeString(topic);
            IceStorm.SubscriberRecord.ice_write(os_, record);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('addSubscriber', 0, true, os_, false, IceStormElection.ReplicaObserverPrx.addSubscriber_ex_, context);
        end

        function future = addSubscriberAsync(obj, llu, topic, record, context)
            %ADDSUBSCRIBERASYNC Add a subscriber to a topic.
            %
            %   Input Arguments
            %     llu - The log update token.
            %       IceStormElection.LogUpdate scalar
            %     topic - The topic name to which to add the subscriber.
            %       character vector
            %     record - The subscriber information.
            %       IceStorm.SubscriberRecord scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also addSubscriber, Ice.Future.
            
            arguments
                obj (1, 1) IceStormElection.ReplicaObserverPrx
                llu (1, 1) IceStormElection.LogUpdate
                topic (1, :) char
                record (1, 1) IceStorm.SubscriberRecord
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeString(topic);
            IceStorm.SubscriberRecord.ice_write(os_, record);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('addSubscriber', 0, true, os_, 0, [], IceStormElection.ReplicaObserverPrx.addSubscriber_ex_, context);
        end

        function removeSubscriber(obj, llu, topic, subscribers, context)
            %REMOVESUBSCRIBER Remove a subscriber from a topic.
            %
            %   Input Arguments
            %     llu - The log update token.
            %       IceStormElection.LogUpdate scalar
            %     topic - The topic name.
            %       character vector
            %     subscribers - The identities of the subscribers to remove.
            %       Ice.Identity vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceStormElection.ObserverInconsistencyException - Raised if an inconsistency was detected.
            
            arguments
                obj (1, 1) IceStormElection.ReplicaObserverPrx
                llu (1, 1) IceStormElection.LogUpdate
                topic (1, :) char
                subscribers (1, :) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeString(topic);
            Ice.IdentitySeq.write(os_, subscribers);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('removeSubscriber', 0, true, os_, false, IceStormElection.ReplicaObserverPrx.removeSubscriber_ex_, context);
        end

        function future = removeSubscriberAsync(obj, llu, topic, subscribers, context)
            %REMOVESUBSCRIBERASYNC Remove a subscriber from a topic.
            %
            %   Input Arguments
            %     llu - The log update token.
            %       IceStormElection.LogUpdate scalar
            %     topic - The topic name.
            %       character vector
            %     subscribers - The identities of the subscribers to remove.
            %       Ice.Identity vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also removeSubscriber, Ice.Future.
            
            arguments
                obj (1, 1) IceStormElection.ReplicaObserverPrx
                llu (1, 1) IceStormElection.LogUpdate
                topic (1, :) char
                subscribers (1, :) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeString(topic);
            Ice.IdentitySeq.write(os_, subscribers);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('removeSubscriber', 0, true, os_, 0, [], IceStormElection.ReplicaObserverPrx.removeSubscriber_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceStormElection::ReplicaObserver';
        end

        function r = ice_read(is)
            r = is.readProxy('IceStormElection.ReplicaObserverPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceStormElection::ReplicaObserver.
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
            %     r - A IceStormElection.ReplicaObserverPrx scalar if the target object implements Slice interface 
            %       ::IceStormElection::ReplicaObserver; otherwise, an empty array of IceStormElection.ReplicaObserverPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStormElection.ReplicaObserverPrx.ice_staticId(), 'IceStormElection.ReplicaObserverPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceStormElection.ReplicaObserverPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceStormElection.ReplicaObserverPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStormElection.ReplicaObserverPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        init_ex_ = { 'IceStormElection.ObserverInconsistencyException' }
        createTopic_ex_ = { 'IceStormElection.ObserverInconsistencyException' }
        destroyTopic_ex_ = { 'IceStormElection.ObserverInconsistencyException' }
        addSubscriber_ex_ = { 'IceStormElection.ObserverInconsistencyException' }
        removeSubscriber_ex_ = { 'IceStormElection.ObserverInconsistencyException' }
    end
end
