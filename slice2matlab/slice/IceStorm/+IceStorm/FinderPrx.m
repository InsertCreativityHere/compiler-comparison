classdef FinderPrx < Ice.ObjectPrx
    %FINDERPRX Provides access to a <a href="matlab:help IceStorm.TopicManagerPrx -displayBanner">TopicManagerPrx</a> object via a fixed identity.
    %   An IceStorm Finder is always registered with identity |IceStorm/Finder|. This allows clients to obtain the
    %   associated TopicManager proxy with just the endpoint information of the object. For example, you can use the
    %   Finder proxy |IceStorm/Finder:tcp -h somehost -p 4061| to get the TopicManager proxy
    %   |MyIceStorm/TopicManager:tcp -h somehost -p 4061|.
    %
    %   Creation
    %     Syntax
    %       prx = IceStorm.FinderPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   FinderPrx Methods:
    %     getTopicManager - Gets a proxy to the associated <a href="matlab:help IceStorm.TopicManagerPrx -displayBanner">TopicManagerPrx</a>.
    %     getTopicManagerAsync - An asynchronous getTopicManager.
    %
    %   FinderPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceStorm::Finder.
    %     uncheckedCast - Creates a FinderPrx from another proxy without any validation.
    %
    %   Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getTopicManager(obj, context)
            %GETTOPICMANAGER Gets a proxy to the associated <a href="matlab:help IceStorm.TopicManagerPrx -displayBanner">TopicManagerPrx</a>. The proxy might point to several replicas.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The topic manager proxy. This proxy is never null.
            %       IceStorm.TopicManagerPrx scalar | empty array of IceStorm.TopicManagerPrx
            
            arguments
                obj (1, 1) IceStorm.FinderPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getTopicManager', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = IceStorm.TopicManagerPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getTopicManagerAsync(obj, context)
            %GETTOPICMANAGERASYNC Gets a proxy to the associated <a href="matlab:help IceStorm.TopicManagerPrx -displayBanner">TopicManagerPrx</a>. The proxy might point to several replicas.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getTopicManager, Ice.Future.
            
            arguments
                obj (1, 1) IceStorm.FinderPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceStorm.TopicManagerPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getTopicManager', 0, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceStorm::Finder';
        end

        function r = ice_read(is)
            r = is.readProxy('IceStorm.FinderPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceStorm::Finder.
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
            %     r - A IceStorm.FinderPrx scalar if the target object implements Slice interface 
            %       ::IceStorm::Finder; otherwise, an empty array of IceStorm.FinderPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStorm.FinderPrx.ice_staticId(), 'IceStorm.FinderPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceStorm.FinderPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceStorm.FinderPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStorm.FinderPrx', varargin{:});
        end
    end
end
