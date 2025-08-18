classdef CleanerPrx < Ice.ObjectPrx
    %CLEANERPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.CleanerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   CleanerPrx Methods:
    %     cleanup
    %     cleanupAsync - An asynchronous cleanup.
    %
    %   CleanerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Cleaner.
    %     uncheckedCast - Creates a CleanerPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function cleanup(obj, context)
            %CLEANUP
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.CleanerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('cleanup', 0, false, [], false, {}, context);
        end

        function future = cleanupAsync(obj, context)
            %CLEANUPASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also cleanup, Ice.Future.
            
            arguments
                obj (1, 1) Test.CleanerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('cleanup', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Cleaner';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.CleanerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Cleaner.
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
            %     r - A Test.CleanerPrx scalar if the target object implements Slice interface 
            %       ::Test::Cleaner; otherwise, an empty array of Test.CleanerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.CleanerPrx.ice_staticId(), 'Test.CleanerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.CleanerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.CleanerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.CleanerPrx', varargin{:});
        end
    end
end
