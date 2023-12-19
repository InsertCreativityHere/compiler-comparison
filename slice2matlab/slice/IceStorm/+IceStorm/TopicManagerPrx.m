% TopicManagerPrx   Summary of TopicManagerPrx
%
% A topic manager manages topics, and subscribers to topics.
%
% TopicManagerPrx Methods:
%   create - Create a new topic.
%   createAsync - Create a new topic.
%   retrieve - Retrieve a topic by name.
%   retrieveAsync - Retrieve a topic by name.
%   retrieveAll - Retrieve all topics managed by this topic manager.
%   retrieveAllAsync - Retrieve all topics managed by this topic manager.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also IceStorm.Topic

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceStorm.ice by slice2matlab version 3.7.10

classdef TopicManagerPrx < Ice.ObjectPrx
    methods
        function result = create(obj, name, varargin)
            % create   Create a new topic. The topic name must be unique.
            %
            % Parameters:
            %   name (char) - The name of the topic.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceStorm.TopicPrx) - A proxy to the topic instance.
            %
            % Exceptions:
            %   IceStorm.TopicExists - Raised if a topic with the same name already exists.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('create', 0, true, os_, true, IceStorm.TopicManagerPrx.create_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceStorm.TopicPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = createAsync(obj, name, varargin)
            % createAsync   Create a new topic. The topic name must be unique.
            %
            % Parameters:
            %   name (char) - The name of the topic.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceStorm.TopicExists - Raised if a topic with the same name already exists.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceStorm.TopicPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('create', 0, true, os_, 1, @unmarshal, IceStorm.TopicManagerPrx.create_ex_, varargin{:});
        end
        function result = retrieve(obj, name, varargin)
            % retrieve   Retrieve a topic by name.
            %
            % Parameters:
            %   name (char) - The name of the topic.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceStorm.TopicPrx) - A proxy to the topic instance.
            %
            % Exceptions:
            %   IceStorm.NoSuchTopic - Raised if the topic does not exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('retrieve', 1, true, os_, true, IceStorm.TopicManagerPrx.retrieve_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceStorm.TopicPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = retrieveAsync(obj, name, varargin)
            % retrieveAsync   Retrieve a topic by name.
            %
            % Parameters:
            %   name (char) - The name of the topic.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceStorm.NoSuchTopic - Raised if the topic does not exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceStorm.TopicPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('retrieve', 1, true, os_, 1, @unmarshal, IceStorm.TopicManagerPrx.retrieve_ex_, varargin{:});
        end
        function result = retrieveAll(obj, varargin)
            % retrieveAll   Retrieve all topics managed by this topic manager.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (containers.Map) - A dictionary of string, topic proxy pairs.
            
            is_ = obj.iceInvoke('retrieveAll', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceStorm.TopicDict.read(is_);
            is_.endEncapsulation();
        end
        function r_ = retrieveAllAsync(obj, varargin)
            % retrieveAllAsync   Retrieve all topics managed by this topic manager.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceStorm.TopicDict.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('retrieveAll', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceStorm::TopicManager';
        end
        function r = ice_read(is)
            r = is.readProxy('IceStorm.TopicManagerPrx');
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
            % Returns (IceStorm.TopicManagerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStorm.TopicManagerPrx.ice_staticId(), 'IceStorm.TopicManagerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceStorm.TopicManagerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStorm.TopicManagerPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = TopicManagerPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        create_ex_ = { 'IceStorm.TopicExists' }
        retrieve_ex_ = { 'IceStorm.NoSuchTopic' }
    end
end
