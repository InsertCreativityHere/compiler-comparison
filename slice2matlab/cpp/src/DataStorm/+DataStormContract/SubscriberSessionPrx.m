% SubscriberSessionPrx   Summary of SubscriberSessionPrx
%
% The SubscriberSession servant is hosted by the subscriber node and is accessed by the publisher node.
%
% SubscriberSessionPrx Methods:
%   s - Queue a sample with the subscribers of the topic element.
%   sAsync - Queue a sample with the subscribers of the topic element.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef SubscriberSessionPrx < DataStormContract.SessionPrx
    methods
        function s(obj, topicId, elementId, sample, varargin)
            % s   Queue a sample with the subscribers of the topic element.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic to which the sample belong.
            %   elementId (int64) - The unique identifier for the element to which the sample belong.
            %   sample (DataStormContract.DataSample) - The sample to queue.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            os_.writeLong(elementId);
            DataStormContract.DataSample.ice_write(os_, sample);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('s', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = sAsync(obj, topicId, elementId, sample, varargin)
            % sAsync   Queue a sample with the subscribers of the topic element.
            %
            % Parameters:
            %   topicId (int64) - The unique identifier for the topic to which the sample belong.
            %   elementId (int64) - The unique identifier for the element to which the sample belong.
            %   sample (DataStormContract.DataSample) - The sample to queue.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            os_.writeLong(elementId);
            DataStormContract.DataSample.ice_write(os_, sample);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('s', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::DataStormContract::SubscriberSession';
        end
        function r = ice_read(is)
            r = is.readProxy('DataStormContract.SubscriberSessionPrx');
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
            % Returns (DataStormContract.SubscriberSessionPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, DataStormContract.SubscriberSessionPrx.ice_staticId(), 'DataStormContract.SubscriberSessionPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (DataStormContract.SubscriberSessionPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'DataStormContract.SubscriberSessionPrx', varargin{:});
        end
    end
end
