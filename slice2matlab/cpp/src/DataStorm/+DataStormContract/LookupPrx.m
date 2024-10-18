% LookupPrx   Summary of LookupPrx
%
% The lookup interface is used by DataStorm nodes to announce their topic readers and writers to other connected
% nodes. When multicast is enabled, the lookup interface also broadcasts these announcements.
% Each DataStorm node hosts a lookup servant with the identity "DataStorm/Lookup".
%
% LookupPrx Methods:
%   announceTopicReader - Announce a topic reader.
%   announceTopicReaderAsync - Announce a topic reader.
%   announceTopicWriter - Announce a topic writer.
%   announceTopicWriterAsync - Announce a topic writer.
%   announceTopics - Announce a set of topic readers and writers.
%   announceTopicsAsync - Announce a set of topic readers and writers.
%   createSession - Establish a connection between this node and another node.
%   createSessionAsync - Establish a connection between this node and another node.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef LookupPrx < Ice.ObjectPrx
    methods
        function announceTopicReader(obj, topic, node, varargin)
            % announceTopicReader   Announce a topic reader.
            %
            % Parameters:
            %   topic (char) - The name of the topic.
            %   node (DataStormContract.NodePrx) - The node reading the topic. The proxy is never null.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(topic);
            os_.writeProxy(node);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('announceTopicReader', 2, false, os_, false, {}, varargin{:});
        end
        function r_ = announceTopicReaderAsync(obj, topic, node, varargin)
            % announceTopicReaderAsync   Announce a topic reader.
            %
            % Parameters:
            %   topic (char) - The name of the topic.
            %   node (DataStormContract.NodePrx) - The node reading the topic. The proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(topic);
            os_.writeProxy(node);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('announceTopicReader', 2, false, os_, 0, [], {}, varargin{:});
        end
        function announceTopicWriter(obj, topic, node, varargin)
            % announceTopicWriter   Announce a topic writer.
            %
            % Parameters:
            %   topic (char) - The name of the topic.
            %   node (DataStormContract.NodePrx) - The node writing the topic. The proxy is never null.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(topic);
            os_.writeProxy(node);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('announceTopicWriter', 2, false, os_, false, {}, varargin{:});
        end
        function r_ = announceTopicWriterAsync(obj, topic, node, varargin)
            % announceTopicWriterAsync   Announce a topic writer.
            %
            % Parameters:
            %   topic (char) - The name of the topic.
            %   node (DataStormContract.NodePrx) - The node writing the topic. The proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(topic);
            os_.writeProxy(node);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('announceTopicWriter', 2, false, os_, 0, [], {}, varargin{:});
        end
        function announceTopics(obj, readers, writers, node, varargin)
            % announceTopics   Announce a set of topic readers and writers.
            %
            % Parameters:
            %   readers (Ice.StringSeq) - A sequence of topic names for readers.
            %   writers (Ice.StringSeq) - A sequence of topic names for writers.
            %   node (DataStormContract.NodePrx) - The node reading or writing the topics. The proxy is never null.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(readers);
            os_.writeStringSeq(writers);
            os_.writeProxy(node);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('announceTopics', 2, false, os_, false, {}, varargin{:});
        end
        function r_ = announceTopicsAsync(obj, readers, writers, node, varargin)
            % announceTopicsAsync   Announce a set of topic readers and writers.
            %
            % Parameters:
            %   readers (Ice.StringSeq) - A sequence of topic names for readers.
            %   writers (Ice.StringSeq) - A sequence of topic names for writers.
            %   node (DataStormContract.NodePrx) - The node reading or writing the topics. The proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(readers);
            os_.writeStringSeq(writers);
            os_.writeProxy(node);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('announceTopics', 2, false, os_, 0, [], {}, varargin{:});
        end
        function result = createSession(obj, node, varargin)
            % createSession   Establish a connection between this node and another node.
            %
            % Parameters:
            %   node (DataStormContract.NodePrx) - The node initiating the connection. The proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (DataStormContract.NodePrx) - A proxy to this node. The proxy is never null.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(node);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('createSession', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = DataStormContract.NodePrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = createSessionAsync(obj, node, varargin)
            % createSessionAsync   Establish a connection between this node and another node.
            %
            % Parameters:
            %   node (DataStormContract.NodePrx) - The node initiating the connection. The proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(node);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = DataStormContract.NodePrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('createSession', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::DataStormContract::Lookup';
        end
        function r = ice_read(is)
            r = is.readProxy('DataStormContract.LookupPrx');
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
            % Returns (DataStormContract.LookupPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, DataStormContract.LookupPrx.ice_staticId(), 'DataStormContract.LookupPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (DataStormContract.LookupPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'DataStormContract.LookupPrx', varargin{:});
        end
    end
end
