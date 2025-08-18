classdef LookupReplyPrx < Ice.ObjectPrx
    %LOOKUPREPLYPRX Represents a callback object implemented by IceLocatorDiscovery clients. It allows IceLocatorDiscovery clients
    %   to receive replies to Lookup requests.
    %
    %   Creation
    %     Syntax
    %       prx = IceLocatorDiscovery.LookupReplyPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   LookupReplyPrx Methods:
    %     foundLocator - Provides a reply to a <a href="matlab:help IceLocatorDiscovery.LookupPrx/findLocator -displayBanner">findLocator</a> request.
    %     foundLocatorAsync - An asynchronous foundLocator.
    %
    %   LookupReplyPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceLocatorDiscovery::LookupReply.
    %     uncheckedCast - Creates a LookupReplyPrx from another proxy without any validation.
    %
    %   See also IceLocatorDiscovery.Lookup
    %
    %   Generated from Lookup.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function foundLocator(obj, prx, context)
            %FOUNDLOCATOR Provides a reply to a <a href="matlab:help IceLocatorDiscovery.LookupPrx/findLocator -displayBanner">findLocator</a> request.
            %
            %   Input Arguments
            %     prx - The proxy of the locator.
            %       Ice.LocatorPrx scalar | empty array of Ice.LocatorPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceLocatorDiscovery.LookupReplyPrx
                prx Ice.LocatorPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(prx);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('foundLocator', 0, false, os_, false, {}, context);
        end

        function future = foundLocatorAsync(obj, prx, context)
            %FOUNDLOCATORASYNC Provides a reply to a <a href="matlab:help IceLocatorDiscovery.LookupPrx/findLocator -displayBanner">findLocator</a> request.
            %
            %   Input Arguments
            %     prx - The proxy of the locator.
            %       Ice.LocatorPrx scalar | empty array of Ice.LocatorPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also foundLocator, Ice.Future.
            
            arguments
                obj (1, 1) IceLocatorDiscovery.LookupReplyPrx
                prx Ice.LocatorPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(prx);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('foundLocator', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceLocatorDiscovery::LookupReply';
        end

        function r = ice_read(is)
            r = is.readProxy('IceLocatorDiscovery.LookupReplyPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceLocatorDiscovery::LookupReply.
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
            %     r - A IceLocatorDiscovery.LookupReplyPrx scalar if the target object implements Slice interface 
            %       ::IceLocatorDiscovery::LookupReply; otherwise, an empty array of IceLocatorDiscovery.LookupReplyPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceLocatorDiscovery.LookupReplyPrx.ice_staticId(), 'IceLocatorDiscovery.LookupReplyPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceLocatorDiscovery.LookupReplyPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceLocatorDiscovery.LookupReplyPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceLocatorDiscovery.LookupReplyPrx', varargin{:});
        end
    end
end
