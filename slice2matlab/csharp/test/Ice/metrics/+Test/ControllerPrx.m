classdef ControllerPrx < Ice.ObjectPrx
    %CONTROLLERPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.ControllerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ControllerPrx Methods:
    %     hold
    %     holdAsync - An asynchronous hold.
    %     resume
    %     resumeAsync - An asynchronous resume.
    %
    %   ControllerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Controller.
    %     uncheckedCast - Creates a ControllerPrx from another proxy without any validation.
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function hold(obj, context)
            %HOLD
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ControllerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('hold', 0, false, [], false, {}, context);
        end

        function future = holdAsync(obj, context)
            %HOLDASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also hold, Ice.Future.
            
            arguments
                obj (1, 1) Test.ControllerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('hold', 0, false, [], 0, [], {}, context);
        end

        function resume(obj, context)
            %RESUME
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ControllerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('resume', 0, false, [], false, {}, context);
        end

        function future = resumeAsync(obj, context)
            %RESUMEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also resume, Ice.Future.
            
            arguments
                obj (1, 1) Test.ControllerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('resume', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Controller';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.ControllerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Controller.
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
            %     r - A Test.ControllerPrx scalar if the target object implements Slice interface 
            %       ::Test::Controller; otherwise, an empty array of Test.ControllerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.ControllerPrx.ice_staticId(), 'Test.ControllerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.ControllerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.ControllerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.ControllerPrx', varargin{:});
        end
    end
end
