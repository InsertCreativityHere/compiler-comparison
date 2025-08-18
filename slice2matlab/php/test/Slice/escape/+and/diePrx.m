classdef diePrx < Ice.ObjectPrx
    %DIEPRX
    %
    %   Creation
    %     Syntax
    %       prx = and.diePrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   diePrx Methods:
    %     do
    %     doAsync - An asynchronous do.
    %
    %   diePrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::and::die.
    %     uncheckedCast - Creates a diePrx from another proxy without any validation.
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
                obj (1, 1) and.diePrx
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
                obj (1, 1) and.diePrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('do', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::and::die';
        end

        function r = ice_read(is)
            r = is.readProxy('and.diePrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::and::die.
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
            %     r - A and.diePrx scalar if the target object implements Slice interface 
            %       ::and::die; otherwise, an empty array of and.diePrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, and.diePrx.ice_staticId(), 'and.diePrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a and.diePrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new and.diePrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'and.diePrx', varargin{:});
        end
    end
end
