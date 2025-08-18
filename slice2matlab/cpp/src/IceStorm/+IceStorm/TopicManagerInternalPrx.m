classdef TopicManagerInternalPrx < IceStorm.TopicManagerPrx
    %TOPICMANAGERINTERNALPRX Internal operations for a topic manager.
    %
    %   Creation
    %     Syntax
    %       prx = IceStorm.TopicManagerInternalPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   TopicManagerInternalPrx Methods:
    %     getReplicaNode - Return the replica node proxy for this topic manager.
    %     getReplicaNodeAsync - An asynchronous getReplicaNode.
    %
    %   TopicManagerInternalPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceStorm::TopicManagerInternal.
    %     uncheckedCast - Creates a TopicManagerInternalPrx from another proxy without any validation.
    %
    %   See also IceStorm.TopicManager
    %
    %   Generated from IceStormInternal.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getReplicaNode(obj, context)
            %GETREPLICANODE Return the replica node proxy for this topic manager.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The replica proxy, or null if this instance is not replicated.
            %       IceStormElection.NodePrx scalar | empty array of IceStormElection.NodePrx
            
            arguments
                obj (1, 1) IceStorm.TopicManagerInternalPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getReplicaNode', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = IceStormElection.NodePrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getReplicaNodeAsync(obj, context)
            %GETREPLICANODEASYNC Return the replica node proxy for this topic manager.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getReplicaNode, Ice.Future.
            
            arguments
                obj (1, 1) IceStorm.TopicManagerInternalPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceStormElection.NodePrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getReplicaNode', 2, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceStorm::TopicManagerInternal';
        end

        function r = ice_read(is)
            r = is.readProxy('IceStorm.TopicManagerInternalPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceStorm::TopicManagerInternal.
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
            %     r - A IceStorm.TopicManagerInternalPrx scalar if the target object implements Slice interface 
            %       ::IceStorm::TopicManagerInternal; otherwise, an empty array of IceStorm.TopicManagerInternalPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStorm.TopicManagerInternalPrx.ice_staticId(), 'IceStorm.TopicManagerInternalPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceStorm.TopicManagerInternalPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceStorm.TopicManagerInternalPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStorm.TopicManagerInternalPrx', varargin{:});
        end
    end
end
