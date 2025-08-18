classdef IB1Prx < Test.MA.IAPrx
    %IB1PRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.MB.IB1Prx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   IB1Prx Methods:
    %     ib1op
    %     ib1opAsync - An asynchronous ib1op.
    %
    %   IB1Prx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::MB::IB1.
    %     uncheckedCast - Creates a IB1Prx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = ib1op(obj, p, context)
            %IB1OP
            %
            %   Input Arguments
            %     p
            %       Test.MB.IB1Prx scalar | empty array of Test.MB.IB1Prx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MB.IB1Prx scalar | empty array of Test.MB.IB1Prx
            
            arguments
                obj (1, 1) Test.MB.IB1Prx
                p Test.MB.IB1Prx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('ib1op', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.MB.IB1Prx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = ib1opAsync(obj, p, context)
            %IB1OPASYNC
            %
            %   Input Arguments
            %     p
            %       Test.MB.IB1Prx scalar | empty array of Test.MB.IB1Prx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also ib1op, Ice.Future.
            
            arguments
                obj (1, 1) Test.MB.IB1Prx
                p Test.MB.IB1Prx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.MB.IB1Prx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('ib1op', 0, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::MB::IB1';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.MB.IB1Prx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::MB::IB1.
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
            %     r - A Test.MB.IB1Prx scalar if the target object implements Slice interface 
            %       ::Test::MB::IB1; otherwise, an empty array of Test.MB.IB1Prx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MB.IB1Prx.ice_staticId(), 'Test.MB.IB1Prx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.MB.IB1Prx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.MB.IB1Prx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MB.IB1Prx', varargin{:});
        end
    end
end
