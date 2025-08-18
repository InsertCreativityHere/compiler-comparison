classdef WstringClassPrx < Ice.ObjectPrx
    %WSTRINGCLASSPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test2.WstringClassPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   WstringClassPrx Methods:
    %     opString
    %     opStringAsync - An asynchronous opString.
    %     opStruct
    %     opStructAsync - An asynchronous opStruct.
    %     throwExcept
    %     throwExceptAsync - An asynchronous throwExcept.
    %
    %   WstringClassPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test2::WstringClass.
    %     uncheckedCast - Creates a WstringClassPrx from another proxy without any validation.
    %
    %   Generated from WstringAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [returnValue, s2] = opString(obj, s1, context)
            %OPSTRING
            %
            %   Input Arguments
            %     s1
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            %     s2
            %       character vector
            
            arguments
                obj (1, 1) Test2.WstringClassPrx
                s1 (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opString', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            s2 = is_.readString();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = opStringAsync(obj, s1, context)
            %OPSTRINGASYNC
            %
            %   Input Arguments
            %     s1
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opString, Ice.Future.
            
            arguments
                obj (1, 1) Test2.WstringClassPrx
                s1 (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = is_.readString();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = s2;
            end
            future = obj.iceInvokeAsync('opString', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, s2] = opStruct(obj, s1, context)
            %OPSTRUCT
            %
            %   Input Arguments
            %     s1
            %       Test2.WstringStruct scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test2.WstringStruct scalar
            %     s2
            %       Test2.WstringStruct scalar
            
            arguments
                obj (1, 1) Test2.WstringClassPrx
                s1 (1, 1) Test2.WstringStruct
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test2.WstringStruct.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStruct', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            s2 = Test2.WstringStruct.ice_read(is_);
            returnValue = Test2.WstringStruct.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opStructAsync(obj, s1, context)
            %OPSTRUCTASYNC
            %
            %   Input Arguments
            %     s1
            %       Test2.WstringStruct scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStruct, Ice.Future.
            
            arguments
                obj (1, 1) Test2.WstringClassPrx
                s1 (1, 1) Test2.WstringStruct
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test2.WstringStruct.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test2.WstringStruct.ice_read(is_);
                returnValue = Test2.WstringStruct.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = s2;
            end
            future = obj.iceInvokeAsync('opStruct', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function throwExcept(obj, reason, context)
            %THROWEXCEPT
            %
            %   Input Arguments
            %     reason
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test2.WstringException
            
            arguments
                obj (1, 1) Test2.WstringClassPrx
                reason (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(reason);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwExcept', 0, true, os_, false, Test2.WstringClassPrx.throwExcept_ex_, context);
        end

        function future = throwExceptAsync(obj, reason, context)
            %THROWEXCEPTASYNC
            %
            %   Input Arguments
            %     reason
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwExcept, Ice.Future.
            
            arguments
                obj (1, 1) Test2.WstringClassPrx
                reason (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(reason);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('throwExcept', 0, true, os_, 0, [], Test2.WstringClassPrx.throwExcept_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test2::WstringClass';
        end

        function r = ice_read(is)
            r = is.readProxy('Test2.WstringClassPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test2::WstringClass.
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
            %     r - A Test2.WstringClassPrx scalar if the target object implements Slice interface 
            %       ::Test2::WstringClass; otherwise, an empty array of Test2.WstringClassPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test2.WstringClassPrx.ice_staticId(), 'Test2.WstringClassPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test2.WstringClassPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test2.WstringClassPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test2.WstringClassPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        throwExcept_ex_ = { 'Test2.WstringException' }
    end
end
