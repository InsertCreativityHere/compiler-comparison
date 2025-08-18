classdef typeofPrx < Ice.ObjectPrx
    %TYPEOFPRX
    %
    %   Creation
    %     Syntax
    %       prx = await.typeofPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   typeofPrx Methods:
    %     default
    %     defaultAsync - An asynchronous default.
    %
    %   typeofPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::await::typeof.
    %     uncheckedCast - Creates a typeofPrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function default(obj, context)
            %DEFAULT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) await.typeofPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('default', 0, false, [], false, {}, context);
        end

        function future = defaultAsync(obj, context)
            %DEFAULTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also default, Ice.Future.
            
            arguments
                obj (1, 1) await.typeofPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('default', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::await::typeof';
        end

        function r = ice_read(is)
            r = is.readProxy('await.typeofPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::await::typeof.
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
            %     r - A await.typeofPrx scalar if the target object implements Slice interface 
            %       ::await::typeof; otherwise, an empty array of await.typeofPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, await.typeofPrx.ice_staticId(), 'await.typeofPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a await.typeofPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new await.typeofPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'await.typeofPrx', varargin{:});
        end
    end
end
