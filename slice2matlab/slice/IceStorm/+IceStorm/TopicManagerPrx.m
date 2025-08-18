classdef TopicManagerPrx < Ice.ObjectPrx
    %TOPICMANAGERPRX Represents an object that manages topics.
    %
    %   Creation
    %     Syntax
    %       prx = IceStorm.TopicManagerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   TopicManagerPrx Methods:
    %     create - Creates a new topic.
    %     createAsync - An asynchronous create.
    %     retrieve - Retrieves a topic by name.
    %     retrieveAsync - An asynchronous retrieve.
    %     retrieveAll - Retrieves all topics managed by this topic manager.
    %     retrieveAllAsync - An asynchronous retrieveAll.
    %
    %   TopicManagerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceStorm::TopicManager.
    %     uncheckedCast - Creates a TopicManagerPrx from another proxy without any validation.
    %
    %   See also IceStorm.Topic
    %
    %   Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = create(obj, name, context)
            %CREATE Creates a new topic.
            %
            %   Input Arguments
            %     name - The name of the topic.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to the new topic object. The returned proxy is never null.
            %       IceStorm.TopicPrx scalar | empty array of IceStorm.TopicPrx
            %
            %   Exceptions
            %     IceStorm.TopicExists - Thrown when a topic with the same name already exists.
            
            arguments
                obj (1, 1) IceStorm.TopicManagerPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('create', 0, true, os_, true, IceStorm.TopicManagerPrx.create_ex_, context);
            is_.startEncapsulation();
            returnValue = IceStorm.TopicPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = createAsync(obj, name, context)
            %CREATEASYNC Creates a new topic.
            %
            %   Input Arguments
            %     name - The name of the topic.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also create, Ice.Future.
            
            arguments
                obj (1, 1) IceStorm.TopicManagerPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceStorm.TopicPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('create', 0, true, os_, 1, @unmarshal, IceStorm.TopicManagerPrx.create_ex_, context);
        end

        function returnValue = retrieve(obj, name, context)
            %RETRIEVE Retrieves a topic by name.
            %
            %   Input Arguments
            %     name - The name of the topic.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to the topic object. The returned proxy is never null.
            %       IceStorm.TopicPrx scalar | empty array of IceStorm.TopicPrx
            %
            %   Exceptions
            %     IceStorm.NoSuchTopic - Thrown when there is no topic named @p name.
            
            arguments
                obj (1, 1) IceStorm.TopicManagerPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('retrieve', 2, true, os_, true, IceStorm.TopicManagerPrx.retrieve_ex_, context);
            is_.startEncapsulation();
            returnValue = IceStorm.TopicPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = retrieveAsync(obj, name, context)
            %RETRIEVEASYNC Retrieves a topic by name.
            %
            %   Input Arguments
            %     name - The name of the topic.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also retrieve, Ice.Future.
            
            arguments
                obj (1, 1) IceStorm.TopicManagerPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceStorm.TopicPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('retrieve', 2, true, os_, 1, @unmarshal, IceStorm.TopicManagerPrx.retrieve_ex_, context);
        end

        function returnValue = retrieveAll(obj, context)
            %RETRIEVEALL Retrieves all topics managed by this topic manager.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A dictionary of string, topic proxy pairs.
            %       string, cell) scalar
            
            arguments
                obj (1, 1) IceStorm.TopicManagerPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('retrieveAll', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = IceStorm.TopicDict.read(is_);
            is_.endEncapsulation();
        end

        function future = retrieveAllAsync(obj, context)
            %RETRIEVEALLASYNC Retrieves all topics managed by this topic manager.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also retrieveAll, Ice.Future.
            
            arguments
                obj (1, 1) IceStorm.TopicManagerPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceStorm.TopicDict.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('retrieveAll', 2, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceStorm::TopicManager';
        end

        function r = ice_read(is)
            r = is.readProxy('IceStorm.TopicManagerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceStorm::TopicManager.
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
            %     r - A IceStorm.TopicManagerPrx scalar if the target object implements Slice interface 
            %       ::IceStorm::TopicManager; otherwise, an empty array of IceStorm.TopicManagerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStorm.TopicManagerPrx.ice_staticId(), 'IceStorm.TopicManagerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceStorm.TopicManagerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceStorm.TopicManagerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStorm.TopicManagerPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        create_ex_ = { 'IceStorm.TopicExists' }
        retrieve_ex_ = { 'IceStorm.NoSuchTopic' }
    end
end
