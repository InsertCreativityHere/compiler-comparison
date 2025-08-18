classdef TopicInternalPrx < IceStorm.TopicPrx
    %TOPICINTERNALPRX Internal operations for a topic.
    %
    %   Creation
    %     Syntax
    %       prx = IceStorm.TopicInternalPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   TopicInternalPrx Methods:
    %     getLinkProxy - Retrieve a proxy to the TopicLink interface.
    %     getLinkProxyAsync - An asynchronous getLinkProxy.
    %     reap - Reap the given identities.
    %     reapAsync - An asynchronous reap.
    %
    %   TopicInternalPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceStorm::TopicInternal.
    %     uncheckedCast - Creates a TopicInternalPrx from another proxy without any validation.
    %
    %   See also IceStorm.Topic
    %
    %   Generated from IceStormInternal.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getLinkProxy(obj, context)
            %GETLINKPROXY Retrieve a proxy to the TopicLink interface.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The TopicLink for the Topic.
            %       IceStorm.TopicLinkPrx scalar | empty array of IceStorm.TopicLinkPrx
            
            arguments
                obj (1, 1) IceStorm.TopicInternalPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getLinkProxy', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = IceStorm.TopicLinkPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getLinkProxyAsync(obj, context)
            %GETLINKPROXYASYNC Retrieve a proxy to the TopicLink interface.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getLinkProxy, Ice.Future.
            
            arguments
                obj (1, 1) IceStorm.TopicInternalPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceStorm.TopicLinkPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getLinkProxy', 2, true, [], 1, @unmarshal, {}, context);
        end

        function reap(obj, id, context)
            %REAP Reap the given identities.
            %
            %   Input Arguments
            %     id - The sequence of identities.
            %       Ice.Identity vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceStorm.ReapWouldBlock - Raised if the reap call would block.
            
            arguments
                obj (1, 1) IceStorm.TopicInternalPrx
                id (1, :) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.IdentitySeq.write(os_, id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('reap', 0, true, os_, false, IceStorm.TopicInternalPrx.reap_ex_, context);
        end

        function future = reapAsync(obj, id, context)
            %REAPASYNC Reap the given identities.
            %
            %   Input Arguments
            %     id - The sequence of identities.
            %       Ice.Identity vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also reap, Ice.Future.
            
            arguments
                obj (1, 1) IceStorm.TopicInternalPrx
                id (1, :) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.IdentitySeq.write(os_, id);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('reap', 0, true, os_, 0, [], IceStorm.TopicInternalPrx.reap_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceStorm::TopicInternal';
        end

        function r = ice_read(is)
            r = is.readProxy('IceStorm.TopicInternalPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceStorm::TopicInternal.
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
            %     r - A IceStorm.TopicInternalPrx scalar if the target object implements Slice interface 
            %       ::IceStorm::TopicInternal; otherwise, an empty array of IceStorm.TopicInternalPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStorm.TopicInternalPrx.ice_staticId(), 'IceStorm.TopicInternalPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceStorm.TopicInternalPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceStorm.TopicInternalPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStorm.TopicInternalPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        reap_ex_ = { 'IceStorm.ReapWouldBlock' }
    end
end
