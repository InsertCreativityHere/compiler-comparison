classdef decimalPrx < Ice.ObjectPrx
    %DECIMALPRX
    %
    %   Creation
    %     Syntax
    %       prx = abstract.decimalPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   decimalPrx Methods:
    %     default
    %     defaultAsync - An asynchronous default.
    %
    %   decimalPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::abstract::decimal.
    %     uncheckedCast - Creates a decimalPrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function default(obj, context)
            %DEFAULT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     abstract.foreach - make sure the link is correctly generated.
            
            arguments
                obj (1, 1) abstract.decimalPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('default', 0, true, [], false, abstract.decimalPrx.default_ex_, context);
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
                obj (1, 1) abstract.decimalPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('default', 0, true, [], 0, [], abstract.decimalPrx.default_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::abstract::decimal';
        end

        function r = ice_read(is)
            r = is.readProxy('abstract.decimalPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::abstract::decimal.
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
            %     r - A abstract.decimalPrx scalar if the target object implements Slice interface 
            %       ::abstract::decimal; otherwise, an empty array of abstract.decimalPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, abstract.decimalPrx.ice_staticId(), 'abstract.decimalPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a abstract.decimalPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new abstract.decimalPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'abstract.decimalPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        default_ex_ = { 'abstract.foreach' }
    end
end
