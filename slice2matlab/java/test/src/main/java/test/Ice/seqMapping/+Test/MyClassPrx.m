classdef MyClassPrx < Ice.ObjectPrx
    %MYCLASSPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.MyClassPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   MyClassPrx Methods:
    %     opSerialLargeJava
    %     opSerialLargeJavaAsync - An asynchronous opSerialLargeJava.
    %     opSerialSmallJava
    %     opSerialSmallJavaAsync - An asynchronous opSerialSmallJava.
    %     opSerialStructJava
    %     opSerialStructJavaAsync - An asynchronous opSerialStructJava.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   MyClassPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::MyClass.
    %     uncheckedCast - Creates a MyClassPrx from another proxy without any validation.
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
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
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end

        function [returnValue, o] = opSerialSmallJava(obj, i, context)
            %OPSERIALSMALLJAVA
            %
            %   Input Arguments
            %     i
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     o
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSerialSmallJava', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opSerialSmallJavaAsync(obj, i, context)
            %OPSERIALSMALLJAVAASYNC
            %
            %   Input Arguments
            %     i
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSerialSmallJava, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opSerialSmallJava', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opSerialLargeJava(obj, i, context)
            %OPSERIALLARGEJAVA
            %
            %   Input Arguments
            %     i
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     o
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSerialLargeJava', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opSerialLargeJavaAsync(obj, i, context)
            %OPSERIALLARGEJAVAASYNC
            %
            %   Input Arguments
            %     i
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSerialLargeJava, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opSerialLargeJava', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opSerialStructJava(obj, i, context)
            %OPSERIALSTRUCTJAVA
            %
            %   Input Arguments
            %     i
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     o
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSerialStructJava', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opSerialStructJavaAsync(obj, i, context)
            %OPSERIALSTRUCTJAVAASYNC
            %
            %   Input Arguments
            %     i
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSerialStructJava, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opSerialStructJava', 0, true, os_, 2, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::MyClass';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.MyClassPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::MyClass.
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
            %     r - A Test.MyClassPrx scalar if the target object implements Slice interface 
            %       ::Test::MyClass; otherwise, an empty array of Test.MyClassPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MyClassPrx.ice_staticId(), 'Test.MyClassPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.MyClassPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.MyClassPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MyClassPrx', varargin{:});
        end
    end
end
