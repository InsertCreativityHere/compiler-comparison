classdef QueryPrx < Ice.ObjectPrx
    %QUERYPRX Finds well-known Ice objects registered with the IceGrid registry.
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.QueryPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   QueryPrx Methods:
    %     findAllObjectsByType - Finds all the well-known objects with the given type.
    %     findAllObjectsByTypeAsync - An asynchronous findAllObjectsByType.
    %     findAllReplicas - Finds all the replicas of a well-known object.
    %     findAllReplicasAsync - An asynchronous findAllReplicas.
    %     findObjectById - Finds a well-known object by identity.
    %     findObjectByIdAsync - An asynchronous findObjectById.
    %     findObjectByType - Finds a well-known object by type.
    %     findObjectByTypeAsync - An asynchronous findObjectByType.
    %     findObjectByTypeOnLeastLoadedNode - Finds a well-known object by type on the least-loaded node.
    %     findObjectByTypeOnLeastLoadedNodeAsync - An asynchronous findObjectByTypeOnLeastLoadedNode.
    %
    %   QueryPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::Query.
    %     uncheckedCast - Creates a QueryPrx from another proxy without any validation.
    %
    %   Generated from Registry.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = findObjectById(obj, id, context)
            %FINDOBJECTBYID Finds a well-known object by identity.
            %
            %   Input Arguments
            %     id - The identity.
            %       Ice.Identity scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to the well-known object, or null if no such object is registered.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            
            arguments
                obj (1, 1) IceGrid.QueryPrx
                id (1, 1) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('findObjectById', 2, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = findObjectByIdAsync(obj, id, context)
            %FINDOBJECTBYIDASYNC Finds a well-known object by identity.
            %
            %   Input Arguments
            %     id - The identity.
            %       Ice.Identity scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also findObjectById, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.QueryPrx
                id (1, 1) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('findObjectById', 2, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = findObjectByType(obj, type, context)
            %FINDOBJECTBYTYPE Finds a well-known object by type. If there are several objects registered for the given type, the object is
            %   randomly selected.
            %
            %   Input Arguments
            %     type - The object type.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to a well-known object with the specified type, or null if no such object is registered.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            
            arguments
                obj (1, 1) IceGrid.QueryPrx
                type (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('findObjectByType', 2, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = findObjectByTypeAsync(obj, type, context)
            %FINDOBJECTBYTYPEASYNC Finds a well-known object by type. If there are several objects registered for the given type, the object is
            %   randomly selected.
            %
            %   Input Arguments
            %     type - The object type.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also findObjectByType, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.QueryPrx
                type (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('findObjectByType', 2, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = findObjectByTypeOnLeastLoadedNode(obj, type, sample, context)
            %FINDOBJECTBYTYPEONLEASTLOADEDNODE Finds a well-known object by type on the least-loaded node. If the registry does not know which node hosts
            %   the object (for example, because the object was registered with a direct proxy), the registry assumes the
            %   object is hosted on a node that has a load average of 1.0.
            %
            %   Input Arguments
            %     type - The object type.
            %       character vector
            %     sample - The sampling interval.
            %       IceGrid.LoadSample scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to the well-known object, or null if no such object is registered.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            
            arguments
                obj (1, 1) IceGrid.QueryPrx
                type (1, :) char
                sample (1, 1) IceGrid.LoadSample
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            IceGrid.LoadSample.ice_write(os_, sample);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('findObjectByTypeOnLeastLoadedNode', 2, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = findObjectByTypeOnLeastLoadedNodeAsync(obj, type, sample, context)
            %FINDOBJECTBYTYPEONLEASTLOADEDNODEASYNC Finds a well-known object by type on the least-loaded node. If the registry does not know which node hosts
            %   the object (for example, because the object was registered with a direct proxy), the registry assumes the
            %   object is hosted on a node that has a load average of 1.0.
            %
            %   Input Arguments
            %     type - The object type.
            %       character vector
            %     sample - The sampling interval.
            %       IceGrid.LoadSample scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also findObjectByTypeOnLeastLoadedNode, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.QueryPrx
                type (1, :) char
                sample (1, 1) IceGrid.LoadSample
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            IceGrid.LoadSample.ice_write(os_, sample);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('findObjectByTypeOnLeastLoadedNode', 2, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = findAllObjectsByType(obj, type, context)
            %FINDALLOBJECTSBYTYPE Finds all the well-known objects with the given type.
            %
            %   Input Arguments
            %     type - The object type.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A list of proxies to the well-known objects with the specified type. Can be empty.
            %       cell array
            
            arguments
                obj (1, 1) IceGrid.QueryPrx
                type (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('findAllObjectsByType', 2, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Ice.ObjectProxySeq.read(is_);
            is_.endEncapsulation();
        end

        function future = findAllObjectsByTypeAsync(obj, type, context)
            %FINDALLOBJECTSBYTYPEASYNC Finds all the well-known objects with the given type.
            %
            %   Input Arguments
            %     type - The object type.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also findAllObjectsByType, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.QueryPrx
                type (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Ice.ObjectProxySeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('findAllObjectsByType', 2, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = findAllReplicas(obj, proxy, context)
            %FINDALLREPLICAS Finds all the replicas of a well-known object.
            %
            %   Input Arguments
            %     proxy - A proxy that identifies the well-known object.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A list of proxies  to the replicas of the well-known object specified by |proxy|. Can be empty.
            %       cell array
            
            arguments
                obj (1, 1) IceGrid.QueryPrx
                proxy Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('findAllReplicas', 2, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Ice.ObjectProxySeq.read(is_);
            is_.endEncapsulation();
        end

        function future = findAllReplicasAsync(obj, proxy, context)
            %FINDALLREPLICASASYNC Finds all the replicas of a well-known object.
            %
            %   Input Arguments
            %     proxy - A proxy that identifies the well-known object.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also findAllReplicas, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.QueryPrx
                proxy Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Ice.ObjectProxySeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('findAllReplicas', 2, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::Query';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.QueryPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::Query.
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
            %     r - A IceGrid.QueryPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::Query; otherwise, an empty array of IceGrid.QueryPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.QueryPrx.ice_staticId(), 'IceGrid.QueryPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.QueryPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.QueryPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.QueryPrx', varargin{:});
        end
    end
end
