% SessionPrx   Summary of SessionPrx
%
% SessionPrx Methods:
%   announceTopics
%   announceTopicsAsync
%   attachTopic
%   attachTopicAsync
%   detachTopic
%   detachTopicAsync
%   attachTags
%   attachTagsAsync
%   detachTags
%   detachTagsAsync
%   announceElements
%   announceElementsAsync
%   attachElements
%   attachElementsAsync
%   attachElementsAck
%   attachElementsAckAsync
%   detachElements
%   detachElementsAsync
%   initSamples
%   initSamplesAsync
%   disconnected
%   disconnectedAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef SessionPrx < Ice.ObjectPrx
    methods
        function announceTopics(obj, topics, initialize, varargin)
            % announceTopics
            %
            % Parameters:
            %   topics (DataStormContract.TopicInfoSeq)
            %   initialize (logical)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            DataStormContract.TopicInfoSeq.write(os_, topics);
            os_.writeBool(initialize);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('announceTopics', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = announceTopicsAsync(obj, topics, initialize, varargin)
            % announceTopicsAsync
            %
            % Parameters:
            %   topics (DataStormContract.TopicInfoSeq)
            %   initialize (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            DataStormContract.TopicInfoSeq.write(os_, topics);
            os_.writeBool(initialize);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('announceTopics', 0, false, os_, 0, [], {}, varargin{:});
        end
        function attachTopic(obj, topic, varargin)
            % attachTopic
            %
            % Parameters:
            %   topic (DataStormContract.TopicSpec)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            DataStormContract.TopicSpec.ice_write(os_, topic);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachTopic', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = attachTopicAsync(obj, topic, varargin)
            % attachTopicAsync
            %
            % Parameters:
            %   topic (DataStormContract.TopicSpec)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            DataStormContract.TopicSpec.ice_write(os_, topic);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('attachTopic', 0, false, os_, 0, [], {}, varargin{:});
        end
        function detachTopic(obj, topic, varargin)
            % detachTopic
            %
            % Parameters:
            %   topic (int64)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('detachTopic', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = detachTopicAsync(obj, topic, varargin)
            % detachTopicAsync
            %
            % Parameters:
            %   topic (int64)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('detachTopic', 0, false, os_, 0, [], {}, varargin{:});
        end
        function attachTags(obj, topic, tags, initialize, varargin)
            % attachTags
            %
            % Parameters:
            %   topic (int64)
            %   tags (DataStormContract.ElementInfoSeq)
            %   initialize (logical)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.ElementInfoSeq.write(os_, tags);
            os_.writeBool(initialize);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachTags', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = attachTagsAsync(obj, topic, tags, initialize, varargin)
            % attachTagsAsync
            %
            % Parameters:
            %   topic (int64)
            %   tags (DataStormContract.ElementInfoSeq)
            %   initialize (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.ElementInfoSeq.write(os_, tags);
            os_.writeBool(initialize);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('attachTags', 0, false, os_, 0, [], {}, varargin{:});
        end
        function detachTags(obj, topic, tags, varargin)
            % detachTags
            %
            % Parameters:
            %   topic (int64)
            %   tags (DataStormContract.LongSeq)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            os_.writeLongSeq(tags);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('detachTags', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = detachTagsAsync(obj, topic, tags, varargin)
            % detachTagsAsync
            %
            % Parameters:
            %   topic (int64)
            %   tags (DataStormContract.LongSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            os_.writeLongSeq(tags);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('detachTags', 0, false, os_, 0, [], {}, varargin{:});
        end
        function announceElements(obj, topic, keys, varargin)
            % announceElements
            %
            % Parameters:
            %   topic (int64)
            %   keys (DataStormContract.ElementInfoSeq)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.ElementInfoSeq.write(os_, keys);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('announceElements', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = announceElementsAsync(obj, topic, keys, varargin)
            % announceElementsAsync
            %
            % Parameters:
            %   topic (int64)
            %   keys (DataStormContract.ElementInfoSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.ElementInfoSeq.write(os_, keys);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('announceElements', 0, false, os_, 0, [], {}, varargin{:});
        end
        function attachElements(obj, topic, elements, initialize, varargin)
            % attachElements
            %
            % Parameters:
            %   topic (int64)
            %   elements (DataStormContract.ElementSpecSeq)
            %   initialize (logical)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.ElementSpecSeq.write(os_, elements);
            os_.writeBool(initialize);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachElements', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = attachElementsAsync(obj, topic, elements, initialize, varargin)
            % attachElementsAsync
            %
            % Parameters:
            %   topic (int64)
            %   elements (DataStormContract.ElementSpecSeq)
            %   initialize (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.ElementSpecSeq.write(os_, elements);
            os_.writeBool(initialize);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('attachElements', 0, false, os_, 0, [], {}, varargin{:});
        end
        function attachElementsAck(obj, topic, elements, varargin)
            % attachElementsAck
            %
            % Parameters:
            %   topic (int64)
            %   elements (DataStormContract.ElementSpecAckSeq)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.ElementSpecAckSeq.write(os_, elements);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('attachElementsAck', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = attachElementsAckAsync(obj, topic, elements, varargin)
            % attachElementsAckAsync
            %
            % Parameters:
            %   topic (int64)
            %   elements (DataStormContract.ElementSpecAckSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.ElementSpecAckSeq.write(os_, elements);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('attachElementsAck', 0, false, os_, 0, [], {}, varargin{:});
        end
        function detachElements(obj, topic, keys, varargin)
            % detachElements
            %
            % Parameters:
            %   topic (int64)
            %   keys (DataStormContract.LongSeq)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            os_.writeLongSeq(keys);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('detachElements', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = detachElementsAsync(obj, topic, keys, varargin)
            % detachElementsAsync
            %
            % Parameters:
            %   topic (int64)
            %   keys (DataStormContract.LongSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            os_.writeLongSeq(keys);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('detachElements', 0, false, os_, 0, [], {}, varargin{:});
        end
        function initSamples(obj, topic, samples, varargin)
            % initSamples
            %
            % Parameters:
            %   topic (int64)
            %   samples (DataStormContract.DataSamplesSeq)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.DataSamplesSeq.write(os_, samples);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initSamples', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = initSamplesAsync(obj, topic, samples, varargin)
            % initSamplesAsync
            %
            % Parameters:
            %   topic (int64)
            %   samples (DataStormContract.DataSamplesSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topic);
            DataStormContract.DataSamplesSeq.write(os_, samples);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('initSamples', 0, false, os_, 0, [], {}, varargin{:});
        end
        function disconnected(obj, varargin)
            % disconnected
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('disconnected', 0, false, [], false, {}, varargin{:});
        end
        function r_ = disconnectedAsync(obj, varargin)
            % disconnectedAsync
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
