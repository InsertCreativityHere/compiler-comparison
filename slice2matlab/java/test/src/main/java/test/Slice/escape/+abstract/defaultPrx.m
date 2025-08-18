classdef defaultPrx < Ice.ObjectPrx
    %DEFAULTPRX
    %
    %   Creation
    %     Syntax
    %       prx = abstract.defaultPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   defaultPrx Methods:
    %     do
    %     doAsync - An asynchronous do.
    %
    %   defaultPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::abstract::default.
    %     uncheckedCast - Creates a defaultPrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function do(obj, context)
            %DO
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) abstract.defaultPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('do', 0, false, [], false, {}, context);
        end

        function future = doAsync(obj, context)
            %DOASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also do, Ice.Future.
            
            arguments
                obj (1, 1) abstract.defaultPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('do', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::abstract::default';
        end

        function r = ice_read(is)
            r = is.readProxy('abstract.defaultPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::abstract::default.
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
            %     r - A abstract.defaultPrx scalar if the target object implements Slice interface 
            %       ::abstract::default; otherwise, an empty array of abstract.defaultPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, abstract.defaultPrx.ice_staticId(), 'abstract.defaultPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a abstract.defaultPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new abstract.defaultPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'abstract.defaultPrx', varargin{:});
        end
    end
end
