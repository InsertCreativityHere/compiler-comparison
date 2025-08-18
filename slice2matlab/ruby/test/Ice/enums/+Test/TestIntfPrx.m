classdef TestIntfPrx < Ice.ObjectPrx
    %TESTINTFPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.TestIntfPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   TestIntfPrx Methods:
    %     opByte
    %     opByteAsync - An asynchronous opByte.
    %     opInt
    %     opIntAsync - An asynchronous opInt.
    %     opShort
    %     opShortAsync - An asynchronous opShort.
    %     opSimple
    %     opSimpleAsync - An asynchronous opSimple.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   TestIntfPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntf.
    %     uncheckedCast - Creates a TestIntfPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [returnValue, b2] = opByte(obj, b1, context)
            %OPBYTE
            %
            %   Input Arguments
            %     b1
            %       Test.ByteEnum scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.ByteEnum scalar
            %     b2
            %       Test.ByteEnum scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                b1 (1, 1) Test.ByteEnum
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ByteEnum.ice_write(os_, b1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByte', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            b2 = Test.ByteEnum.ice_read(is_);
            returnValue = Test.ByteEnum.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opByteAsync(obj, b1, context)
            %OPBYTEASYNC
            %
            %   Input Arguments
            %     b1
            %       Test.ByteEnum scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByte, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                b1 (1, 1) Test.ByteEnum
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ByteEnum.ice_write(os_, b1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                b2 = Test.ByteEnum.ice_read(is_);
                returnValue = Test.ByteEnum.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = b2;
            end
            future = obj.iceInvokeAsync('opByte', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, s2] = opShort(obj, s1, context)
            %OPSHORT
            %
            %   Input Arguments
            %     s1
            %       Test.ShortEnum scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.ShortEnum scalar
            %     s2
            %       Test.ShortEnum scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                s1 (1, 1) Test.ShortEnum
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ShortEnum.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShort', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            s2 = Test.ShortEnum.ice_read(is_);
            returnValue = Test.ShortEnum.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opShortAsync(obj, s1, context)
            %OPSHORTASYNC
            %
            %   Input Arguments
            %     s1
            %       Test.ShortEnum scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opShort, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                s1 (1, 1) Test.ShortEnum
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ShortEnum.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.ShortEnum.ice_read(is_);
                returnValue = Test.ShortEnum.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = s2;
            end
            future = obj.iceInvokeAsync('opShort', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, i2] = opInt(obj, i1, context)
            %OPINT
            %
            %   Input Arguments
            %     i1
            %       Test.IntEnum scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.IntEnum scalar
            %     i2
            %       Test.IntEnum scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                i1 (1, 1) Test.IntEnum
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.IntEnum.ice_write(os_, i1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opInt', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            i2 = Test.IntEnum.ice_read(is_);
            returnValue = Test.IntEnum.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opIntAsync(obj, i1, context)
            %OPINTASYNC
            %
            %   Input Arguments
            %     i1
            %       Test.IntEnum scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opInt, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                i1 (1, 1) Test.IntEnum
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.IntEnum.ice_write(os_, i1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                i2 = Test.IntEnum.ice_read(is_);
                returnValue = Test.IntEnum.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = i2;
            end
            future = obj.iceInvokeAsync('opInt', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, s2] = opSimple(obj, s1, context)
            %OPSIMPLE
            %
            %   Input Arguments
            %     s1
            %       Test.SimpleEnum scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SimpleEnum scalar
            %     s2
            %       Test.SimpleEnum scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                s1 (1, 1) Test.SimpleEnum
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SimpleEnum.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSimple', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            s2 = Test.SimpleEnum.ice_read(is_);
            returnValue = Test.SimpleEnum.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opSimpleAsync(obj, s1, context)
            %OPSIMPLEASYNC
            %
            %   Input Arguments
            %     s1
            %       Test.SimpleEnum scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSimple, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                s1 (1, 1) Test.SimpleEnum
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SimpleEnum.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.SimpleEnum.ice_read(is_);
                returnValue = Test.SimpleEnum.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = s2;
            end
            future = obj.iceInvokeAsync('opSimple', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
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
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::TestIntf';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.TestIntfPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntf.
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
            %     r - A Test.TestIntfPrx scalar if the target object implements Slice interface 
            %       ::Test::TestIntf; otherwise, an empty array of Test.TestIntfPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestIntfPrx.ice_staticId(), 'Test.TestIntfPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.TestIntfPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.TestIntfPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestIntfPrx', varargin{:});
        end
    end
end
