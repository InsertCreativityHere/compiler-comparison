% TopicManagerSyncPrx   Summary of TopicManagerSyncPrx
%
% Interface used to sync topics.
%
% TopicManagerSyncPrx Methods:
%   getContent - Retrieve the topic content.
%   getContentAsync - Retrieve the topic content.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Election.ice by slice2matlab version 3.8.0-alpha.0

classdef TopicManagerSyncPrx < Ice.ObjectPrx
    methods
        function [llu, content] = getContent(obj, varargin)
            % getContent   Retrieve the topic content.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   llu (IceStormElection.LogUpdate) - The last log update token.
            %   content (IceStormElection.TopicContentSeq) - The topic content.
            
            is_ = obj.iceInvoke('getContent', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            llu = IceStormElection.LogUpdate.ice_read(is_);
            content = IceStormElection.TopicContentSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getContentAsync(obj, varargin)
            % getContentAsync   Retrieve the topic content.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                llu = IceStormElection.LogUpdate.ice_read(is_);
                content = IceStormElection.TopicContentSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = llu;
                varargout{2} = content;
            end
            r_ = obj.iceInvokeAsync('getContent', 0, true, [], 2, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceStormElection::TopicManagerSync';
        end
        function r = ice_read(is)
            r = is.readProxy('IceStormElection.TopicManagerSyncPrx');
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
            % Returns (IceStormElection.TopicManagerSyncPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStormElection.TopicManagerSyncPrx.ice_staticId(), 'IceStormElection.TopicManagerSyncPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceStormElection.TopicManagerSyncPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStormElection.TopicManagerSyncPrx', varargin{:});
        end
    end
end
