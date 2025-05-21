% TopicPrx   Summary of TopicPrx
%
% Represents an IceStorm topic. Publishers publish data to a topic (via the topic's publisher object), and
% subscribers subscribe to a topic.
%
% TopicPrx Methods:
%   getName - Gets the name of this topic.
%   getNameAsync - Gets the name of this topic.
%   getPublisher - Gets a proxy to a publisher object for this topic.
%   getPublisherAsync - Gets a proxy to a publisher object for this topic.
%   getNonReplicatedPublisher - Gets a non-replicated proxy to a publisher object for this topic.
%   getNonReplicatedPublisherAsync - Gets a non-replicated proxy to a publisher object for this topic.
%   subscribeAndGetPublisher - Subscribes to this topic.
%   subscribeAndGetPublisherAsync - Subscribes to this topic.
%   unsubscribe - Unsubscribes the provided @p subscriber from this topic.
%   unsubscribeAsync - Unsubscribes the provided @p subscriber from this topic.
%   link - Creates a link to another topic.
%   linkAsync - Creates a link to another topic.
%   unlink - Destroys a link from this topic to the provided topic.
%   unlinkAsync - Destroys a link from this topic to the provided topic.
%   getLinkInfoSeq - Gets information on the current links.
%   getLinkInfoSeqAsync - Gets information on the current links.
%   getSubscribers - Gets the list of subscribers for this topic.
%   getSubscribersAsync - Gets the list of subscribers for this topic.
%   destroy - Destroys this topic.
%   destroyAsync - Destroys this topic.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also IceStorm.TopicManager

% Copyright (c) ZeroC, Inc.
% Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

classdef TopicPrx < Ice.ObjectPrx
    methods
        function result = getName(obj, varargin)
            % getName   Gets the name of this topic.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char) - The name of the topic.
            %
            % See also IceStorm.TopicManager.create
            
            is_ = obj.iceInvoke('getName', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getNameAsync(obj, varargin)
            % getNameAsync   Gets the name of this topic.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % See also IceStorm.TopicManager.create
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getName', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getPublisher(obj, varargin)
            % getPublisher   Gets a proxy to a publisher object for this topic. To publish data to a topic, a publisher calls this
            % operation and then creates a proxy with the publisher type from this proxy. If a replicated IceStorm
            % deployment is used, this call may return a replicated proxy.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - A proxy to publish data on this topic. This proxy is never null.
            
            is_ = obj.iceInvoke('getPublisher', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = getPublisherAsync(obj, varargin)
            % getPublisherAsync   Gets a proxy to a publisher object for this topic. To publish data to a topic, a publisher calls this
            % operation and then creates a proxy with the publisher type from this proxy. If a replicated IceStorm
            % deployment is used, this call may return a replicated proxy.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getPublisher', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getNonReplicatedPublisher(obj, varargin)
            % getNonReplicatedPublisher   Gets a non-replicated proxy to a publisher object for this topic. To publish data to a topic, a publisher
            % calls this operation and then creates a proxy with the publisher type from this proxy.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - A proxy to publish data on this topic. This proxy is never null.
            
            is_ = obj.iceInvoke('getNonReplicatedPublisher', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = getNonReplicatedPublisherAsync(obj, varargin)
            % getNonReplicatedPublisherAsync   Gets a non-replicated proxy to a publisher object for this topic. To publish data to a topic, a publisher
            % calls this operation and then creates a proxy with the publisher type from this proxy.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getNonReplicatedPublisher', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = subscribeAndGetPublisher(obj, theQoS, subscriber, varargin)
            % subscribeAndGetPublisher   Subscribes to this topic.
            %
            % Parameters:
            %   theQoS (containers.Map) - The quality of service parameters for this subscription.
            %   subscriber (Ice.ObjectPrx) - The subscriber's proxy. This proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - The per-subscriber publisher proxy. This proxy is never null.
            %
            % Exceptions:
            %   IceStorm.AlreadySubscribed - Thrown when @p subscriber is already subscribed.
            %   IceStorm.BadQoS - Thrown when @p theQoS is unavailable or invalid.
            %
            % See also unsubscribe
            
            os_ = obj.iceStartWriteParams([]);
            IceStorm.QoS.write(os_, theQoS);
            os_.writeProxy(subscriber);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('subscribeAndGetPublisher', 0, true, os_, true, IceStorm.TopicPrx.subscribeAndGetPublisher_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = subscribeAndGetPublisherAsync(obj, theQoS, subscriber, varargin)
            % subscribeAndGetPublisherAsync   Subscribes to this topic.
            %
            % Parameters:
            %   theQoS (containers.Map) - The quality of service parameters for this subscription.
            %   subscriber (Ice.ObjectPrx) - The subscriber's proxy. This proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceStorm.AlreadySubscribed - Thrown when @p subscriber is already subscribed.
            %   IceStorm.BadQoS - Thrown when @p theQoS is unavailable or invalid.
            %
            % See also unsubscribe
            
            os_ = obj.iceStartWriteParams([]);
            IceStorm.QoS.write(os_, theQoS);
            os_.writeProxy(subscriber);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('subscribeAndGetPublisher', 0, true, os_, 1, @unmarshal, IceStorm.TopicPrx.subscribeAndGetPublisher_ex_, varargin{:});
        end
        function unsubscribe(obj, subscriber, varargin)
            % unsubscribe   Unsubscribes the provided @p subscriber from this topic.
            %
            % Parameters:
            %   subscriber (Ice.ObjectPrx) - A proxy to an existing subscriber. This proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % See also subscribeAndGetPublisher
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(subscriber);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('unsubscribe', 2, false, os_, false, {}, varargin{:});
        end
        function r_ = unsubscribeAsync(obj, subscriber, varargin)
            % unsubscribeAsync   Unsubscribes the provided @p subscriber from this topic.
            %
            % Parameters:
            %   subscriber (Ice.ObjectPrx) - A proxy to an existing subscriber. This proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % See also subscribeAndGetPublisher
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(subscriber);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('unsubscribe', 2, false, os_, 0, [], {}, varargin{:});
        end
        function link(obj, linkTo, cost, varargin)
            % link   Creates a link to another topic. All events originating on this topic will also be sent to the other topic.
            %
            % Parameters:
            %   linkTo (IceStorm.TopicPrx) - The topic to link to. This proxy is never null.
            %   cost (int32) - The cost of the link.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceStorm.LinkExists - Thrown when a link to @p linkTo already exists.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(linkTo);
            os_.writeInt(cost);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('link', 0, true, os_, false, IceStorm.TopicPrx.link_ex_, varargin{:});
        end
        function r_ = linkAsync(obj, linkTo, cost, varargin)
            % linkAsync   Creates a link to another topic. All events originating on this topic will also be sent to the other topic.
            %
            % Parameters:
            %   linkTo (IceStorm.TopicPrx) - The topic to link to. This proxy is never null.
            %   cost (int32) - The cost of the link.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceStorm.LinkExists - Thrown when a link to @p linkTo already exists.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(linkTo);
            os_.writeInt(cost);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('link', 0, true, os_, 0, [], IceStorm.TopicPrx.link_ex_, varargin{:});
        end
        function unlink(obj, linkTo, varargin)
            % unlink   Destroys a link from this topic to the provided topic.
            %
            % Parameters:
            %   linkTo (IceStorm.TopicPrx) - The topic to destroy the link to. This proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceStorm.NoSuchLink - Thrown when a link to @p linkTo does not exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(linkTo);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('unlink', 0, true, os_, false, IceStorm.TopicPrx.unlink_ex_, varargin{:});
        end
        function r_ = unlinkAsync(obj, linkTo, varargin)
            % unlinkAsync   Destroys a link from this topic to the provided topic.
            %
            % Parameters:
            %   linkTo (IceStorm.TopicPrx) - The topic to destroy the link to. This proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceStorm.NoSuchLink - Thrown when a link to @p linkTo does not exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(linkTo);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('unlink', 0, true, os_, 0, [], IceStorm.TopicPrx.unlink_ex_, varargin{:});
        end
        function result = getLinkInfoSeq(obj, varargin)
            % getLinkInfoSeq   Gets information on the current links.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceStorm.LinkInfoSeq) - A sequence of LinkInfo objects.
            
            is_ = obj.iceInvoke('getLinkInfoSeq', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceStorm.LinkInfoSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getLinkInfoSeqAsync(obj, varargin)
            % getLinkInfoSeqAsync   Gets information on the current links.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceStorm.LinkInfoSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getLinkInfoSeq', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getSubscribers(obj, varargin)
            % getSubscribers   Gets the list of subscribers for this topic.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.IdentitySeq) - The sequence of Ice identities for the subscriber objects.
            
            is_ = obj.iceInvoke('getSubscribers', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.IdentitySeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getSubscribersAsync(obj, varargin)
            % getSubscribersAsync   Gets the list of subscribers for this topic.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Ice.IdentitySeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getSubscribers', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function destroy(obj, varargin)
            % destroy   Destroys this topic.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('destroy', 0, false, [], false, {}, varargin{:});
        end
        function r_ = destroyAsync(obj, varargin)
            % destroyAsync   Destroys this topic.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('destroy', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceStorm::Topic';
        end
        function r = ice_read(is)
            r = is.readProxy('IceStorm.TopicPrx');
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
            % Returns (IceStorm.TopicPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStorm.TopicPrx.ice_staticId(), 'IceStorm.TopicPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceStorm.TopicPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStorm.TopicPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        subscribeAndGetPublisher_ex_ = { 'IceStorm.AlreadySubscribed', 'IceStorm.BadQoS' }
        link_ex_ = { 'IceStorm.LinkExists' }
        unlink_ex_ = { 'IceStorm.NoSuchLink' }
    end
end
