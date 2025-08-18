classdef TopicManagerSyncPrx < Ice.ObjectPrx
    %TOPICMANAGERSYNCPRX Interface used to sync topics.
    %
    %   Creation
    %     Syntax
    %       prx = IceStormElection.TopicManagerSyncPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   TopicManagerSyncPrx Methods:
    %     getContent - Retrieve the topic content.
    %     getContentAsync - An asynchronous getContent.
    %
    %   TopicManagerSyncPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceStormElection::TopicManagerSync.
    %     uncheckedCast - Creates a TopicManagerSyncPrx from another proxy without any validation.
    %
    %   Generated from Election.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [llu, content] = getContent(obj, context)
            %GETCONTENT Retrieve the topic content.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     llu - The last log update token.
            %       IceStormElection.LogUpdate scalar
            %     content - The topic content.
            %       IceStormElection.TopicContent vector
            
            arguments
                obj (1, 1) IceStormElection.TopicManagerSyncPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getContent', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            llu = IceStormElection.LogUpdate.ice_read(is_);
            content = IceStormElection.TopicContentSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = getContentAsync(obj, context)
            %GETCONTENTASYNC Retrieve the topic content.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getContent, Ice.Future.
            
            arguments
                obj (1, 1) IceStormElection.TopicManagerSyncPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                llu = IceStormElection.LogUpdate.ice_read(is_);
                content = IceStormElection.TopicContentSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = llu;
                varargout{2} = content;
            end
            future = obj.iceInvokeAsync('getContent', 0, true, [], 2, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceStormElection::TopicManagerSync';
        end

        function r = ice_read(is)
            r = is.readProxy('IceStormElection.TopicManagerSyncPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceStormElection::TopicManagerSync.
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
            %     r - A IceStormElection.TopicManagerSyncPrx scalar if the target object implements Slice interface 
            %       ::IceStormElection::TopicManagerSync; otherwise, an empty array of IceStormElection.TopicManagerSyncPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStormElection.TopicManagerSyncPrx.ice_staticId(), 'IceStormElection.TopicManagerSyncPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceStormElection.TopicManagerSyncPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceStormElection.TopicManagerSyncPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStormElection.TopicManagerSyncPrx', varargin{:});
        end
    end
end
