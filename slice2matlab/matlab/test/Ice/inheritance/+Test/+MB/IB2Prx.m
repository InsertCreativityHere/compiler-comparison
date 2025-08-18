classdef IB2Prx < Test.MA.IAPrx
    %IB2PRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.MB.IB2Prx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   IB2Prx Methods:
    %     ib2op
    %     ib2opAsync - An asynchronous ib2op.
    %
    %   IB2Prx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::MB::IB2.
    %     uncheckedCast - Creates a IB2Prx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = ib2op(obj, p, context)
            %IB2OP
            %
            %   Input Arguments
            %     p
            %       Test.MB.IB2Prx scalar | empty array of Test.MB.IB2Prx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MB.IB2Prx scalar | empty array of Test.MB.IB2Prx
            
            arguments
                obj (1, 1) Test.MB.IB2Prx
                p Test.MB.IB2Prx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('ib2op', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.MB.IB2Prx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = ib2opAsync(obj, p, context)
            %IB2OPASYNC
            %
            %   Input Arguments
            %     p
            %       Test.MB.IB2Prx scalar | empty array of Test.MB.IB2Prx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also ib2op, Ice.Future.
            
            arguments
                obj (1, 1) Test.MB.IB2Prx
                p Test.MB.IB2Prx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.MB.IB2Prx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('ib2op', 0, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::MB::IB2';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.MB.IB2Prx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::MB::IB2.
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
            %     r - A Test.MB.IB2Prx scalar if the target object implements Slice interface 
            %       ::Test::MB::IB2; otherwise, an empty array of Test.MB.IB2Prx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MB.IB2Prx.ice_staticId(), 'Test.MB.IB2Prx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.MB.IB2Prx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.MB.IB2Prx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MB.IB2Prx', varargin{:});
        end
    end
end
