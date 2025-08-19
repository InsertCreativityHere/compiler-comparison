classdef LocatorFinderPrx < Ice.ObjectPrx
    %LOCATORFINDERPRX Provides access to a <a href="matlab:help Ice.LocatorPrx -displayBanner">LocatorPrx</a> object via a fixed identity.
    %   A LocatorFinder is always registered with identity |Ice/LocatorFinder|. This allows clients to obtain the
    %   associated Locator proxy with just the endpoint information of the object. For example, you can use the
    %   LocatorFinder proxy |Ice/LocatorFinder:tcp -h somehost -p 4061| to get the Locator proxy
    %   |MyIceGrid/Locator:tcp -h somehost -p 4061|.
    %
    %   Creation
    %     Syntax
    %       prx = Ice.LocatorFinderPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   LocatorFinderPrx Methods:
    %     getLocator - Gets a proxy to the associated <a href="matlab:help Ice.LocatorPrx -displayBanner">LocatorPrx</a>.
    %     getLocatorAsync - An asynchronous getLocator.
    %
    %   LocatorFinderPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Ice::LocatorFinder.
    %     uncheckedCast - Creates a LocatorFinderPrx from another proxy without any validation.
    %
    %   Generated from Locator.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getLocator(obj, context)
            %GETLOCATOR Gets a proxy to the associated <a href="matlab:help Ice.LocatorPrx -displayBanner">LocatorPrx</a>. The proxy might point to several replicas.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The locator proxy. This proxy is never null.
            %       Ice.LocatorPrx scalar | empty array of Ice.LocatorPrx
            
            arguments
                obj (1, 1) Ice.LocatorFinderPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getLocator', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Ice.LocatorPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getLocatorAsync(obj, context)
            %GETLOCATORASYNC Gets a proxy to the associated <a href="matlab:help Ice.LocatorPrx -displayBanner">LocatorPrx</a>. The proxy might point to several replicas.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getLocator, Ice.Future.
            
            arguments
                obj (1, 1) Ice.LocatorFinderPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Ice.LocatorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getLocator', 0, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Ice::LocatorFinder';
        end

        function r = ice_read(is)
            r = is.readProxy('Ice.LocatorFinderPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Ice::LocatorFinder.
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
            %     r - A Ice.LocatorFinderPrx scalar if the target object implements Slice interface 
            %       ::Ice::LocatorFinder; otherwise, an empty array of Ice.LocatorFinderPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.LocatorFinderPrx.ice_staticId(), 'Ice.LocatorFinderPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Ice.LocatorFinderPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Ice.LocatorFinderPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.LocatorFinderPrx', varargin{:});
        end
    end
end
