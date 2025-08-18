classdef APrx < Ice.ObjectPrx
    %APRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.APrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   APrx Methods:
    %     opA
    %     opAAsync - An asynchronous opA.
    %
    %   APrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::A.
    %     uncheckedCast - Creates a APrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = opA(obj, a, context)
            %OPA
            %
            %   Input Arguments
            %     a
            %       Test.APrx scalar | empty array of Test.APrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.APrx scalar | empty array of Test.APrx
            
            arguments
                obj (1, 1) Test.APrx
                a Test.APrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(a);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opA', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.APrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opAAsync(obj, a, context)
            %OPAASYNC
            %
            %   Input Arguments
            %     a
            %       Test.APrx scalar | empty array of Test.APrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opA, Ice.Future.
            
            arguments
                obj (1, 1) Test.APrx
                a Test.APrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(a);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.APrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opA', 0, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::A';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.APrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::A.
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
            %     r - A Test.APrx scalar if the target object implements Slice interface 
            %       ::Test::A; otherwise, an empty array of Test.APrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.APrx.ice_staticId(), 'Test.APrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.APrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.APrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.APrx', varargin{:});
        end
    end
end
