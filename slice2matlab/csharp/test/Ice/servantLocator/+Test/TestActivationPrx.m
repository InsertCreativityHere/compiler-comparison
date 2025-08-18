classdef TestActivationPrx < Ice.ObjectPrx
    %TESTACTIVATIONPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.TestActivationPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   TestActivationPrx Methods:
    %     activateServantLocator
    %     activateServantLocatorAsync - An asynchronous activateServantLocator.
    %
    %   TestActivationPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::TestActivation.
    %     uncheckedCast - Creates a TestActivationPrx from another proxy without any validation.
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function activateServantLocator(obj, activate, context)
            %ACTIVATESERVANTLOCATOR
            %
            %   Input Arguments
            %     activate
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestActivationPrx
                activate (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(activate);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('activateServantLocator', 0, false, os_, false, {}, context);
        end

        function future = activateServantLocatorAsync(obj, activate, context)
            %ACTIVATESERVANTLOCATORASYNC
            %
            %   Input Arguments
            %     activate
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also activateServantLocator, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestActivationPrx
                activate (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(activate);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('activateServantLocator', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::TestActivation';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.TestActivationPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::TestActivation.
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
            %     r - A Test.TestActivationPrx scalar if the target object implements Slice interface 
            %       ::Test::TestActivation; otherwise, an empty array of Test.TestActivationPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestActivationPrx.ice_staticId(), 'Test.TestActivationPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.TestActivationPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.TestActivationPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestActivationPrx', varargin{:});
        end
    end
end
