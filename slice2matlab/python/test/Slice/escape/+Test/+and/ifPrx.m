classdef ifPrx < Test.and.execPrx & Test.and.delPrx
    %IFPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.and.ifPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ifPrx Methods:
    %     raise
    %     raiseAsync - An asynchronous raise.
    %
    %   ifPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::and::if.
    %     uncheckedCast - Creates a ifPrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = raise(obj, else, return, while, yield, or, global, context)
            %RAISE
            %
            %   Input Arguments
            %     else
            %       Test.and.continue scalar
            %     return
            %       Test.and.for scalar | empty array of Test.and.for
            %     while
            %       Test.and.delPrx scalar | empty array of Test.and.delPrx
            %     yield
            %       Test.and.execPrx scalar | empty array of Test.and.execPrx
            %     or
            %       Test.and.ifPrx scalar | empty array of Test.and.ifPrx
            %     global
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.and.assert scalar
            %
            %   Exceptions
            %     Test.and.is
            
            arguments
                obj (1, 1) Test.and.ifPrx
                else (1, 1) Test.and.continue
                return Test.and.for {mustBeScalarOrEmpty}
                while Test.and.delPrx {mustBeScalarOrEmpty}
                yield Test.and.execPrx {mustBeScalarOrEmpty}
                or Test.and.ifPrx {mustBeScalarOrEmpty}
                global (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.and.continue.ice_write(os_, else);
            os_.writeValue(return);
            os_.writeProxy(while);
            os_.writeProxy(yield);
            os_.writeProxy(or);
            os_.writeInt(global);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('raise', 0, true, os_, true, Test.and.ifPrx.raise_ex_, context);
            is_.startEncapsulation();
            returnValue = Test.and.assert.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = raiseAsync(obj, else, return, while, yield, or, global, context)
            %RAISEASYNC
            %
            %   Input Arguments
            %     else
            %       Test.and.continue scalar
            %     return
            %       Test.and.for scalar | empty array of Test.and.for
            %     while
            %       Test.and.delPrx scalar | empty array of Test.and.delPrx
            %     yield
            %       Test.and.execPrx scalar | empty array of Test.and.execPrx
            %     or
            %       Test.and.ifPrx scalar | empty array of Test.and.ifPrx
            %     global
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also raise, Ice.Future.
            
            arguments
                obj (1, 1) Test.and.ifPrx
                else (1, 1) Test.and.continue
                return Test.and.for {mustBeScalarOrEmpty}
                while Test.and.delPrx {mustBeScalarOrEmpty}
                yield Test.and.execPrx {mustBeScalarOrEmpty}
                or Test.and.ifPrx {mustBeScalarOrEmpty}
                global (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.and.continue.ice_write(os_, else);
            os_.writeValue(return);
            os_.writeProxy(while);
            os_.writeProxy(yield);
            os_.writeProxy(or);
            os_.writeInt(global);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.and.assert.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('raise', 0, true, os_, 1, @unmarshal, Test.and.ifPrx.raise_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::and::if';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.and.ifPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::and::if.
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
            %     r - A Test.and.ifPrx scalar if the target object implements Slice interface 
            %       ::Test::and::if; otherwise, an empty array of Test.and.ifPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.and.ifPrx.ice_staticId(), 'Test.and.ifPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.and.ifPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.and.ifPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.and.ifPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        raise_ex_ = { 'Test.and.is' }
    end
end
