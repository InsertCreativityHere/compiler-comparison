classdef TestPrx < Ice.ObjectPrx
    %TESTPRX
    %
    %   Creation
    %     Syntax
    %       prx = await.System.TestPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   TestPrx Methods:
    %     op
    %     opAsync - An asynchronous op.
    %
    %   TestPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::await::System::Test.
    %     uncheckedCast - Creates a TestPrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function op(obj, context)
            %OP
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) await.System.TestPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('op', 0, false, [], false, {}, context);
        end

        function future = opAsync(obj, context)
            %OPASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also op, Ice.Future.
            
            arguments
                obj (1, 1) await.System.TestPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('op', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::await::System::Test';
        end

        function r = ice_read(is)
            r = is.readProxy('await.System.TestPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::await::System::Test.
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
            %     r - A await.System.TestPrx scalar if the target object implements Slice interface 
            %       ::await::System::Test; otherwise, an empty array of await.System.TestPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, await.System.TestPrx.ice_staticId(), 'await.System.TestPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a await.System.TestPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new await.System.TestPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'await.System.TestPrx', varargin{:});
        end
    end
end
