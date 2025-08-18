classdef IAPrx < Ice.ObjectPrx
    %IAPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.MA.IAPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   IAPrx Methods:
    %     iaop
    %     iaopAsync - An asynchronous iaop.
    %
    %   IAPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::MA::IA.
    %     uncheckedCast - Creates a IAPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = iaop(obj, p, context)
            %IAOP
            %
            %   Input Arguments
            %     p
            %       Test.MA.IAPrx scalar | empty array of Test.MA.IAPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MA.IAPrx scalar | empty array of Test.MA.IAPrx
            
            arguments
                obj (1, 1) Test.MA.IAPrx
                p Test.MA.IAPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('iaop', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.MA.IAPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = iaopAsync(obj, p, context)
            %IAOPASYNC
            %
            %   Input Arguments
            %     p
            %       Test.MA.IAPrx scalar | empty array of Test.MA.IAPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also iaop, Ice.Future.
            
            arguments
                obj (1, 1) Test.MA.IAPrx
                p Test.MA.IAPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.MA.IAPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('iaop', 0, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::MA::IA';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.MA.IAPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::MA::IA.
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
            %     r - A Test.MA.IAPrx scalar if the target object implements Slice interface 
            %       ::Test::MA::IA; otherwise, an empty array of Test.MA.IAPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MA.IAPrx.ice_staticId(), 'Test.MA.IAPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.MA.IAPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.MA.IAPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MA.IAPrx', varargin{:});
        end
    end
end
