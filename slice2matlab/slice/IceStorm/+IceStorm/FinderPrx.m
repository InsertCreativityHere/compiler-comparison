% FinderPrx   Summary of FinderPrx
%
% Provides access to a TopicManager object via a fixed identity.
% An IceStorm Finder is always registered with identity `IceStorm/Finder`. This allows clients to obtain the
% associated TopicManager proxy with just the endpoint information of the object. For example, you can use the
% Finder proxy `IceStorm/Finder:tcp -h somehost -p 4061` to get the TopicManager proxy
% `MyIceStorm/TopicManager:tcp -h somehost -p 4061`.
%
% FinderPrx Methods:
%   getTopicManager - Gets a proxy to the associated TopicManager.
%   getTopicManagerAsync - Gets a proxy to the associated TopicManager.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

classdef FinderPrx < Ice.ObjectPrx
    methods
        function result = getTopicManager(obj, varargin)
            % getTopicManager   Gets a proxy to the associated TopicManager. The proxy might point to several replicas.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceStorm.TopicManagerPrx) - The topic manager proxy. This proxy is never null.
            
            is_ = obj.iceInvoke('getTopicManager', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceStorm.TopicManagerPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getTopicManagerAsync(obj, varargin)
            % getTopicManagerAsync   Gets a proxy to the associated TopicManager. The proxy might point to several replicas.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceStorm.TopicManagerPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getTopicManager', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceStorm::Finder';
        end
        function r = ice_read(is)
            r = is.readProxy('IceStorm.FinderPrx');
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
            % Returns (IceStorm.FinderPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStorm.FinderPrx.ice_staticId(), 'IceStorm.FinderPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceStorm.FinderPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStorm.FinderPrx', varargin{:});
        end
    end
end
