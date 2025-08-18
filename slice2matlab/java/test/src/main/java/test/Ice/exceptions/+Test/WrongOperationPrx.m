classdef WrongOperationPrx < Ice.ObjectPrx
    %WRONGOPERATIONPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.WrongOperationPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   WrongOperationPrx Methods:
    %     noSuchOperation
    %     noSuchOperationAsync - An asynchronous noSuchOperation.
    %
    %   WrongOperationPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::WrongOperation.
    %     uncheckedCast - Creates a WrongOperationPrx from another proxy without any validation.
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function noSuchOperation(obj, context)
            %NOSUCHOPERATION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.WrongOperationPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('noSuchOperation', 0, false, [], false, {}, context);
        end

        function future = noSuchOperationAsync(obj, context)
            %NOSUCHOPERATIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also noSuchOperation, Ice.Future.
            
            arguments
                obj (1, 1) Test.WrongOperationPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('noSuchOperation', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::WrongOperation';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.WrongOperationPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::WrongOperation.
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
            %     r - A Test.WrongOperationPrx scalar if the target object implements Slice interface 
            %       ::Test::WrongOperation; otherwise, an empty array of Test.WrongOperationPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.WrongOperationPrx.ice_staticId(), 'Test.WrongOperationPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.WrongOperationPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.WrongOperationPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.WrongOperationPrx', varargin{:});
        end
    end
end
