classdef Interface2Prx < Ice.ObjectPrx
    %INTERFACE2PRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.Interface2Prx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   Interface2Prx Methods:
    %     method
    %     methodAsync - An asynchronous method.
    %
    %   Interface2Prx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Interface2.
    %     uncheckedCast - Creates a Interface2Prx from another proxy without any validation.
    %
    %   Generated from File2.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function method(obj, context)
            %METHOD
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.Interface2Prx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('method', 0, false, [], false, {}, context);
        end

        function future = methodAsync(obj, context)
            %METHODASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also method, Ice.Future.
            
            arguments
                obj (1, 1) Test.Interface2Prx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('method', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Interface2';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.Interface2Prx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Interface2.
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
            %     r - A Test.Interface2Prx scalar if the target object implements Slice interface 
            %       ::Test::Interface2; otherwise, an empty array of Test.Interface2Prx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Interface2Prx.ice_staticId(), 'Test.Interface2Prx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.Interface2Prx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.Interface2Prx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Interface2Prx', varargin{:});
        end
    end
end
