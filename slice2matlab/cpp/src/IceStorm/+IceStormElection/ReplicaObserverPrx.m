% ReplicaObserverPrx   Summary of ReplicaObserverPrx
%
% The replica observer.
%
% ReplicaObserverPrx Methods:
%   init - Initialize the observer.
%   initAsync - Initialize the observer.
%   createTopic - Create the topic with the given name.
%   createTopicAsync - Create the topic with the given name.
%   destroyTopic - Destroy the topic with the given name.
%   destroyTopicAsync - Destroy the topic with the given name.
%   addSubscriber - Add a subscriber to a topic.
%   addSubscriberAsync - Add a subscriber to a topic.
%   removeSubscriber - Remove a subscriber from a topic.
%   removeSubscriberAsync - Remove a subscriber from a topic.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Election.ice by slice2matlab version 3.7.10

classdef ReplicaObserverPrx < Ice.ObjectPrx
    methods
        function init(obj, llu, content, varargin)
            % init   Initialize the observer.
            %
            % Parameters:
            %   llu (IceStormElection.LogUpdate) - The last log update seen by the master.
            %   content (IceStormElection.TopicContentSeq) - The topic content.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceStormElection.ObserverInconsistencyException - Raised if an
            %     inconsisency was detected.
            
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            IceStormElection.TopicContentSeq.write(os_, content);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('init', 0, true, os_, false, IceStormElection.ReplicaObserverPrx.init_ex_, varargin{:});
        end
        function r_ = initAsync(obj, llu, content, varargin)
            % initAsync   Initialize the observer.
            %
            % Parameters:
            %   llu (IceStormElection.LogUpdate) - The last log update seen by the master.
            %   content (IceStormElection.TopicContentSeq) - The topic content.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceStormElection.ObserverInconsistencyException - Raised if an
            %     inconsisency was detected.
            
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            IceStormElection.TopicContentSeq.write(os_, content);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('init', 0, true, os_, 0, [], IceStormElection.ReplicaObserverPrx.init_ex_, varargin{:});
        end
        function createTopic(obj, llu, name, varargin)
            % createTopic   Create the topic with the given name.
            %
            % Parameters:
            %   llu (IceStormElection.LogUpdate) - The log update token.
            %   name (char) - The topic name.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceStormElection.ObserverInconsistencyException - Raised if an
            %     inconsisency was detected.
            
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('createTopic', 0, true, os_, false, IceStormElection.ReplicaObserverPrx.createTopic_ex_, varargin{:});
        end
        function r_ = createTopicAsync(obj, llu, name, varargin)
            % createTopicAsync   Create the topic with the given name.
            %
            % Parameters:
            %   llu (IceStormElection.LogUpdate) - The log update token.
            %   name (char) - The topic name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceStormElection.ObserverInconsistencyException - Raised if an
            %     inconsisency was detected.
            
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('createTopic', 0, true, os_, 0, [], IceStormElection.ReplicaObserverPrx.createTopic_ex_, varargin{:});
        end
        function destroyTopic(obj, llu, name, varargin)
            % destroyTopic   Destroy the topic with the given name.
            %
            % Parameters:
            %   llu (IceStormElection.LogUpdate) - The log update token.
            %   name (char) - The topic name.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceStormElection.ObserverInconsistencyException - Raised if an
            %     inconsisency was detected.
            
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('destroyTopic', 0, true, os_, false, IceStormElection.ReplicaObserverPrx.destroyTopic_ex_, varargin{:});
        end
        function r_ = destroyTopicAsync(obj, llu, name, varargin)
            % destroyTopicAsync   Destroy the topic with the given name.
            %
            % Parameters:
            %   llu (IceStormElection.LogUpdate) - The log update token.
            %   name (char) - The topic name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceStormElection.ObserverInconsistencyException - Raised if an
            %     inconsisency was detected.
            
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('destroyTopic', 0, true, os_, 0, [], IceStormElection.ReplicaObserverPrx.destroyTopic_ex_, varargin{:});
        end
        function addSubscriber(obj, llu, topic, record, varargin)
            % addSubscriber   Add a subscriber to a topic.
            %
            % Parameters:
            %   llu (IceStormElection.LogUpdate) - The log update token.
            %   topic (char) - The topic name to which to add the subscriber.
            %   record (IceStorm.SubscriberRecord) - The subscriber information.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceStormElection.ObserverInconsistencyException - Raised if an
            %     inconsisency was detected.
            
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeString(topic);
            IceStorm.SubscriberRecord.ice_write(os_, record);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('addSubscriber', 0, true, os_, false, IceStormElection.ReplicaObserverPrx.addSubscriber_ex_, varargin{:});
        end
        function r_ = addSubscriberAsync(obj, llu, topic, record, varargin)
            % addSubscriberAsync   Add a subscriber to a topic.
            %
            % Parameters:
            %   llu (IceStormElection.LogUpdate) - The log update token.
            %   topic (char) - The topic name to which to add the subscriber.
            %   record (IceStorm.SubscriberRecord) - The subscriber information.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceStormElection.ObserverInconsistencyException - Raised if an
            %     inconsisency was detected.
            
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeString(topic);
            IceStorm.SubscriberRecord.ice_write(os_, record);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('addSubscriber', 0, true, os_, 0, [], IceStormElection.ReplicaObserverPrx.addSubscriber_ex_, varargin{:});
        end
        function removeSubscriber(obj, llu, topic, subscribers, varargin)
            % removeSubscriber   Remove a subscriber from a topic.
            %
            % Parameters:
            %   llu (IceStormElection.LogUpdate) - The log update token.
            %   topic (char)
            %   subscribers (Ice.IdentitySeq) - The identities of the subscribers to remove.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceStormElection.ObserverInconsistencyException - Raised if an inconsisency was detected.
            
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeString(topic);
            Ice.IdentitySeq.write(os_, subscribers);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('removeSubscriber', 0, true, os_, false, IceStormElection.ReplicaObserverPrx.removeSubscriber_ex_, varargin{:});
        end
        function r_ = removeSubscriberAsync(obj, llu, topic, subscribers, varargin)
            % removeSubscriberAsync   Remove a subscriber from a topic.
            %
            % Parameters:
            %   llu (IceStormElection.LogUpdate) - The log update token.
            %   topic (char)
            %   subscribers (Ice.IdentitySeq) - The identities of the subscribers to remove.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceStormElection.ObserverInconsistencyException - Raised if an inconsisency was detected.
            
            os_ = obj.iceStartWriteParams([]);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeString(topic);
            Ice.IdentitySeq.write(os_, subscribers);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('removeSubscriber', 0, true, os_, 0, [], IceStormElection.ReplicaObserverPrx.removeSubscriber_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceStormElection::ReplicaObserver';
        end
        function r = ice_read(is)
            r = is.readProxy('IceStormElection.ReplicaObserverPrx');
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
            % Returns (IceStormElection.ReplicaObserverPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStormElection.ReplicaObserverPrx.ice_staticId(), 'IceStormElection.ReplicaObserverPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceStormElection.ReplicaObserverPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStormElection.ReplicaObserverPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = ReplicaObserverPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        init_ex_ = { 'IceStormElection.ObserverInconsistencyException' }
        createTopic_ex_ = { 'IceStormElection.ObserverInconsistencyException' }
        destroyTopic_ex_ = { 'IceStormElection.ObserverInconsistencyException' }
        addSubscriber_ex_ = { 'IceStormElection.ObserverInconsistencyException' }
        removeSubscriber_ex_ = { 'IceStormElection.ObserverInconsistencyException' }
    end
end
