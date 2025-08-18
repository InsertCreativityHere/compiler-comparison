classdef CPrx < Test.APrx & Test.BPrx
    %CPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.CPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   CPrx Methods:
    %     opC
    %     opCAsync - An asynchronous opC.
    %     opS
    %     opSAsync - An asynchronous opS.
    %
    %   CPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::C.
    %     uncheckedCast - Creates a CPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = opC(obj, c, context)
            %OPC
            %
            %   Input Arguments
            %     c
            %       Test.CPrx scalar | empty array of Test.CPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.CPrx scalar | empty array of Test.CPrx
            
            arguments
                obj (1, 1) Test.CPrx
                c Test.CPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(c);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opC', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.CPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opCAsync(obj, c, context)
            %OPCASYNC
            %
            %   Input Arguments
            %     c
            %       Test.CPrx scalar | empty array of Test.CPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opC, Ice.Future.
            
            arguments
                obj (1, 1) Test.CPrx
                c Test.CPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(c);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.CPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opC', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opS(obj, s, context)
            %OPS
            %
            %   Input Arguments
            %     s
            %       Test.S scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.S scalar
            
            arguments
                obj (1, 1) Test.CPrx
                s (1, 1) Test.S
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.S.ice_write(os_, s);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.S.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opSAsync(obj, s, context)
            %OPSASYNC
            %
            %   Input Arguments
            %     s
            %       Test.S scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opS, Ice.Future.
            
            arguments
                obj (1, 1) Test.CPrx
                s (1, 1) Test.S
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.S.ice_write(os_, s);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.S.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opS', 0, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::C';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.CPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::C.
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
            %     r - A Test.CPrx scalar if the target object implements Slice interface 
            %       ::Test::C; otherwise, an empty array of Test.CPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.CPrx.ice_staticId(), 'Test.CPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.CPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.CPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.CPrx', varargin{:});
        end
    end
end
