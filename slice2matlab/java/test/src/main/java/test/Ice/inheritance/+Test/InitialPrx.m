classdef InitialPrx < Ice.ObjectPrx
    %INITIALPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.InitialPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   InitialPrx Methods:
    %     iaop
    %     iaopAsync - An asynchronous iaop.
    %     ib1op
    %     ib1opAsync - An asynchronous ib1op.
    %     ib2op
    %     ib2opAsync - An asynchronous ib2op.
    %     icop
    %     icopAsync - An asynchronous icop.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   InitialPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Initial.
    %     uncheckedCast - Creates a InitialPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('shutdown', 0, false, [], false, {}, context);
        end

        function future = shutdownAsync(obj, context)
            %SHUTDOWNASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also shutdown, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end

        function returnValue = iaop(obj, context)
            %IAOP
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MA.IAPrx scalar | empty array of Test.MA.IAPrx
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('iaop', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.MA.IAPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = iaopAsync(obj, context)
            %IAOPASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also iaop, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.MA.IAPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('iaop', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = ib1op(obj, context)
            %IB1OP
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MB.IB1Prx scalar | empty array of Test.MB.IB1Prx
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('ib1op', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.MB.IB1Prx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = ib1opAsync(obj, context)
            %IB1OPASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also ib1op, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.MB.IB1Prx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('ib1op', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = ib2op(obj, context)
            %IB2OP
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MB.IB2Prx scalar | empty array of Test.MB.IB2Prx
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('ib2op', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.MB.IB2Prx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = ib2opAsync(obj, context)
            %IB2OPASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also ib2op, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.MB.IB2Prx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('ib2op', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = icop(obj, context)
            %ICOP
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MA.ICPrx scalar | empty array of Test.MA.ICPrx
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('icop', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.MA.ICPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = icopAsync(obj, context)
            %ICOPASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also icop, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.MA.ICPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('icop', 0, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Initial';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.InitialPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Initial.
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
            %     r - A Test.InitialPrx scalar if the target object implements Slice interface 
            %       ::Test::Initial; otherwise, an empty array of Test.InitialPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.InitialPrx.ice_staticId(), 'Test.InitialPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.InitialPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.InitialPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.InitialPrx', varargin{:});
        end
    end
end
