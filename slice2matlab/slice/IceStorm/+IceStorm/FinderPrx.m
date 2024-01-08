% FinderPrx   Summary of FinderPrx
%
% This interface is advertised by the IceStorm service through the Ice object with the identity `IceStorm/Finder'.
% This allows clients to retrieve the topic manager with just the endpoint information of the IceStorm service.
%
% FinderPrx Methods:
%   getTopicManager - Get the topic manager proxy.
%   getTopicManagerAsync - Get the topic manager proxy.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceStorm.ice by slice2matlab version 3.7.10

classdef FinderPrx < Ice.ObjectPrx
    methods
        function result = getTopicManager(obj, varargin)
            % getTopicManager   Get the topic manager proxy. The proxy might point to several replicas.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceStorm.TopicManagerPrx) - The topic manager proxy.
            
            is_ = obj.iceInvoke('getTopicManager', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceStorm.TopicManagerPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getTopicManagerAsync(obj, varargin)
            % getTopicManagerAsync   Get the topic manager proxy. The proxy might point to several replicas.
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
    methods(Hidden=true)
        function obj = FinderPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
