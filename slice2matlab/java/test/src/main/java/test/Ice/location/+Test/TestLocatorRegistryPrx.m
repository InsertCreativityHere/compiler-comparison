classdef TestLocatorRegistryPrx < Ice.LocatorRegistryPrx
    %TESTLOCATORREGISTRYPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.TestLocatorRegistryPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   TestLocatorRegistryPrx Methods:
    %     addObject - Allow remote addition of objects to the locator registry.
    %     addObjectAsync - An asynchronous addObject.
    %
    %   TestLocatorRegistryPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::TestLocatorRegistry.
    %     uncheckedCast - Creates a TestLocatorRegistryPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function addObject(obj_, obj, context)
            %ADDOBJECT Allow remote addition of objects to the locator registry.
            %
            %   Input Arguments
            %     obj
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj_ (1, 1) Test.TestLocatorRegistryPrx
                obj Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            obj_.iceInvoke('addObject', 0, false, os_, false, {}, context);
        end

        function future = addObjectAsync(obj_, obj, context)
            %ADDOBJECTASYNC Allow remote addition of objects to the locator registry.
            %
            %   Input Arguments
            %     obj
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also addObject, Ice.Future.
            
            arguments
                obj_ (1, 1) Test.TestLocatorRegistryPrx
                obj Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            future = obj_.iceInvokeAsync('addObject', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::TestLocatorRegistry';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.TestLocatorRegistryPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::TestLocatorRegistry.
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
            %     r - A Test.TestLocatorRegistryPrx scalar if the target object implements Slice interface 
            %       ::Test::TestLocatorRegistry; otherwise, an empty array of Test.TestLocatorRegistryPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestLocatorRegistryPrx.ice_staticId(), 'Test.TestLocatorRegistryPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.TestLocatorRegistryPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.TestLocatorRegistryPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestLocatorRegistryPrx', varargin{:});
        end
    end
end
