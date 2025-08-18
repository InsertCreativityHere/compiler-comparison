classdef NodeObserverPrx < Ice.ObjectPrx
    %NODEOBSERVERPRX Monitors changes to the state of the nodes.
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.NodeObserverPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   NodeObserverPrx Methods:
    %     nodeDown - Notifies the observer that a node went down.
    %     nodeDownAsync - An asynchronous nodeDown.
    %     nodeInit - Provides the initial state of the nodes to the observer.
    %     nodeInitAsync - An asynchronous nodeInit.
    %     nodeUp - Notifies the observer that a node came up.
    %     nodeUpAsync - An asynchronous nodeUp.
    %     updateAdapter - Notifies the observer that the state of an object adapter changed.
    %     updateAdapterAsync - An asynchronous updateAdapter.
    %     updateServer - Notifies the observer that the state of a server changed.
    %     updateServerAsync - An asynchronous updateServer.
    %
    %   NodeObserverPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::NodeObserver.
    %     uncheckedCast - Creates a NodeObserverPrx from another proxy without any validation.
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function nodeInit(obj, nodes, context)
            %NODEINIT Provides the initial state of the nodes to the observer.
            %
            %   Input Arguments
            %     nodes - The current state of the nodes.
            %       IceGrid.NodeDynamicInfo vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.NodeObserverPrx
                nodes (1, :) IceGrid.NodeDynamicInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.NodeDynamicInfoSeq.write(os_, nodes);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('nodeInit', 0, false, os_, false, {}, context);
        end

        function future = nodeInitAsync(obj, nodes, context)
            %NODEINITASYNC Provides the initial state of the nodes to the observer.
            %
            %   Input Arguments
            %     nodes - The current state of the nodes.
            %       IceGrid.NodeDynamicInfo vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also nodeInit, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodeObserverPrx
                nodes (1, :) IceGrid.NodeDynamicInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.NodeDynamicInfoSeq.write(os_, nodes);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('nodeInit', 0, false, os_, 0, [], {}, context);
        end

        function nodeUp(obj, node, context)
            %NODEUP Notifies the observer that a node came up.
            %
            %   Input Arguments
            %     node - The node state.
            %       IceGrid.NodeDynamicInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.NodeObserverPrx
                node (1, 1) IceGrid.NodeDynamicInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.NodeDynamicInfo.ice_write(os_, node);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('nodeUp', 0, false, os_, false, {}, context);
        end

        function future = nodeUpAsync(obj, node, context)
            %NODEUPASYNC Notifies the observer that a node came up.
            %
            %   Input Arguments
            %     node - The node state.
            %       IceGrid.NodeDynamicInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also nodeUp, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodeObserverPrx
                node (1, 1) IceGrid.NodeDynamicInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.NodeDynamicInfo.ice_write(os_, node);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('nodeUp', 0, false, os_, 0, [], {}, context);
        end

        function nodeDown(obj, name, context)
            %NODEDOWN Notifies the observer that a node went down.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.NodeObserverPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('nodeDown', 0, false, os_, false, {}, context);
        end

        function future = nodeDownAsync(obj, name, context)
            %NODEDOWNASYNC Notifies the observer that a node went down.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also nodeDown, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodeObserverPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('nodeDown', 0, false, os_, 0, [], {}, context);
        end

        function updateServer(obj, node, updatedInfo, context)
            %UPDATESERVER Notifies the observer that the state of a server changed.
            %
            %   Input Arguments
            %     node - The node hosting the server.
            %       character vector
            %     updatedInfo - The new server state.
            %       IceGrid.ServerDynamicInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.NodeObserverPrx
                node (1, :) char
                updatedInfo (1, 1) IceGrid.ServerDynamicInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(node);
            IceGrid.ServerDynamicInfo.ice_write(os_, updatedInfo);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('updateServer', 0, false, os_, false, {}, context);
        end

        function future = updateServerAsync(obj, node, updatedInfo, context)
            %UPDATESERVERASYNC Notifies the observer that the state of a server changed.
            %
            %   Input Arguments
            %     node - The node hosting the server.
            %       character vector
            %     updatedInfo - The new server state.
            %       IceGrid.ServerDynamicInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also updateServer, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodeObserverPrx
                node (1, :) char
                updatedInfo (1, 1) IceGrid.ServerDynamicInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(node);
            IceGrid.ServerDynamicInfo.ice_write(os_, updatedInfo);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('updateServer', 0, false, os_, 0, [], {}, context);
        end

        function updateAdapter(obj, node, updatedInfo, context)
            %UPDATEADAPTER Notifies the observer that the state of an object adapter changed.
            %
            %   Input Arguments
            %     node - The node hosting the adapter.
            %       character vector
            %     updatedInfo - The new adapter state.
            %       IceGrid.AdapterDynamicInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.NodeObserverPrx
                node (1, :) char
                updatedInfo (1, 1) IceGrid.AdapterDynamicInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(node);
            IceGrid.AdapterDynamicInfo.ice_write(os_, updatedInfo);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('updateAdapter', 0, false, os_, false, {}, context);
        end

        function future = updateAdapterAsync(obj, node, updatedInfo, context)
            %UPDATEADAPTERASYNC Notifies the observer that the state of an object adapter changed.
            %
            %   Input Arguments
            %     node - The node hosting the adapter.
            %       character vector
            %     updatedInfo - The new adapter state.
            %       IceGrid.AdapterDynamicInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also updateAdapter, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodeObserverPrx
                node (1, :) char
                updatedInfo (1, 1) IceGrid.AdapterDynamicInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(node);
            IceGrid.AdapterDynamicInfo.ice_write(os_, updatedInfo);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('updateAdapter', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::NodeObserver';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.NodeObserverPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::NodeObserver.
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
            %     r - A IceGrid.NodeObserverPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::NodeObserver; otherwise, an empty array of IceGrid.NodeObserverPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.NodeObserverPrx.ice_staticId(), 'IceGrid.NodeObserverPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.NodeObserverPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.NodeObserverPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.NodeObserverPrx', varargin{:});
        end
    end
end
