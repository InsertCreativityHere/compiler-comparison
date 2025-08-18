classdef BPrx < Ice.ObjectPrx
    %BPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.BPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   BPrx Methods:
    %     opB
    %     opBAsync - An asynchronous opB.
    %
    %   BPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::B.
    %     uncheckedCast - Creates a BPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = opB(obj, b, context)
            %OPB
            %
            %   Input Arguments
            %     b
            %       Test.BPrx scalar | empty array of Test.BPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.BPrx scalar | empty array of Test.BPrx
            
            arguments
                obj (1, 1) Test.BPrx
                b Test.BPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(b);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opB', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.BPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opBAsync(obj, b, context)
            %OPBASYNC
            %
            %   Input Arguments
            %     b
            %       Test.BPrx scalar | empty array of Test.BPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opB, Ice.Future.
            
            arguments
                obj (1, 1) Test.BPrx
                b Test.BPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(b);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.BPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opB', 0, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::B';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.BPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::B.
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
            %     r - A Test.BPrx scalar if the target object implements Slice interface 
            %       ::Test::B; otherwise, an empty array of Test.BPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.BPrx.ice_staticId(), 'Test.BPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.BPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.BPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.BPrx', varargin{:});
        end
    end
end
