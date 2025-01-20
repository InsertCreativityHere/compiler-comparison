% NodePrx   Summary of NodePrx
%
% The Node interface allows DataStorm nodes to create publisher and subscriber sessions with each other.
%
% When a node has a writer for a topic that another node is reading, the node initiates the creation of a
% publisher session. Likewise, when a node has a reader for a topic that another node is writing, the node
% initiates the creation of a subscriber session.
%
% The publisher node hosts the publisher session servant, which is accessed by the subscriber node through a
% PublisherSession proxy. The subscriber node hosts the subscriber session servant, which is accessed by the
% publisher node through a SubscriberSession proxy.
%
% NodePrx Methods:
%   initiateCreateSession - Initiate the creation of a publisher session with a node, after the target node has announced a topic reader for which this node has a corresponding topic writer.
%   initiateCreateSessionAsync - Initiate the creation of a publisher session with a node, after the target node has announced a topic reader for which this node has a corresponding topic writer.
%   createSession - Initiates the creation of a subscriber session with a node.
%   createSessionAsync - Initiates the creation of a subscriber session with a node.
%   confirmCreateSession - Confirm the creation of a publisher session with a node.
%   confirmCreateSessionAsync - Confirm the creation of a publisher session with a node.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef NodePrx < Ice.ObjectPrx
    methods
        function initiateCreateSession(obj, publisher, varargin)
            % initiateCreateSession   Initiate the creation of a publisher session with a node, after the target node has announced a topic
            % reader for which this node has a corresponding topic writer.
            %
            % Parameters:
            %   publisher (DataStormContract.NodePrx) - The publisher node initiating the session. The proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % See also DataStormContract.Lookup.announceTopicReader
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(publisher);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initiateCreateSession', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = initiateCreateSessionAsync(obj, publisher, varargin)
            % initiateCreateSessionAsync   Initiate the creation of a publisher session with a node, after the target node has announced a topic
            % reader for which this node has a corresponding topic writer.
            %
            % Parameters:
            %   publisher (DataStormContract.NodePrx) - The publisher node initiating the session. The proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % See also DataStormContract.Lookup.announceTopicReader
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(publisher);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('initiateCreateSession', 0, false, os_, 0, [], {}, varargin{:});
        end
        function createSession(obj, subscriber, session, fromRelay, varargin)
            % createSession   Initiates the creation of a subscriber session with a node. The subscriber node sends this request to a
            % publisher node in one of the following scenarios:
            %
            % - The subscriber has received a topic writer announcement from the publisher and has a matching topic
            % reader.
            % - The publisher node has previously sent a initiateCreateSession request.
            %
            % The publisher node dispatching this request then sends a confirmCreateSession request to the subscriber node
            % to continue session establishment. If an active session already exists with the subscriber node, the
            % request is ignored.
            %
            % Parameters:
            %   subscriber (DataStormContract.NodePrx) - The subscriber node initiating the session. This proxy is never null.
            %   session (DataStormContract.SubscriberSessionPrx) - The subscriber session being created. This proxy is never null.
            %   fromRelay (logical) - Indicates whether the session is being created from a relay node.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(subscriber);
            os_.writeProxy(session);
            os_.writeBool(fromRelay);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('createSession', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = createSessionAsync(obj, subscriber, session, fromRelay, varargin)
            % createSessionAsync   Initiates the creation of a subscriber session with a node. The subscriber node sends this request to a
            % publisher node in one of the following scenarios:
            %
            % - The subscriber has received a topic writer announcement from the publisher and has a matching topic
            % reader.
            % - The publisher node has previously sent a initiateCreateSession request.
            %
            % The publisher node dispatching this request then sends a confirmCreateSession request to the subscriber node
            % to continue session establishment. If an active session already exists with the subscriber node, the
            % request is ignored.
            %
            % Parameters:
            %   subscriber (DataStormContract.NodePrx) - The subscriber node initiating the session. This proxy is never null.
            %   session (DataStormContract.SubscriberSessionPrx) - The subscriber session being created. This proxy is never null.
            %   fromRelay (logical) - Indicates whether the session is being created from a relay node.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(subscriber);
            os_.writeProxy(session);
            os_.writeBool(fromRelay);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('createSession', 0, false, os_, 0, [], {}, varargin{:});
        end
        function confirmCreateSession(obj, publisher, session, varargin)
            % confirmCreateSession   Confirm the creation of a publisher session with a node.
            %
            % Parameters:
            %   publisher (DataStormContract.NodePrx) - The publisher node confirming the session. The proxy is never null.
            %   session (DataStormContract.PublisherSessionPrx) - The publisher session being confirmed. The proxy is never null.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(publisher);
            os_.writeProxy(session);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('confirmCreateSession', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = confirmCreateSessionAsync(obj, publisher, session, varargin)
            % confirmCreateSessionAsync   Confirm the creation of a publisher session with a node.
            %
            % Parameters:
            %   publisher (DataStormContract.NodePrx) - The publisher node confirming the session. The proxy is never null.
            %   session (DataStormContract.PublisherSessionPrx) - The publisher session being confirmed. The proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(publisher);
            os_.writeProxy(session);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('confirmCreateSession', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::DataStormContract::Node';
        end
        function r = ice_read(is)
            r = is.readProxy('DataStormContract.NodePrx');
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
            % Returns (DataStormContract.NodePrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, DataStormContract.NodePrx.ice_staticId(), 'DataStormContract.NodePrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (DataStormContract.NodePrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'DataStormContract.NodePrx', varargin{:});
        end
    end
end
