classdef RegistryObserverPrx < Ice.ObjectPrx
    %REGISTRYOBSERVERPRX Monitors changes to the state of the registries.
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.RegistryObserverPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   RegistryObserverPrx Methods:
    %     registryDown - Notifies the observer that a registry replica went down.
    %     registryDownAsync - An asynchronous registryDown.
    %     registryInit - Provides the initial state of the registries to the observer.
    %     registryInitAsync - An asynchronous registryInit.
    %     registryUp - Notifies the observer that a registry replica came up.
    %     registryUpAsync - An asynchronous registryUp.
    %
    %   RegistryObserverPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::RegistryObserver.
    %     uncheckedCast - Creates a RegistryObserverPrx from another proxy without any validation.
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function registryInit(obj, registries, context)
            %REGISTRYINIT Provides the initial state of the registries to the observer.
            %
            %   Input Arguments
            %     registries - The current state of the registries.
            %       IceGrid.RegistryInfo vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.RegistryObserverPrx
                registries (1, :) IceGrid.RegistryInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.RegistryInfoSeq.write(os_, registries);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('registryInit', 0, false, os_, false, {}, context);
        end

        function future = registryInitAsync(obj, registries, context)
            %REGISTRYINITASYNC Provides the initial state of the registries to the observer.
            %
            %   Input Arguments
            %     registries - The current state of the registries.
            %       IceGrid.RegistryInfo vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also registryInit, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.RegistryObserverPrx
                registries (1, :) IceGrid.RegistryInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.RegistryInfoSeq.write(os_, registries);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('registryInit', 0, false, os_, 0, [], {}, context);
        end

        function registryUp(obj, registryReplica, context)
            %REGISTRYUP Notifies the observer that a registry replica came up.
            %
            %   Input Arguments
            %     registryReplica - The registry state.
            %       IceGrid.RegistryInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.RegistryObserverPrx
                registryReplica (1, 1) IceGrid.RegistryInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.RegistryInfo.ice_write(os_, registryReplica);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('registryUp', 0, false, os_, false, {}, context);
        end

        function future = registryUpAsync(obj, registryReplica, context)
            %REGISTRYUPASYNC Notifies the observer that a registry replica came up.
            %
            %   Input Arguments
            %     registryReplica - The registry state.
            %       IceGrid.RegistryInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also registryUp, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.RegistryObserverPrx
                registryReplica (1, 1) IceGrid.RegistryInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.RegistryInfo.ice_write(os_, registryReplica);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('registryUp', 0, false, os_, 0, [], {}, context);
        end

        function registryDown(obj, name, context)
            %REGISTRYDOWN Notifies the observer that a registry replica went down.
            %
            %   Input Arguments
            %     name - The registry name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.RegistryObserverPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('registryDown', 0, false, os_, false, {}, context);
        end

        function future = registryDownAsync(obj, name, context)
            %REGISTRYDOWNASYNC Notifies the observer that a registry replica went down.
            %
            %   Input Arguments
            %     name - The registry name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also registryDown, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.RegistryObserverPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('registryDown', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::RegistryObserver';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.RegistryObserverPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::RegistryObserver.
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
            %     r - A IceGrid.RegistryObserverPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::RegistryObserver; otherwise, an empty array of IceGrid.RegistryObserverPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.RegistryObserverPrx.ice_staticId(), 'IceGrid.RegistryObserverPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.RegistryObserverPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.RegistryObserverPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.RegistryObserverPrx', varargin{:});
        end
    end
end
