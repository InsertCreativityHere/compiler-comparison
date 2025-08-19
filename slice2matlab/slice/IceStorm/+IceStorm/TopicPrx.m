classdef TopicPrx < Ice.ObjectPrx
    %TOPICPRX Represents an IceStorm topic. Publishers publish data to a topic (via the topic's publisher object), and
    %   subscribers subscribe to a topic.
    %
    %   Creation
    %     Syntax
    %       prx = IceStorm.TopicPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   TopicPrx Methods:
    %     destroy - Destroys this topic.
    %     destroyAsync - An asynchronous destroy.
    %     getLinkInfoSeq - Gets information on the current links.
    %     getLinkInfoSeqAsync - An asynchronous getLinkInfoSeq.
    %     getName - Gets the name of this topic.
    %     getNameAsync - An asynchronous getName.
    %     getNonReplicatedPublisher - Gets a non-replicated proxy to a publisher object for this topic.
    %     getNonReplicatedPublisherAsync - An asynchronous getNonReplicatedPublisher.
    %     getPublisher - Gets a proxy to a publisher object for this topic.
    %     getPublisherAsync - An asynchronous getPublisher.
    %     getSubscribers - Gets the list of subscribers for this topic.
    %     getSubscribersAsync - An asynchronous getSubscribers.
    %     link - Creates a link to another topic.
    %     linkAsync - An asynchronous link.
    %     subscribeAndGetPublisher - Subscribes to this topic.
    %     subscribeAndGetPublisherAsync - An asynchronous subscribeAndGetPublisher.
    %     unlink - Destroys a link from this topic to the provided topic.
    %     unlinkAsync - An asynchronous unlink.
    %     unsubscribe - Unsubscribes the provided |subscriber| from this topic.
    %     unsubscribeAsync - An asynchronous unsubscribe.
    %
    %   TopicPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceStorm::Topic.
    %     uncheckedCast - Creates a TopicPrx from another proxy without any validation.
    %
    %   See also IceStorm.TopicManager
    %
    %   Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getName(obj, context)
            %GETNAME Gets the name of this topic.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The name of the topic.
            %       character vector
            %
            %   See also IceStorm.TopicManager.create
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getName', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getNameAsync(obj, context)
            %GETNAMEASYNC Gets the name of this topic.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getName, Ice.Future.
            %
            %   See also IceStorm.TopicManager.create
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getName', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getPublisher(obj, context)
            %GETPUBLISHER Gets a proxy to a publisher object for this topic. To publish data to a topic, a publisher calls this
            %   operation and then creates a proxy with the publisher type from this proxy. If a replicated IceStorm
            %   deployment is used, this call may return a replicated proxy.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to publish data on this topic. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getPublisher', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = getPublisherAsync(obj, context)
            %GETPUBLISHERASYNC Gets a proxy to a publisher object for this topic. To publish data to a topic, a publisher calls this
            %   operation and then creates a proxy with the publisher type from this proxy. If a replicated IceStorm
            %   deployment is used, this call may return a replicated proxy.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getPublisher, Ice.Future.
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getPublisher', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getNonReplicatedPublisher(obj, context)
            %GETNONREPLICATEDPUBLISHER Gets a non-replicated proxy to a publisher object for this topic. To publish data to a topic, a publisher
            %   calls this operation and then creates a proxy with the publisher type from this proxy.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to publish data on this topic. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getNonReplicatedPublisher', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = getNonReplicatedPublisherAsync(obj, context)
            %GETNONREPLICATEDPUBLISHERASYNC Gets a non-replicated proxy to a publisher object for this topic. To publish data to a topic, a publisher
            %   calls this operation and then creates a proxy with the publisher type from this proxy.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getNonReplicatedPublisher, Ice.Future.
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getNonReplicatedPublisher', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = subscribeAndGetPublisher(obj, theQoS, subscriber, context)
            %SUBSCRIBEANDGETPUBLISHER Subscribes to this topic.
            %
            %   Input Arguments
            %     theQoS - The quality of service parameters for this subscription.
            %       string, string) scalar
            %     subscriber - The subscriber's proxy. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The per-subscriber publisher proxy. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %
            %   Exceptions
            %     IceStorm.AlreadySubscribed - Thrown when |subscriber| is already subscribed.
            %     IceStorm.BadQoS - Thrown when |theQoS| is unavailable or invalid.
            %
            %   See also unsubscribe
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                theQoS (1, 1) dictionary
                subscriber Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceStorm.QoS.write(os_, theQoS);
            os_.writeProxy(subscriber);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('subscribeAndGetPublisher', 0, true, os_, true, IceStorm.TopicPrx.subscribeAndGetPublisher_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = subscribeAndGetPublisherAsync(obj, theQoS, subscriber, context)
            %SUBSCRIBEANDGETPUBLISHERASYNC Subscribes to this topic.
            %
            %   Input Arguments
            %     theQoS - The quality of service parameters for this subscription.
            %       string, string) scalar
            %     subscriber - The subscriber's proxy. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also subscribeAndGetPublisher, Ice.Future.
            %
            %   See also unsubscribe
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                theQoS (1, 1) dictionary
                subscriber Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceStorm.QoS.write(os_, theQoS);
            os_.writeProxy(subscriber);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('subscribeAndGetPublisher', 0, true, os_, 1, @unmarshal, IceStorm.TopicPrx.subscribeAndGetPublisher_ex_, context);
        end

        function unsubscribe(obj, subscriber, context)
            %UNSUBSCRIBE Unsubscribes the provided |subscriber| from this topic.
            %
            %   Input Arguments
            %     subscriber - A proxy to an existing subscriber. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   See also subscribeAndGetPublisher
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                subscriber Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(subscriber);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('unsubscribe', 2, false, os_, false, {}, context);
        end

        function future = unsubscribeAsync(obj, subscriber, context)
            %UNSUBSCRIBEASYNC Unsubscribes the provided |subscriber| from this topic.
            %
            %   Input Arguments
            %     subscriber - A proxy to an existing subscriber. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also unsubscribe, Ice.Future.
            %
            %   See also subscribeAndGetPublisher
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                subscriber Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(subscriber);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('unsubscribe', 2, false, os_, 0, [], {}, context);
        end

        function link(obj, linkTo, cost, context)
            %LINK Creates a link to another topic. All events originating on this topic will also be sent to the other topic.
            %
            %   Input Arguments
            %     linkTo - The topic to link to. This proxy is never null.
            %       IceStorm.TopicPrx scalar | empty array of IceStorm.TopicPrx
            %     cost - The cost of the link.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceStorm.LinkExists - Thrown when a link to |linkTo| already exists.
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                linkTo IceStorm.TopicPrx {mustBeScalarOrEmpty}
                cost (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(linkTo);
            os_.writeInt(cost);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('link', 0, true, os_, false, IceStorm.TopicPrx.link_ex_, context);
        end

        function future = linkAsync(obj, linkTo, cost, context)
            %LINKASYNC Creates a link to another topic. All events originating on this topic will also be sent to the other topic.
            %
            %   Input Arguments
            %     linkTo - The topic to link to. This proxy is never null.
            %       IceStorm.TopicPrx scalar | empty array of IceStorm.TopicPrx
            %     cost - The cost of the link.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also link, Ice.Future.
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                linkTo IceStorm.TopicPrx {mustBeScalarOrEmpty}
                cost (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(linkTo);
            os_.writeInt(cost);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('link', 0, true, os_, 0, [], IceStorm.TopicPrx.link_ex_, context);
        end

        function unlink(obj, linkTo, context)
            %UNLINK Destroys a link from this topic to the provided topic.
            %
            %   Input Arguments
            %     linkTo - The topic to destroy the link to. This proxy is never null.
            %       IceStorm.TopicPrx scalar | empty array of IceStorm.TopicPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceStorm.NoSuchLink - Thrown when a link to |linkTo| does not exist.
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                linkTo IceStorm.TopicPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(linkTo);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('unlink', 0, true, os_, false, IceStorm.TopicPrx.unlink_ex_, context);
        end

        function future = unlinkAsync(obj, linkTo, context)
            %UNLINKASYNC Destroys a link from this topic to the provided topic.
            %
            %   Input Arguments
            %     linkTo - The topic to destroy the link to. This proxy is never null.
            %       IceStorm.TopicPrx scalar | empty array of IceStorm.TopicPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also unlink, Ice.Future.
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                linkTo IceStorm.TopicPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(linkTo);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('unlink', 0, true, os_, 0, [], IceStorm.TopicPrx.unlink_ex_, context);
        end

        function returnValue = getLinkInfoSeq(obj, context)
            %GETLINKINFOSEQ Gets information on the current links.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A sequence of LinkInfo objects.
            %       IceStorm.LinkInfo vector
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getLinkInfoSeq', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = IceStorm.LinkInfoSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = getLinkInfoSeqAsync(obj, context)
            %GETLINKINFOSEQASYNC Gets information on the current links.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getLinkInfoSeq, Ice.Future.
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceStorm.LinkInfoSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getLinkInfoSeq', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getSubscribers(obj, context)
            %GETSUBSCRIBERS Gets the list of subscribers for this topic.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The sequence of Ice identities for the subscriber objects.
            %       Ice.Identity vector
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getSubscribers', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Ice.IdentitySeq.read(is_);
            is_.endEncapsulation();
        end

        function future = getSubscribersAsync(obj, context)
            %GETSUBSCRIBERSASYNC Gets the list of subscribers for this topic.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getSubscribers, Ice.Future.
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Ice.IdentitySeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getSubscribers', 0, true, [], 1, @unmarshal, {}, context);
        end

        function destroy(obj, context)
            %DESTROY Destroys this topic.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('destroy', 0, false, [], false, {}, context);
        end

        function future = destroyAsync(obj, context)
            %DESTROYASYNC Destroys this topic.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also destroy, Ice.Future.
            
            arguments
                obj (1, 1) IceStorm.TopicPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('destroy', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceStorm::Topic';
        end

        function r = ice_read(is)
            r = is.readProxy('IceStorm.TopicPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceStorm::Topic.
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
            %     r - A IceStorm.TopicPrx scalar if the target object implements Slice interface 
            %       ::IceStorm::Topic; otherwise, an empty array of IceStorm.TopicPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStorm.TopicPrx.ice_staticId(), 'IceStorm.TopicPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceStorm.TopicPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceStorm.TopicPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStorm.TopicPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        subscribeAndGetPublisher_ex_ = { 'IceStorm.AlreadySubscribed', 'IceStorm.BadQoS' }
        link_ex_ = { 'IceStorm.LinkExists' }
        unlink_ex_ = { 'IceStorm.NoSuchLink' }
    end
end
