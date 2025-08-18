classdef NodePrx < Ice.ObjectPrx
    %NODEPRX The Node interface allows DataStorm nodes to create publisher and subscriber sessions with each other.
    %
    %   When a node has a writer for a topic that another node is reading, the node initiates the creation of a
    %   publisher session. Likewise, when a node has a reader for a topic that another node is writing, the node
    %   initiates the creation of a subscriber session.
    %
    %   The publisher node hosts the publisher session servant, which is accessed by the subscriber node through a
    %   PublisherSession proxy. The subscriber node hosts the subscriber session servant, which is accessed by the
    %   publisher node through a SubscriberSession proxy.
    %
    %   Creation
    %     Syntax
    %       prx = DataStormContract.NodePrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   NodePrx Methods:
    %     confirmCreateSession - Confirm the creation of a publisher session with a node.
    %     confirmCreateSessionAsync - An asynchronous confirmCreateSession.
    %     createSession - Initiates the creation of a subscriber session with a node.
    %     createSessionAsync - An asynchronous createSession.
    %     initiateCreateSession - Initiate the creation of a publisher session with a node, after the target node has announced a topic reader for which this node has a corresponding topic writer.
    %     initiateCreateSessionAsync - An asynchronous initiateCreateSession.
    %
    %   NodePrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::DataStormContract::Node.
    %     uncheckedCast - Creates a NodePrx from another proxy without any validation.
    %
    %   Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function initiateCreateSession(obj, publisher, context)
            %INITIATECREATESESSION Initiate the creation of a publisher session with a node, after the target node has announced a topic
            %   reader for which this node has a corresponding topic writer.
            %
            %   Input Arguments
            %     publisher - The publisher node initiating the session. The proxy is never null.
            %       DataStormContract.NodePrx scalar | empty array of DataStormContract.NodePrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     DataStormContract.SessionCreationException - Thrown when the session cannot be created.
            %
            %   See also DataStormContract.Lookup.announceTopicReader
            
            arguments
                obj (1, 1) DataStormContract.NodePrx
                publisher DataStormContract.NodePrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(publisher);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initiateCreateSession', 0, true, os_, false, DataStormContract.NodePrx.initiateCreateSession_ex_, context);
        end

        function future = initiateCreateSessionAsync(obj, publisher, context)
            %INITIATECREATESESSIONASYNC Initiate the creation of a publisher session with a node, after the target node has announced a topic
            %   reader for which this node has a corresponding topic writer.
            %
            %   Input Arguments
            %     publisher - The publisher node initiating the session. The proxy is never null.
            %       DataStormContract.NodePrx scalar | empty array of DataStormContract.NodePrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also initiateCreateSession, Ice.Future.
            %
            %   See also DataStormContract.Lookup.announceTopicReader
            
            arguments
                obj (1, 1) DataStormContract.NodePrx
                publisher DataStormContract.NodePrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(publisher);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('initiateCreateSession', 0, true, os_, 0, [], DataStormContract.NodePrx.initiateCreateSession_ex_, context);
        end

        function createSession(obj, subscriber, session, fromRelay, context)
            %CREATESESSION Initiates the creation of a subscriber session with a node. The subscriber node sends this request to a
            %   publisher node in one of the following scenarios:
            %
            %   - The subscriber has received a topic writer announcement from the publisher and has a matching topic
            %   reader.
            %   - The publisher node has previously sent a initiateCreateSession request.
            %
            %   The publisher node dispatching this request then sends a confirmCreateSession request to the subscriber node
            %   to continue session establishment.
            %
            %   Input Arguments
            %     subscriber - The subscriber node initiating the session. This proxy is never null.
            %       DataStormContract.NodePrx scalar | empty array of DataStormContract.NodePrx
            %     session - The subscriber session being created. This proxy is never null.
            %       DataStormContract.SubscriberSessionPrx scalar | empty array of DataStormContract.SubscriberSessionPrx
            %     fromRelay - Indicates whether the session is being created from a relay node.
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     DataStormContract.SessionCreationException - Thrown when the session cannot be created.
            
            arguments
                obj (1, 1) DataStormContract.NodePrx
                subscriber DataStormContract.NodePrx {mustBeScalarOrEmpty}
                session DataStormContract.SubscriberSessionPrx {mustBeScalarOrEmpty}
                fromRelay (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(subscriber);
            os_.writeProxy(session);
            os_.writeBool(fromRelay);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('createSession', 0, true, os_, false, DataStormContract.NodePrx.createSession_ex_, context);
        end

        function future = createSessionAsync(obj, subscriber, session, fromRelay, context)
            %CREATESESSIONASYNC Initiates the creation of a subscriber session with a node. The subscriber node sends this request to a
            %   publisher node in one of the following scenarios:
            %
            %   - The subscriber has received a topic writer announcement from the publisher and has a matching topic
            %   reader.
            %   - The publisher node has previously sent a initiateCreateSession request.
            %
            %   The publisher node dispatching this request then sends a confirmCreateSession request to the subscriber node
            %   to continue session establishment.
            %
            %   Input Arguments
            %     subscriber - The subscriber node initiating the session. This proxy is never null.
            %       DataStormContract.NodePrx scalar | empty array of DataStormContract.NodePrx
            %     session - The subscriber session being created. This proxy is never null.
            %       DataStormContract.SubscriberSessionPrx scalar | empty array of DataStormContract.SubscriberSessionPrx
            %     fromRelay - Indicates whether the session is being created from a relay node.
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also createSession, Ice.Future.
            
            arguments
                obj (1, 1) DataStormContract.NodePrx
                subscriber DataStormContract.NodePrx {mustBeScalarOrEmpty}
                session DataStormContract.SubscriberSessionPrx {mustBeScalarOrEmpty}
                fromRelay (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(subscriber);
            os_.writeProxy(session);
            os_.writeBool(fromRelay);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('createSession', 0, true, os_, 0, [], DataStormContract.NodePrx.createSession_ex_, context);
        end

        function confirmCreateSession(obj, publisher, session, context)
            %CONFIRMCREATESESSION Confirm the creation of a publisher session with a node.
            %
            %   Input Arguments
            %     publisher - The publisher node confirming the session. The proxy is never null.
            %       DataStormContract.NodePrx scalar | empty array of DataStormContract.NodePrx
            %     session - The publisher session being confirmed. The proxy is never null.
            %       DataStormContract.PublisherSessionPrx scalar | empty array of DataStormContract.PublisherSessionPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     DataStormContract.SessionCreationException - Thrown when the session cannot be created.
            
            arguments
                obj (1, 1) DataStormContract.NodePrx
                publisher DataStormContract.NodePrx {mustBeScalarOrEmpty}
                session DataStormContract.PublisherSessionPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(publisher);
            os_.writeProxy(session);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('confirmCreateSession', 0, true, os_, false, DataStormContract.NodePrx.confirmCreateSession_ex_, context);
        end

        function future = confirmCreateSessionAsync(obj, publisher, session, context)
            %CONFIRMCREATESESSIONASYNC Confirm the creation of a publisher session with a node.
            %
            %   Input Arguments
            %     publisher - The publisher node confirming the session. The proxy is never null.
            %       DataStormContract.NodePrx scalar | empty array of DataStormContract.NodePrx
            %     session - The publisher session being confirmed. The proxy is never null.
            %       DataStormContract.PublisherSessionPrx scalar | empty array of DataStormContract.PublisherSessionPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also confirmCreateSession, Ice.Future.
            
            arguments
                obj (1, 1) DataStormContract.NodePrx
                publisher DataStormContract.NodePrx {mustBeScalarOrEmpty}
                session DataStormContract.PublisherSessionPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(publisher);
            os_.writeProxy(session);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('confirmCreateSession', 0, true, os_, 0, [], DataStormContract.NodePrx.confirmCreateSession_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::DataStormContract::Node';
        end

        function r = ice_read(is)
            r = is.readProxy('DataStormContract.NodePrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::DataStormContract::Node.
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
            %     r - A DataStormContract.NodePrx scalar if the target object implements Slice interface 
            %       ::DataStormContract::Node; otherwise, an empty array of DataStormContract.NodePrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, DataStormContract.NodePrx.ice_staticId(), 'DataStormContract.NodePrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a DataStormContract.NodePrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new DataStormContract.NodePrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'DataStormContract.NodePrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        initiateCreateSession_ex_ = { 'DataStormContract.SessionCreationException' }
        createSession_ex_ = { 'DataStormContract.SessionCreationException' }
        confirmCreateSession_ex_ = { 'DataStormContract.SessionCreationException' }
    end
end
