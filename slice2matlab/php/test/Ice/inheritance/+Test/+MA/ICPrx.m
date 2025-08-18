classdef ICPrx < Test.MB.IB1Prx & Test.MB.IB2Prx
    %ICPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.MA.ICPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ICPrx Methods:
    %     icop
    %     icopAsync - An asynchronous icop.
    %
    %   ICPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::MA::IC.
    %     uncheckedCast - Creates a ICPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = icop(obj, p, context)
            %ICOP
            %
            %   Input Arguments
            %     p
            %       Test.MA.ICPrx scalar | empty array of Test.MA.ICPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MA.ICPrx scalar | empty array of Test.MA.ICPrx
            
            arguments
                obj (1, 1) Test.MA.ICPrx
                p Test.MA.ICPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('icop', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.MA.ICPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = icopAsync(obj, p, context)
            %ICOPASYNC
            %
            %   Input Arguments
            %     p
            %       Test.MA.ICPrx scalar | empty array of Test.MA.ICPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also icop, Ice.Future.
            
            arguments
                obj (1, 1) Test.MA.ICPrx
                p Test.MA.ICPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.MA.ICPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('icop', 0, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::MA::IC';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.MA.ICPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::MA::IC.
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
            %     r - A Test.MA.ICPrx scalar if the target object implements Slice interface 
            %       ::Test::MA::IC; otherwise, an empty array of Test.MA.ICPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MA.ICPrx.ice_staticId(), 'Test.MA.ICPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.MA.ICPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.MA.ICPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MA.ICPrx', varargin{:});
        end
    end
end
