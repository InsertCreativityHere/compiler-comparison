classdef TestIntfControllerPrx < Ice.ObjectPrx
    %TESTINTFCONTROLLERPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.TestIntfControllerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   TestIntfControllerPrx Methods:
    %     holdAdapter
    %     holdAdapterAsync - An asynchronous holdAdapter.
    %     resumeAdapter
    %     resumeAdapterAsync - An asynchronous resumeAdapter.
    %
    %   TestIntfControllerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntfController.
    %     uncheckedCast - Creates a TestIntfControllerPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function holdAdapter(obj, context)
            %HOLDADAPTER
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfControllerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('holdAdapter', 0, false, [], false, {}, context);
        end

        function future = holdAdapterAsync(obj, context)
            %HOLDADAPTERASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also holdAdapter, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfControllerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('holdAdapter', 0, false, [], 0, [], {}, context);
        end

        function resumeAdapter(obj, context)
            %RESUMEADAPTER
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfControllerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('resumeAdapter', 0, false, [], false, {}, context);
        end

        function future = resumeAdapterAsync(obj, context)
            %RESUMEADAPTERASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also resumeAdapter, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfControllerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('resumeAdapter', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::TestIntfController';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.TestIntfControllerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntfController.
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
            %     r - A Test.TestIntfControllerPrx scalar if the target object implements Slice interface 
            %       ::Test::TestIntfController; otherwise, an empty array of Test.TestIntfControllerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestIntfControllerPrx.ice_staticId(), 'Test.TestIntfControllerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.TestIntfControllerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.TestIntfControllerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestIntfControllerPrx', varargin{:});
        end
    end
end
