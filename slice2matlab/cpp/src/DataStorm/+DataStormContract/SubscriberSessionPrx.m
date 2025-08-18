classdef SubscriberSessionPrx < DataStormContract.SessionPrx
    %SUBSCRIBERSESSIONPRX The SubscriberSession servant is hosted by the subscriber node and is accessed by the publisher node.
    %
    %   Creation
    %     Syntax
    %       prx = DataStormContract.SubscriberSessionPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   SubscriberSessionPrx Methods:
    %     s - Queue a sample with the subscribers of the topic element.
    %     sAsync - An asynchronous s.
    %
    %   SubscriberSessionPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::DataStormContract::SubscriberSession.
    %     uncheckedCast - Creates a SubscriberSessionPrx from another proxy without any validation.
    %
    %   Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function s(obj, topicId, elementId, sample, context)
            %S Queue a sample with the subscribers of the topic element.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic to which the sample belong.
            %       int64 scalar
            %     elementId - The unique identifier for the element to which the sample belong.
            %       int64 scalar
            %     sample - The sample to queue.
            %       DataStormContract.DataSample scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) DataStormContract.SubscriberSessionPrx
                topicId (1, 1) int64
                elementId (1, 1) int64
                sample (1, 1) DataStormContract.DataSample
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            os_.writeLong(elementId);
            DataStormContract.DataSample.ice_write(os_, sample);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('s', 0, false, os_, false, {}, context);
        end

        function future = sAsync(obj, topicId, elementId, sample, context)
            %SASYNC Queue a sample with the subscribers of the topic element.
            %
            %   Input Arguments
            %     topicId - The unique identifier for the topic to which the sample belong.
            %       int64 scalar
            %     elementId - The unique identifier for the element to which the sample belong.
            %       int64 scalar
            %     sample - The sample to queue.
            %       DataStormContract.DataSample scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also s, Ice.Future.
            
            arguments
                obj (1, 1) DataStormContract.SubscriberSessionPrx
                topicId (1, 1) int64
                elementId (1, 1) int64
                sample (1, 1) DataStormContract.DataSample
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(topicId);
            os_.writeLong(elementId);
            DataStormContract.DataSample.ice_write(os_, sample);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('s', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::DataStormContract::SubscriberSession';
        end

        function r = ice_read(is)
            r = is.readProxy('DataStormContract.SubscriberSessionPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::DataStormContract::SubscriberSession.
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
            %     r - A DataStormContract.SubscriberSessionPrx scalar if the target object implements Slice interface 
            %       ::DataStormContract::SubscriberSession; otherwise, an empty array of DataStormContract.SubscriberSessionPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, DataStormContract.SubscriberSessionPrx.ice_staticId(), 'DataStormContract.SubscriberSessionPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a DataStormContract.SubscriberSessionPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new DataStormContract.SubscriberSessionPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'DataStormContract.SubscriberSessionPrx', varargin{:});
        end
    end
end
