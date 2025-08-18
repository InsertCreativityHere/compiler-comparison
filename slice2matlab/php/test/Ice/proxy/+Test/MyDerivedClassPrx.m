classdef MyDerivedClassPrx < Test.MyClassPrx
    %MYDERIVEDCLASSPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.MyDerivedClassPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   MyDerivedClassPrx Methods:
    %     echo
    %     echoAsync - An asynchronous echo.
    %
    %   MyDerivedClassPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::MyDerivedClass.
    %     uncheckedCast - Creates a MyDerivedClassPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = echo(obj_, obj, context)
            %ECHO
            %
            %   Input Arguments
            %     obj
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            
            arguments
                obj_ (1, 1) Test.MyDerivedClassPrx
                obj Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            is_ = obj_.iceInvoke('echo', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = echoAsync(obj_, obj, context)
            %ECHOASYNC
            %
            %   Input Arguments
            %     obj
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also echo, Ice.Future.
            
            arguments
                obj_ (1, 1) Test.MyDerivedClassPrx
                obj Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj_.iceInvokeAsync('echo', 0, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::MyDerivedClass';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.MyDerivedClassPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::MyDerivedClass.
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
            %     r - A Test.MyDerivedClassPrx scalar if the target object implements Slice interface 
            %       ::Test::MyDerivedClass; otherwise, an empty array of Test.MyDerivedClassPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MyDerivedClassPrx.ice_staticId(), 'Test.MyDerivedClassPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.MyDerivedClassPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.MyDerivedClassPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MyDerivedClassPrx', varargin{:});
        end
    end
end
