classdef LookupPrx < Ice.ObjectPrx
    %LOOKUPPRX The lookup interface is used by DataStorm nodes to announce their topic readers and writers to other connected
    %   nodes. When multicast is enabled, the lookup interface also broadcasts these announcements.
    %   Each DataStorm node hosts a lookup servant with the identity "DataStorm/Lookup".
    %
    %   Creation
    %     Syntax
    %       prx = DataStormContract.LookupPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   LookupPrx Methods:
    %     announceTopicReader - Announce a topic reader.
    %     announceTopicReaderAsync - An asynchronous announceTopicReader.
    %     announceTopicWriter - Announce a topic writer.
    %     announceTopicWriterAsync - An asynchronous announceTopicWriter.
    %     announceTopics - Announce a set of topic readers and writers.
    %     announceTopicsAsync - An asynchronous announceTopics.
    %     createSession - Establish a connection between this node and the caller node.
    %     createSessionAsync - An asynchronous createSession.
    %
    %   LookupPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::DataStormContract::Lookup.
    %     uncheckedCast - Creates a LookupPrx from another proxy without any validation.
    %
    %   Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function announceTopicReader(obj, topic, subscriber, context)
            %ANNOUNCETOPICREADER Announce a topic reader.
            %
            %   Input Arguments
            %     topic - The name of the topic.
            %       character vector
            %     subscriber - The node reading the topic. The subscriber proxy is never null.
            %       DataStormContract.NodePrx scalar | empty array of DataStormContract.NodePrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) DataStormContract.LookupPrx
                topic (1, :) char
                subscriber DataStormContract.NodePrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(topic);
            os_.writeProxy(subscriber);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('announceTopicReader', 2, false, os_, false, {}, context);
        end

        function future = announceTopicReaderAsync(obj, topic, subscriber, context)
            %ANNOUNCETOPICREADERASYNC Announce a topic reader.
            %
            %   Input Arguments
            %     topic - The name of the topic.
            %       character vector
            %     subscriber - The node reading the topic. The subscriber proxy is never null.
            %       DataStormContract.NodePrx scalar | empty array of DataStormContract.NodePrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also announceTopicReader, Ice.Future.
            
            arguments
                obj (1, 1) DataStormContract.LookupPrx
                topic (1, :) char
                subscriber DataStormContract.NodePrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(topic);
            os_.writeProxy(subscriber);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('announceTopicReader', 2, false, os_, 0, [], {}, context);
        end

        function announceTopicWriter(obj, topic, node, context)
            %ANNOUNCETOPICWRITER Announce a topic writer.
            %
            %   Input Arguments
            %     topic - The name of the topic.
            %       character vector
            %     node - The node writing the topic. The proxy is never null.
            %       DataStormContract.NodePrx scalar | empty array of DataStormContract.NodePrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) DataStormContract.LookupPrx
                topic (1, :) char
                node DataStormContract.NodePrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(topic);
            os_.writeProxy(node);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('announceTopicWriter', 2, false, os_, false, {}, context);
        end

        function future = announceTopicWriterAsync(obj, topic, node, context)
            %ANNOUNCETOPICWRITERASYNC Announce a topic writer.
            %
            %   Input Arguments
            %     topic - The name of the topic.
            %       character vector
            %     node - The node writing the topic. The proxy is never null.
            %       DataStormContract.NodePrx scalar | empty array of DataStormContract.NodePrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also announceTopicWriter, Ice.Future.
            
            arguments
                obj (1, 1) DataStormContract.LookupPrx
                topic (1, :) char
                node DataStormContract.NodePrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(topic);
            os_.writeProxy(node);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('announceTopicWriter', 2, false, os_, 0, [], {}, context);
        end

        function announceTopics(obj, readers, writers, node, context)
            %ANNOUNCETOPICS Announce a set of topic readers and writers.
            %
            %   Input Arguments
            %     readers - A sequence of topic names for readers.
            %       string vector
            %     writers - A sequence of topic names for writers.
            %       string vector
            %     node - The node reading or writing the topics. The proxy is never null.
            %       DataStormContract.NodePrx scalar | empty array of DataStormContract.NodePrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) DataStormContract.LookupPrx
                readers (1, :) string
                writers (1, :) string
                node DataStormContract.NodePrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(readers);
            os_.writeStringSeq(writers);
            os_.writeProxy(node);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('announceTopics', 2, false, os_, false, {}, context);
        end

        function future = announceTopicsAsync(obj, readers, writers, node, context)
            %ANNOUNCETOPICSASYNC Announce a set of topic readers and writers.
            %
            %   Input Arguments
            %     readers - A sequence of topic names for readers.
            %       string vector
            %     writers - A sequence of topic names for writers.
            %       string vector
            %     node - The node reading or writing the topics. The proxy is never null.
            %       DataStormContract.NodePrx scalar | empty array of DataStormContract.NodePrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also announceTopics, Ice.Future.
            
            arguments
                obj (1, 1) DataStormContract.LookupPrx
                readers (1, :) string
                writers (1, :) string
                node DataStormContract.NodePrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(readers);
            os_.writeStringSeq(writers);
            os_.writeProxy(node);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('announceTopics', 2, false, os_, 0, [], {}, context);
        end

        function returnValue = createSession(obj, node, context)
            %CREATESESSION Establish a connection between this node and the caller node.
            %
            %   Input Arguments
            %     node - The node initiating the connection. The proxy is never null.
            %       DataStormContract.NodePrx scalar | empty array of DataStormContract.NodePrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to this node. The proxy is never null.
            %       DataStormContract.NodePrx scalar | empty array of DataStormContract.NodePrx
            
            arguments
                obj (1, 1) DataStormContract.LookupPrx
                node DataStormContract.NodePrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(node);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('createSession', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = DataStormContract.NodePrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = createSessionAsync(obj, node, context)
            %CREATESESSIONASYNC Establish a connection between this node and the caller node.
            %
            %   Input Arguments
            %     node - The node initiating the connection. The proxy is never null.
            %       DataStormContract.NodePrx scalar | empty array of DataStormContract.NodePrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also createSession, Ice.Future.
            
            arguments
                obj (1, 1) DataStormContract.LookupPrx
                node DataStormContract.NodePrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(node);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = DataStormContract.NodePrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('createSession', 0, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::DataStormContract::Lookup';
        end

        function r = ice_read(is)
            r = is.readProxy('DataStormContract.LookupPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::DataStormContract::Lookup.
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
            %     r - A DataStormContract.LookupPrx scalar if the target object implements Slice interface 
            %       ::DataStormContract::Lookup; otherwise, an empty array of DataStormContract.LookupPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, DataStormContract.LookupPrx.ice_staticId(), 'DataStormContract.LookupPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a DataStormContract.LookupPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new DataStormContract.LookupPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'DataStormContract.LookupPrx', varargin{:});
        end
    end
end
